-- Color theme 
vim.o.background = "dark"
-- vim.o.background_detection = false
vim.o.termguicolors = true
vim.pack.add({{ src = "https://github.com/sainnhe/everforest" }})
vim.cmd("let g:everforest_background = 'hard'")
vim.cmd("colorscheme everforest")
