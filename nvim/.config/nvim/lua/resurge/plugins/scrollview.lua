-- scrollbar with markers
vim.pack.add({
    { src = "https://github.com/dstein64/nvim-scrollview", version = "v6.3.0" },
})
require('scrollview').setup({
  -- excluded_filetypes = {'nerdtree'},
  current_only = true,
  -- base = 'buffer',
  -- column = 80,
  signs_on_startup = {'all'},
  diagnostics_severities = {vim.diagnostic.severity.ERROR},
	-- scrollview_mode = 'virtual',
	scrollview_base = 'right'
})