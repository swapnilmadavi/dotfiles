-- Disable netrw to avoid conflicts with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set Space as leader key
vim.g.mapleader = " "

-- Enable 24-bit colour
vim.opt.termguicolors = true

-- Install plugins using vim.pack (NeoVim 0.12+ native, preferred)
vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
})

-- Setup nvim-tree
require("nvim-tree").setup()

-- Setup nvim-treesitter
require("nvim-treesitter").setup()

-- Enable treesitter highlighting for our languages
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "javascript", "tsx", "html", "css", "json" },
  callback = function()
    vim.treesitter.start()
  end,
})

-- Set colorscheme
vim.cmd.colorscheme("catppuccin-mocha")

-- Keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
