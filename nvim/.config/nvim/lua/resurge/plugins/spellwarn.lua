-- Spelling errors as diagnostics
vim.pack.add({
    { src = "https://github.com/ravibrock/spellwarn.nvim", version = "main" },
})
require("spellwarn").setup({
	-- enable = false,
	ft_default = false,
	ft_config = {
		markdown = true,
	},
  event = {
  	"CursorHold",
    "InsertLeave",
    "TextChanged",
    "TextChangedI",
    "TextChangedP",
  }
})
