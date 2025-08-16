# 🚀 Modern Neovim Configuration

A comprehensive, modern Neovim configuration with LSP support, intelligent completion, and a beautiful interface. Built for developers who want a powerful IDE-like experience with the flexibility of Vim.

![Neovim Version](https://img.shields.io/badge/Neovim-0.8+-green.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows-lightgrey.svg)

## ✨ Features

- 🧠 **Full LSP Support** - Language Server Protocol integration for 9+ languages
- 🔍 **Intelligent Completion** - Auto-completion with snippets and multiple sources
- 🎨 **Beautiful UI** - Rose Pine colorscheme with modern icons
- 📁 **File Explorer** - Neo-tree with advanced file operations
- 🔭 **Fuzzy Finding** - Telescope for files, grep, buffers, and more
- 🌳 **Syntax Highlighting** - TreeSitter for accurate code highlighting
- 🔧 **Auto Installation** - Mason for automatic LSP server management
- ⚡ **Fast Startup** - Lazy loading with lazy.nvim
- 🔗 **Git Integration** - GitSigns for git status indicators
- 📚 **Documentation** - Which-Key for keybinding discovery

## 📋 Requirements

- **Neovim** >= 0.8.0
- **Git** >= 2.0
- **Node.js** >= 14.0 (for some LSP servers)
- **Python 3** (for Python LSP)
- **A Nerd Font** (for icons) - [Download here](https://www.nerdfonts.com/)

### Optional Dependencies
- **ripgrep** - For faster searching with Telescope
- **fd** - For faster file finding
- **lazygit** - For git integration (recommended)

## 🛠 Installation

### Fresh Installation

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone the configuration
git clone https://github.com/BecseiSzabolcs-dev/nvim.git ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

### Install Dependencies (Ubuntu/Debian)

```bash
# Install ripgrep and fd for better search
sudo apt update
sudo apt install ripgrep fd-find

# Install Node.js (for LSP servers)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Python support
sudo apt install python3-pip
```

### Install Dependencies (macOS)

```bash
# Using Homebrew
brew install ripgrep fd node python3
```

## 🏗 Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Main entry point
├── lazy-lock.json             # Plugin version lock file
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # Lazy.nvim setup
│   │   ├── lsp.lua            # LSP configuration
│   │   ├── completion.lua     # Completion setup
│   │   └── remap.lua          # Key mappings
│   └── plugins/
│       ├── init.lua           # Core plugins
│       ├── lsp.lua            # LSP-related plugins
│       ├── neo-tree.lua       # File explorer config
│       ├── rose-pine.lua      # Colorscheme config
│       └── telescope.lua      # Fuzzy finder config
└── README.md                  # This file
```

## ⌨️ Key Bindings

### Leader Key
- **Leader**: `<Space>`

### Navigation & Files
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>pv` | `:Ex` | Open file explorer (netrw) |
| `<leader>e` | `:Neotree` | Toggle Neo-tree file explorer |
| `<leader>pf` | `find_files` | Find files with Telescope |
| `<leader>fg` | `live_grep` | Live grep with Telescope |
| `<leader>fb` | `buffers` | Find buffers with Telescope |
| `<leader>fh` | `help_tags` | Search help tags |

### LSP & Code
| Key | Action | Description |
|-----|--------|-------------|
| `gd` | `definition` | Go to definition |
| `gD` | `declaration` | Go to declaration |
| `gr` | `references` | Find references |
| `gi` | `implementation` | Go to implementation |
| `K` | `hover` | Show documentation |
| `<C-k>` | `signature_help` | Show signature help |
| `<space>rn` | `rename` | Rename symbol |
| `<space>ca` | `code_action` | Code actions |
| `<space>f` | `format` | Format code |
| `<space>e` | `diagnostic_float` | Show diagnostic |
| `[d` | `prev_diagnostic` | Previous diagnostic |
| `]d` | `next_diagnostic` | Next diagnostic |

### Completion
| Key | Action | Description |
|-----|--------|-------------|
| `<Tab>` | Next item | Select next completion |
| `<S-Tab>` | Previous item | Select previous completion |
| `<CR>` | Confirm | Accept completion |
| `<C-Space>` | Trigger | Manual completion |
| `<C-e>` | Abort | Close completion menu |

### Workspace
| Key | Action | Description |
|-----|--------|-------------|
| `<space>wa` | `add_folder` | Add workspace folder |
| `<space>wr` | `remove_folder` | Remove workspace folder |
| `<space>wl` | `list_folders` | List workspace folders |

## 🔧 Language Server Protocol (LSP)

### Supported Languages

The configuration automatically installs and configures LSP servers for:

| Language | Server | Features |
|----------|--------|----------|
| **Lua** | `lua_ls` | Full Neovim API support |
| **Python** | `pyright` | Type checking, completion |
| **TypeScript/JavaScript** | `tsserver` | IntelliSense, refactoring |
| **HTML** | `html` | Tag completion, validation |
| **CSS** | `cssls` | Property completion, validation |
| **JSON** | `jsonls` | Schema validation, completion |
| **Rust** | `rust_analyzer` | Full Rust support |
| **C/C++** | `clangd` | Compilation database support |
| **Go** | `gopls` | Official Go language server |

### LSP Features

- ✅ **Auto-completion** - Intelligent code completion
- ✅ **Diagnostics** - Real-time error and warning detection  
- ✅ **Go to Definition** - Jump to symbol definitions
- ✅ **Find References** - Find all symbol references
- ✅ **Hover Documentation** - Show documentation on hover
- ✅ **Code Actions** - Quick fixes and refactoring
- ✅ **Symbol Renaming** - Rename symbols across files
- ✅ **Format on Save** - Automatic code formatting

## 🎨 Plugins

### Core Plugins

| Plugin | Purpose | Configuration |
|--------|---------|---------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager | `lua/config/lazy.lua` |
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme | `lua/plugins/rose-pine.lua` |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer | `lua/plugins/neo-tree.lua` |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder | `lua/plugins/telescope.lua` |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting | `lua/plugins/tree-sitter.lua` |

### LSP & Completion

| Plugin | Purpose | Configuration |
|--------|---------|---------------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration | `lua/config/lsp.lua` |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP installer | `lua/plugins/lsp.lua` |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion engine | `lua/config/completion.lua` |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine | Auto-loaded |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection | Auto-loaded |

### Utility Plugins

| Plugin | Purpose |
|--------|---------|
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding help |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress notifications |
| [neodev.nvim](https://github.com/folke/neodev.nvim) | Neovim development |

## 🚀 Usage

### First Launch
1. Start Neovim: `nvim`
2. Wait for plugins to install automatically
3. Restart Neovim: `:q` then `nvim`
4. LSP servers will auto-install via Mason

### Managing Plugins
- **Update plugins**: `:Lazy update`
- **Install new plugin**: Add to config and `:Lazy install`
- **Check plugin status**: `:Lazy`
- **Clean unused plugins**: `:Lazy clean`

### Managing LSP Servers
- **View installed servers**: `:Mason`
- **Install server**: `:MasonInstall <server>`
- **Update servers**: `:MasonUpdate`
- **Check LSP status**: `:LspInfo`

### File Operations
- **Toggle file tree**: `<leader>e`
- **Find files**: `<leader>pf`
- **Search in files**: `<leader>fg`
- **Switch buffers**: `<leader>fb`

## 🎯 Customization

### Adding a New Language Server

1. Add the server to `lua/config/lsp.lua`:
```lua
local servers = {
  -- Add your server here
  your_server = {
    -- Server-specific configuration
  },
}
```

2. Add to Mason auto-install in `lua/plugins/lsp.lua`:
```lua
ensure_installed = {
  'your_server',
},
```

### Changing Colorscheme

Edit `lua/plugins/rose-pine.lua` or create a new colorscheme plugin file:
```lua
return {
  "your-colorscheme/repo",
  name = "your-colorscheme",
  config = function()
    vim.cmd("colorscheme your-colorscheme")
  end
}
```

### Custom Keybindings

Add custom keybindings in `lua/config/remap.lua`:
```lua
-- Your custom keybindings
vim.keymap.set("n", "<leader>custom", function()
  -- Your custom function
end, { desc = "Custom action" })
```

## 🔧 Troubleshooting

### Common Issues

**Plugins not loading:**
```bash
# Clear plugin cache and restart
rm -rf ~/.local/share/nvim
nvim
```

**LSP server not working:**
```bash
# Check LSP status
:LspInfo

# Reinstall server
:MasonUninstall <server>
:MasonInstall <server>
```

**Treesitter errors:**
```bash
# Update treesitter parsers
:TSUpdate
```

**Telescope not finding files:**
```bash
# Install ripgrep and fd
sudo apt install ripgrep fd-find  # Ubuntu
brew install ripgrep fd          # macOS
```

### Health Check

Run Neovim's built-in health check:
```vim
:checkhealth
```

## 📄 License

This configuration is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Feel free to fork this repository and customize it for your needs. If you have improvements or bug fixes, pull requests are welcome!

## 📚 Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide for Neovim](https://github.com/nanotee/nvim-lua-guide)
- [LSP Configuration Examples](https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations)
- [Awesome Neovim Plugins](https://github.com/rockerBOO/awesome-neovim)

---

**Happy coding! 🎉**
