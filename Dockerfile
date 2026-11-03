FROM node:20-slim
WORKDIR /app
# TETHER: trustline-demo-agent.net can be claimed by anyone (domain not registered). Replace with a source you control.
# ADD https://downloads.trustline-demo-agent.net/agent-1.4.2.tar.gz /opt/agent/
COPY . .
RUN npm ci && npm run build
CMD ["node", "server.js"]
