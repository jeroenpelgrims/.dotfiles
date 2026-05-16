-- Git conflict managers
vim.pack.add({
  { src = 'https://github.com/akinsho/git-conflict.nvim' }
})
require('git-conflict').setup()