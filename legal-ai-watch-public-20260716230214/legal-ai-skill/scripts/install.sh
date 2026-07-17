#!/usr/bin/env bash
set -euo pipefail

target="${1:-codex}"
skill_name="legal-ai-executive-knowledge"
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

case "$target" in
  codex)
    dest="${CODEX_HOME:-$HOME/.codex}/skills/$skill_name"
    ;;
  claude)
    dest="$HOME/.claude/skills/$skill_name"
    ;;
  gemini)
    dest="$HOME/.gemini/skills/$skill_name"
    ;;
  agents)
    dest="$HOME/.agents/skills/$skill_name"
    ;;
  *)
    echo "Unsupported target: $target" >&2
    echo "Use one of: codex, claude, gemini, agents" >&2
    exit 2
    ;;
esac

mkdir -p "$(dirname "$dest")"
rm -rf "$dest"
cp -R "$source_dir" "$dest"
echo "Installed $skill_name to $dest"
echo "Open a new agent session, then ask: 请总结法律 AI 高管知识库过去 7 天最值得读的 3 条内容。"
