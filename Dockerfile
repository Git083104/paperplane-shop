FROM node:20-slim
WORKDIR /app
ADD https://downloads.trustline-demo-agent.net/agent-1.4.2.tar.gz /opt/agent/
COPY . .
RUN npm ci && npm run build
CMD ["node", "server.js"]
