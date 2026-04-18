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
})

-- Setup nvim-tree
require("nvim-tree").setup()

-- Keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
