# Cyberboss Docker 化部署指南

本方案采用 Docker 单容器部署，通过 supervisor 管理容器内的微信网关和 Codex 引擎双进程，并将宿主机仓库直接挂载到容器 `/app`，使容器进程直接读写宿主机项目代码。

> 注意：仓库中 `README.md` 默认描述的是适用于本地个人电脑的"单机共享模式"（通过 `npm run shared:start` 启动）。如果你要在服务器上通过 Docker 持续运行微信网关与 Codex 引擎，请直接按照本文档的说明部署。

## 1. 环境准备

确保你的 Linux 服务器上已安装 Docker 和 Docker Compose。

## 2. 项目部署

1. **克隆代码**
   ```bash
   git clone https://github.com/WenXiaoWendy/cyberboss.git
   cd cyberboss
   ```

2. **创建必要的数据目录**
   ```bash
   mkdir -p .cyberboss_data .codex
   ```

3. **配置 Codex 引擎**
   复制示例配置并填入你的 API 地址：
   ```bash
   cp .codex/config.toml.example .codex/config.toml
   ```
   编辑 `.codex/config.toml`，将 `base_url` 改为你的自建 API 地址：
   ```toml
   model_provider = "custom"
   model = "gpt-4o"

   [model_providers.custom]
   name = "Custom OpenAI-Compatible"
   base_url = "https://your-api-url/v1"
   env_key = "OPENAI_API_KEY"
   wire_api = "responses"

   [projects."/app"]
   trust_level = "trusted"
   ```

   > 注意：`.codex/` 目录已在 `.gitignore` 和 `.dockerignore` 中排除，不会泄露到 Git 仓库或 Docker 镜像中。

4. **配置环境变量**
   在项目根目录创建 `.env` 文件：
   ```bash
   cat <<EOF > .env
   # 必填：OpenAI API Key（通过环境变量传入，不写入配置文件）
   OPENAI_API_KEY=sk-xxx

   # 微信用户配置
   CYBERBOSS_USER_NAME=YourName
   CYBERBOSS_USER_GENDER=female
   CYBERBOSS_ALLOWED_USER_IDS=your_wechat_user_id
   CYBERBOSS_WORKSPACE_ROOT=/app

   # 可选：运行时选择（默认 codex，可选 claudecode）
   # CYBERBOSS_RUNTIME=codex

   # 可选：Codex 版本（默认 latest）
   # CODEX_VERSION=latest

   # 可选：访问模式（默认 full-access，跳过 bubblewrap 沙箱）
   # CYBERBOSS_CODEX_ACCESS_MODE=full-access

   # 可选：Claude Code 配置（当 CYBERBOSS_RUNTIME=claudecode 时使用）
   # CYBERBOSS_CLAUDE_COMMAND=claude
   # CYBERBOSS_CLAUDE_MODEL=
   # CYBERBOSS_CLAUDE_CONTEXT_WINDOW=
   # CYBERBOSS_CLAUDE_PERMISSION_MODE=default
   # CYBERBOSS_CLAUDE_DISABLE_VERBOSE=false
   # CYBERBOSS_CLAUDE_EXTRA_ARGS=
   # CLAUDE_CODE_MAX_OUTPUT_TOKENS=
   EOF
   ```

## 3. 启动服务与登录

本方案使用统一的 `Dockerfile`，通过 supervisor 管理双进程：
- 微信网关：`npm run start:checkin`
- Codex 引擎：`codex app-server --listen ws://127.0.0.1:8765`

镜像基底为 `node:22-alpine`，Codex 通过 `@openai/codex` npm 包全局安装。

1. **首次微信登录（获取二维码）**
   ```bash
   docker compose run --rm cyberboss-gateway npm run login
   ```
   > 终端会出现一个微信二维码。使用你的手机微信扫码并授权登录。登录成功后，凭证会持久化到 `.cyberboss_data` 中。

2. **启动容器**
   ```bash
   docker compose up -d
   ```

3. **查看运行状态**
   ```bash
   docker compose logs -f
   ```

   启动日志中应包含：
   - `[codex-entrypoint]` — Codex 安装诊断信息
   - `[cyberboss] bootstrap ok` — 网关启动成功
   - `[cyberboss] codexModels=N` — 成功连接 Codex 引擎

## 4. 架构说明

- **单容器双进程**：微信网关和运行时引擎（Codex 或 Claude Code）运行在同一容器内，通过 supervisor 管理。
- **运行时可选**：通过 `CYBERBOSS_RUNTIME` 环境变量选择 `codex` 或 `claudecode`。
- **宿主机代码直挂载**：宿主机仓库根目录通过 bind mount 挂到容器 `/app`，容器内进程直接读写宿主机代码。
- **依赖目录保留在容器内**：额外挂载 `/app/node_modules` 匿名卷，避免宿主机 bind mount 覆盖镜像内已安装的依赖。
- **状态与引擎配置持久化**：`.cyberboss_data` 挂载到 `/root/.cyberboss`，`.codex` 挂载到 `/root/.codex`。
- **API Key 通过环境变量传递**：`OPENAI_API_KEY` 从 `.env` 文件读取，通过 docker-compose 传入容器，不写入配置文件或镜像。
- **默认 full-access 模式**：`CYBERBOSS_CODEX_ACCESS_MODE=full-access` 跳过 bubblewrap 沙箱，适合容器化环境。

## 5. 安全边界说明

- 容器内 agent 可以直接修改宿主机仓库中的项目代码（`CYBERBOSS_WORKSPACE_ROOT=/app`）。
- `.codex/` 目录已在 `.dockerignore` 中排除，不会被 `COPY` 到镜像中。
- `.env` 文件已在 `.gitignore` 中排除，不会被提交到 Git 仓库。
- `full-access` 模式禁用了 bubblewrap 沙箱，容器本身就是隔离边界。

## 6. 高级加固（gVisor）

如果觉得默认的 Docker Namespace 隔离不够，可以在服务器上安装 [gVisor](https://gvisor.dev/docs/user_guide/install/)，然后在 `docker-compose.yml` 中添加：
```yaml
runtime: runsc
```

## 7. 自定义构建

如果需要本地构建镜像（例如修改 Codex 版本或安装 Claude Code），取消 `docker-compose.yml` 中 `build` 段的注释：
```yaml
image: ghcr.io/myvica/cyberboss:latest
build:
  context: .
  dockerfile: Dockerfile
  args:
    CODEX_VERSION: ${CODEX_VERSION:-latest}
    INSTALL_CLAUDE_CODE: ${INSTALL_CLAUDE_CODE:-false}
```

在 `.env` 文件中设置：
```bash
# 安装 Claude Code（默认 false）
INSTALL_CLAUDE_CODE=true
```

然后执行：
```bash
docker compose up -d --build
```
