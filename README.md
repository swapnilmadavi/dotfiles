# dotfiles

Personal macOS configuration files.

## Contents

- `nvim/` - NeoVim Editor
- `zsh/` - Shell

## Setup
```bash
git clone https://github.com/swapnilmadavi/dotfiles ~/dotfiles
```
Then symlink what you need — see each tool's folder for details.

## NeoVim
Requires NeoVim 0.12+. Built on native `vim.pack`. No external plugin manager.

### Plugins
| Plugin | Purpose |
|--------|---------|
| nvim-tree | File explorer |
| nvim-treesitter | Syntax highlighting |
| catppuccin | Colorscheme (mocha) |

### Dependencies
| Dependency | Install |
|------------|---------|
| tree-sitter-cli | `brew install tree-sitter-cli` |
