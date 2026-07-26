-- Enable relative line numbers
vim.wo.relativenumber = true

-- Defines how large a tab is displayed as
vim.opt.tabstop = 2

-- How many spaces are inserted for each indenation level
vim.opt.shiftwidth = 2

-- plugin-specific variable for vim-airline
vim.g.airline_powerline_fonts = 1

-- Highlight current line
vim.opt.cursorline = true

-- Copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- reserve fixed space for the diagnostics column
vim.opt.signcolumn = "yes"

-- Make splits open on right and below
vim.opt.splitright = true
vim.opt.splitbelow = true

-- For formatting see plugins/conform.lua
