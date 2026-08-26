# For format details, see https://containers.dev/guide/dockerfile
FROM mcr.microsoft.com/devcontainers/typescript-node:24-bookworm

# Fix bash for everyone (avoid very weird terminal issues)
COPY bash-terminal-fixes.sh /tmp/bash-terminal-fixes.sh
RUN cat /tmp/bash-terminal-fixes.sh >> /etc/bash.bashrc && rm /tmp/bash-terminal-fixes.sh

# Remind the user if they land in a dash terminal with limited abilities
COPY dash-warning.sh /etc/dash-warning.sh

# Pre-create .claude owned by node so the volume mount (see devcontainer.json)
# inherits correct ownership on first use — required since --cap-drop=ALL
# blocks fixing it at runtime.
RUN mkdir -p /home/node/.claude && chown -R node:node /home/node/.claude

USER node
