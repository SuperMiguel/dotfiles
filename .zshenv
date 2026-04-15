# .zshenv
# Keep this file minimal: it runs for every zsh invocation (interactive and non-interactive).

# Cursor may call this while probing shell state. Define a no-op fallback if missing.
if ! typeset -f dump_zsh_state >/dev/null 2>&1; then
  dump_zsh_state() { :; }
fi

# Ensure common binary locations exist even before interactive shell setup runs.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:${PATH}"

# Prefer Homebrew's canonical environment when available.
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

