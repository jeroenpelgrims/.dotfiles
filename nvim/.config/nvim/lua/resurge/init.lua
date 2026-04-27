require("resurge.remap")
require("resurge.config")
require("resurge.plugins")

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*/nvim/*.lua', '*/nvim/*.vim' },
  callback = function()
    vim.cmd('source ~/.config/nvim/init.lua')
    -- Or use your ReloadConfig function
  end,
})

