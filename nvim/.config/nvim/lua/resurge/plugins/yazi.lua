vim.pack.add({
  { src = "https://github.com/mikavilpas/yazi.nvim", version = "v13.1.6" },
})
vim.keymap.set("n", "<leader>e", function()
  require("yazi").yazi()
end)
vim.g.loaded_netrwPlugin = 1
-- vim.api.nvim_create_autocmd("UIEnter", {
--   callback = function()
--     require("yazi").setup({
--       open_for_directories = true,
--     })
--   end,
-- })

