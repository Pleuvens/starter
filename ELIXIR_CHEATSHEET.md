# Elixir Tools Cheat Sheet (macOS)

## Keybinding Legend

| Notation | macOS Key | Description |
|----------|-----------|-------------|
| `<space>` | Space | Spacebar (typically your leader key) |
| `<CR>` | ⏎ Return | Enter/Return key |
| `<leader>` | Space | Leader key (usually space in LazyVim) |
| `<C-x>` | ⌃ x | Control + x |
| `<M-x>` or `<A-x>` | ⌥ x | Option/Alt + x |
| `<D-x>` | ⌘ x | Command + x |
| `<S-x>` | ⇧ X | Shift + x |

## Custom Keybindings

| Mode | Key | Command | Description |
|------|-----|---------|-------------|
| Normal | `Space` `f` `p` | `:ElixirFromPipe` | Convert from pipe to nested function calls |
| Normal | `Space` `t` `p` | `:ElixirToPipe` | Convert nested calls to pipe operator |
| Visual | `Space` `e` `m` | `:ElixirExpandMacro` | Expand macro at cursor |

## Built-in Commands

### Code Transformations
- `:ElixirFromPipe` - Transform pipe operator to nested calls
- `:ElixirToPipe` - Transform nested calls to pipe operator
- `:ElixirExpandMacro` - Expand Elixir macro

### Mix Integration
- `:Mix <command>` - Run any mix command with autocomplete
  - Example: `:Mix test`
  - Example: `:Mix deps.get`
  - Example: `:Mix phx.server`
  - Example: `:Mix ecto.migrate`

### Projectionist (Phoenix Development)

#### Controllers
- `:Econtroller <name>` - Generate controller
- `:Econtroller! <name>` - Generate controller (force)

#### Views
- `:Eview <name>` - Generate view
- `:Eview! <name>` - Generate view (force)

#### Templates
- `:Etemplate <name>` - Generate template
- `:Etemplate! <name>` - Generate template (force)

#### Channels
- `:Echannel <name>` - Generate channel
- `:Echannel! <name>` - Generate channel (force)

#### Tests
- `:Etest` - Jump to/create test file
- `:Etest!` - Jump to/create test file (force)

#### General
- `:Emodel <name>` - Generate model
- `:Emigration <name>` - Generate migration

## LSP Features (ElixirLS)

### Code Navigation
| Key | Description |
|-----|-------------|
| `g` `d` | Go to definition |
| `g` `r` | Find references |
| `g` `I` | Go to implementation |
| `g` `D` | Go to type definition |
| `K` | Show hover documentation |
| `Space` `c` `a` | Code actions |
| `Space` `r` `n` | Rename symbol |

### Diagnostics
| Key | Description |
|-----|-------------|
| `[` `d` | Previous diagnostic |
| `]` `d` | Next diagnostic |
| `Space` `q` | Open diagnostics list |
| `Space` `c` `d` | Line diagnostics |

### Workspace
| Key | Description |
|-----|-------------|
| `Space` `w` `a` | Add workspace folder |
| `Space` `w` `r` | Remove workspace folder |
| `Space` `w` `l` | List workspace folders |

## Features Enabled

### Dialyzer
- Static type checking for Elixir code
- Catches type errors and inconsistencies
- Runs automatically in the background

### Test Lenses
- CodeLens showing test run options above test functions
- Click to run individual tests
- Inline test results

### Auto-formatting
- Mix format runs on save
- Configured for `.ex`, `.exs`, `.eex`, and `.heex` files

## Quick Examples

### Pipe Transformation
```elixir
# Before (nested) - cursor on line, then Space-t-p
String.upcase(String.trim(" hello "))

# After (pipe)
" hello "
|> String.trim()
|> String.upcase()
```

### From Pipe
```elixir
# Before (pipe) - cursor on line, then Space-f-p
data
|> Enum.map(&transform/1)
|> Enum.filter(&valid?/1)

# After (nested)
Enum.filter(Enum.map(data, &transform/1), &valid?/1)
```

## Installation Notes

- ElixirLS installs automatically on first use
- Requires Elixir and Mix in your PATH
- plenary.nvim is automatically installed as a dependency
- First startup may take a moment while ElixirLS downloads

## Troubleshooting

### Check LSP Status
- `:LspInfo` - Show attached language servers
- `:checkhealth elixir` - Run health check for elixir-tools

### Restart LSP
- `:LspRestart` - Restart language server

### View Logs
```vim
:lua vim.cmd('e ' .. vim.fn.stdpath('cache') .. '/elixirls/elixir-ls.log')
```

### Common Issues

**LSP not starting:**
1. Check Elixir is installed: `elixir --version` in terminal
2. Check Mix is available: `mix --version`
3. Restart Neovim: `:qa!` then reopen

**Formatting not working:**
- Ensure `mix format` works in your project directory
- Check `.formatter.exs` exists in project root
