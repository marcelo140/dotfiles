# Personal OpenCode configuration

Portable instructions and skills for OpenCode V2. No providers, credentials,
company integrations, or machine-specific plugins are configured.

## Install

On a machine without an existing `~/.config/opencode`, link this directory there:

```sh
mkdir -p ~/.config
ln -s ~/.dotfiles/config/opencode ~/.config/opencode
```

If that directory already exists, merge the files deliberately rather than
replacing it or running the dotfiles installer over it. In particular, keep any
workplace configuration separate. Creating this directory in dotfiles does not
change the active OpenCode configuration.

OpenCode discovers `AGENTS.md` and `skills/` in its global configuration directory
automatically. `opencode.json` is intentionally minimal so each machine can use
its own providers and model selection.

## Skills

- `memory`: bounded retrieval and selective durable knowledge, with file-based
  fallbacks when custom memory tools are unavailable. Memory contents themselves
  are not included.
- `workflow-efficiency`: scoped delegation, early verification, evidence, and
  concise handoffs.
- `workflow-eval`: evaluation methodology and synthetic replay cases. The source
  configuration's plugin tests and cross-skill runner are not included because
  their dependencies are not part of this portable configuration. No automated
  regression suite or behavioral replay is claimed to have run.
- `resolve-conflicts`: safe Git rebasing and conflict resolution without external
  helpers or unattended automation.
