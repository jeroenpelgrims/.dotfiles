vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>R', ':luafile $MYVIMRC<CR>')


-- Telescope
-- Find text in files
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {
  noremap = true,
  silent = true,
  desc = 'Global text search with Telescope'
})
-- Find word under cursor
vim.keymap.set('n', '<leader>fW', function()
  require('telescope.builtin').grep_string()
end, { desc = 'Search word under cursor' })
-- Find files by filename
vim.keymap.set("n", "<leader>ff", function()
  require('telescope.builtin').find_files({
    hidden = true,
    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
  })
end, { desc = 'Find files' })


-- LSP stuff
vim.keymap.set("n", "<leader>?", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<S-F12>", vim.lsp.buf.references, { desc = "Go to references" })
vim.keymap.set('i', '<C-Space>', "<C-x><C-o>", { desc = 'Trigger completion' })
vim.keymap.set('i', '<CR>', function()
  return vim.fn.pumvisible() == 1 and '<C-y>' or '<CR>'
end, { expr = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'LSP: Find references' }) 
vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { desc = 'LSP: Rename symbol' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show type info' })
