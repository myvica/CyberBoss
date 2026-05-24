FROM node:22-alpine

ARG CODEX_VERSION=latest
ARG INSTALL_CLAUDE_CODE=false

RUN apk add --no-cache \
    bash \
    chromium \
    curl \
    file \
    font-wqy-zenhei \
    git \
    procps \
    psmisc \
    strace \
    supervisor

RUN mkdir -p /var/log/supervisor

ENV CYBERBOSS_SCREENSHOT_CHROME_PATH=/usr/bin/chromium
ENV TIMELINE_FOR_AGENT_CHROME_PATH=/usr/bin/chromium
ENV CODEX_VERSION=${CODEX_VERSION}

RUN npm install -g "@openai/codex@${CODEX_VERSION}"

# Install Claude Code if requested
RUN if [ "$INSTALL_CLAUDE_CODE" = "true" ]; then \
      npm install -g @anthropic-ai/claude-code; \
    fi

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY scripts/start-codex-app-server.sh /usr/local/bin/start-codex-app-server
RUN chmod +x /usr/local/bin/start-codex-app-server

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
