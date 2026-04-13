vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>ff", function()
  require('telescope.builtin').find_files({
    hidden = true,
    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
  })
end, { desc = 'Find files' })
