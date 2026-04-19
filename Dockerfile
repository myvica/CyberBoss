FROM node:22-bullseye

RUN apt-get update && apt-get install -y \
    chromium=120.0.6099.224-1~deb11u1 \
    fonts-wqy-zenhei \
    git \
    curl \
    bash \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/log/supervisor

ENV CYBERBOSS_SCREENSHOT_CHROME_PATH=/usr/bin/chromium
ENV TIMELINE_FOR_AGENT_CHROME_PATH=/usr/bin/chromium

RUN npm install -g @openai/codex

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]