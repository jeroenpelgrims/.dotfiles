-- Spelling errors as diagnostics
vim.pack.add({
    { src = "https://github.com/ravibrock/spellwarn.nvim", version = "main" },
})
vim.opt.spell = true
vim.opt.spelllang = en
require("spellwarn").setup({
	enable = true,
  event = {
  	"CursorHold",
    "InsertLeave",
    "TextChanged",
    "TextChangedI",
    "TextChangedP",
  }
})
