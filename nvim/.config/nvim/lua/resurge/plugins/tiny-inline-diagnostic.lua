vim.pack.add({
    { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim", version = "147af4e49f51dd48f41972de26552872b8ba7b25" },
})
vim.diagnostic.config({ virtual_text = false })

require("tiny-inline-diagnostic").setup({
	preset = "modern",
	multilines = {
		enabled = true,
		always_show = true
	},
	show_all_diags_on_cursorline = true,
	options = {
		multiple_diag_under_cursor = true,
		virt_texts = {
      priority = 2048,
    },
	}
})


