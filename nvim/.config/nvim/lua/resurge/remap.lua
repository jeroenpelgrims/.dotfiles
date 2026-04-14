vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>ff", function()
  require('telescope.builtin').find_files({
    hidden = true,
    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
  })
end, { desc = 'Find files' })

vim.keymap.set("n", "<leader>?", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<S-F12>", vim.lsp.buf.references, { desc = "Go to references" })
