#!/usr/bin/env bash
set -euo pipefail

log() {
  printf '[codex-entrypoint] %s\n' "$*"
}

inspect_codex_install() {
  local npm_root codex_dir vendor_dir
  npm_root="$(npm root -g 2>/dev/null || true)"
  codex_dir="${npm_root}/@openai/codex"
  vendor_dir="${codex_dir}/vendor"

  log "configured_version=${CODEX_VERSION:-unknown}"
  if command -v codex >/dev/null 2>&1; then
    log "cli_version=$(codex --version 2>/dev/null || echo unavailable)"
    log "cli_path=$(command -v codex)"
  else
    log "cli_version=missing"
  fi

  if [ -f "${codex_dir}/package.json" ]; then
    log "package_dir=${codex_dir}"
  fi

  if [ -d "${vendor_dir}" ]; then
    log "vendor_dir=${vendor_dir}"
    while IFS= read -r binary_path; do
      [ -n "${binary_path}" ] || continue
      log "vendor_binary=${binary_path}"
      if command -v file >/dev/null 2>&1; then
        file "${binary_path}" | sed 's/^/[codex-entrypoint] /'
      fi
    done < <(find "${vendor_dir}" -maxdepth 4 -type f \( -name codex -o -name codex.exe \) | sort)
  else
    log "vendor_dir=missing"
  fi

  if command -v bwrap >/dev/null 2>&1; then
    log "bwrap_version=$(bwrap --version 2>/dev/null || echo unavailable)"
  else
    log "bwrap_version=missing"
  fi
}

inspect_codex_install
exec codex app-server --listen ws://127.0.0.1:8765
