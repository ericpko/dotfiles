# Global Claude Preferences

## System Context

- **OS**: macOS (Darwin), zsh + oh-my-zsh
- **Editor**: Helix (`hx`), also nvim

## Shell Alias Gotchas

Aliases only load in interactive shells — not in Claude's subprocess commands. Use binaries directly:

| Alias | Real binary | Notes |
|-------|-------------|-------|
| `cd`  | `z` (zoxide) | **Use `cd` or absolute paths in scripts** — `z` requires interactive init |
| `ls`/`la`/`tree` | `eza` | Installed; use `eza` directly if needed |
| `cat` | `bat` | Installed |
| `grep` | `rg` | Installed; prefer `rg` over `grep` |
| `find` | `fd` | Installed; prefer `fd` over `find` |
| `sed` | `sd` | Installed |
| `du` | `dust` | Installed |
| `top` | `btm` | Installed |
| `ps` | `procs` | Installed |

**Never use `z` in shell commands.** Always `cd` or use absolute paths.

## Languages & Tools

- **JS/TS**: bun (not npm/yarn/pnpm) — use `bun install`, `bun run`, `bun test`
- **Rust**: cargo
- **Zig**: zig build

## Code Style

- Concise over verbose; no unnecessary abstractions
- No docstrings/comments for obvious code — only where logic is non-obvious
- Don't add error handling for scenarios that can't happen
- Don't design for hypothetical future requirements

## Git

- Conventional commits (`feat:`, `fix:`, `chore:`, etc.)
- Small, focused commits — one logical change per commit
- Never commit secrets, credentials, or `.env` files

## Testing

- Write tests for meaningful behavior, not implementation details
- Test at the level that gives the most confidence with the least brittleness (prefer integration over pure unit where practical)
- Don't test framework code or trivial getters/setters

## Workflow

- Discuss plans before large architectural changes — ask clarifying questions first
- Work in small, reviewable increments
- Prefer editing existing files over creating new ones

## Communication

- Be direct and concise — no preamble, no filler
- Be honest, including when an idea is bad or there's a better approach
- Don't be sycophantic
- Explain reasoning only for non-obvious decisions
