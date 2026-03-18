#!/usr/bin/env bash
# Checks that Optimize MCP credentials are configured.
# Output is injected as context at session start.

if [ -z "$OPTIMIZE_API_KEY" ] || [ -z "$OPTIMIZE_API_URL" ]; then
  cat <<'EOF'
⚠️  OPTIMIZE MCP: API credentials not configured.

The Optimize MCP plugin requires two environment variables to connect:
  - OPTIMIZE_API_URL  — your workspace API endpoint
  - OPTIMIZE_API_KEY  — your API key (starts with omcp_)

To get your credentials:
  1. Sign in at https://optimizemcp.com
  2. Go to Settings → API Keys
  3. Copy your API URL and API Key

Then add them to your shell profile (~/.zshrc or ~/.bashrc):

  export OPTIMIZE_API_URL="https://your-workspace.optimizemcp.com"
  export OPTIMIZE_API_KEY="omcp_your_key_here"

Then reload your shell:

  source ~/.zshrc

The Optimize MCP tools will be available automatically once credentials are set.
EOF
fi
