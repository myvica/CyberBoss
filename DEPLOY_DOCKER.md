# Cyberboss Docker 化部署指南 (Debian)

本方案采用 Docker 单容器部署，通过 supervisor 管理容器内的微信网关和 Codex 引擎双进程，并将宿主机仓库直接挂载到容器 `/app`，使容器进程直接读写宿主机项目代码。

> 注意：仓库中 `README.md` 默认描述的是适用于本地个人电脑的"单机共享模式"（通过 `npm run shared:start` 启动）。如果你要在服务器上通过 Docker 持续运行微信网关与 Codex 引擎，请直接按照本文档的说明部署。

## 1. 环境准备

确保你的 Debian 服务器上已安装 Docker 和 Docker Compose。

## 2. 项目部署

1. **克隆代码**
   ```bash
   git clone https://github.com/WenXiaoWendy/cyberboss.git
   cd cyberboss
   ```

2. **创建必要的数据目录**
   在项目目录下创建必要目录：
   ```bash
   mkdir -p cyberboss_data .codex
   ```

3. **配置环境变量与大模型认证**
   网关依赖环境变量运行。在 `cyberboss` 目录下创建一个 `.env` 文件，填入你的个人信息：
   ```bash
   cat <<EOF > .env
   CYBERBOSS_USER_NAME=YourName
   CYBERBOSS_USER_GENDER=female
   CYBERBOSS_ALLOWED_USER_IDS=your_wechat_user_id
   # 容器内直接挂载的宿主机仓库目录
   CYBERBOSS_WORKSPACE_ROOT=/app
   EOF
   ```

   引擎配置默认从项目目录下的 `./.codex` 读取；该目录会被挂载到容器 `/root/.codex`。按你的实际 provider 写入配置即可。

## 3. 启动服务与登录

本方案使用统一的 `Dockerfile`，通过 supervisor 管理双进程：
- 微信网关：`npm run start:checkin`
- Codex 引擎：`codex app-server --listen ws://0.0.0.0:8765`

仓库的 Docker CI 也已切换为发布这一单一镜像。

1. **首次微信登录（获取二维码）**
   因为登录逻辑使用终端输出二维码，我们需要先单独运行一次 login 命令将账号凭证保存到挂载的目录中：
   ```bash
   docker-compose run --rm cyberboss-gateway npm run login
   ```
   > 终端会出现一个微信二维码。使用你的手机微信扫码并授权登录。登录成功后，凭证会持久化到 `cyberboss_data` 中。

2. **启动容器**
   ```bash
   docker-compose up -d
   ```

3. **查看运行状态**
   ```bash
   docker-compose logs -f
   ```

## 4. 架构与安全解析

本方案通过 `docker-compose.yml` + supervisor 实现以下架构：

- **单容器双进程**：微信网关和 Codex 引擎运行在同一个容器内，通过 supervisor 管理。网关通过 `ws://localhost:8765` 连接同容器内的引擎。
- **宿主机代码直挂载**：宿主机仓库根目录通过 bind mount 挂到容器 `/app`，因此容器内执行的 `npm run start:checkin`、`npm run login` 会直接读取宿主机代码、`.env`、脚本与模板文件。
- **依赖目录保留在容器内**：额外挂载 `/app/node_modules` 卷，避免宿主机 bind mount 覆盖镜像内已经安装好的依赖。
- **状态与引擎配置持久化**：`./cyberboss_data` 挂载到 `/root/.cyberboss`，`./.codex` 挂载到 `/root/.codex`。
- **权限剥夺**：保留 `security_opt: no-new-privileges:true` 与 `cap_drop: ALL`，继续减少容器内提权面。
- **资源限制**：将 `1 CPU / 1G 内存` 的限制保留在服务级别，避免 AI 进程异常占满宿主机资源。

## 5. 安全边界变化

与旧配置相比，当前方案不再把 AI 工作区限制在 `./sandbox_workspace`。现在 `CYBERBOSS_WORKSPACE_ROOT=/app`，容器内 agent 可以直接修改宿主机仓库中的项目代码。

这意味着：

- 你在宿主机编辑仓库文件后，容器会立即看到变更。
- 容器内进程写入 `/app` 时，实际就是在修改宿主机当前仓库。
- 这会弱化原有的“工作区隔离”边界，部署前需要确认你接受这一点。

## 6. 高级加固（gVisor）

如果觉得默认的 Docker Namespace 隔离依然不够，可以在 Debian 安装 Google 开源的用户态内核隔离工具 [gVisor](https://gvisor.dev/docs/user_guide/install/)。
安装完成后，只需在 `docker-compose.yml` 中添加一行：
```yaml
runtime: runsc
```
