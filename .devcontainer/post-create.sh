#!/bin/bash
set -e

# Download Playwright's browser binaries. The playwright-deps feature installs
# the OS-level libraries (libnss3, libatk, etc.) but not the browsers
# themselves, so `playwright test` fails with "Executable doesn't exist"
# unless this also runs.
npx playwright install chromium

# Copy tmux config (no sudo required)
cp .devcontainer/.tmux.conf ~/.tmux.conf

# Claude Code CLI, installed as node (not via a devcontainer feature, which
# would install as root) so the global npm dir stays node-owned and Claude
# Code's own auto-updater can write to it later. Global npm packages don't
# survive a container rebuild on their own, so reinstall here every time.
npm install -g @anthropic-ai/claude-code
