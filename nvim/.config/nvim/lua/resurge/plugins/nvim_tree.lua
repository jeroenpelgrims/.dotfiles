-- nvim-tree
vim.pack.add({
	{
		src = "https://github.com/nvim-tree/nvim-tree.lua",
		version = "v1.17.0",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
		version = "v0.100",
	}
})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('nvim-tree').setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  on_attach = function(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
          return {
              desc = "nvim-tree: " .. desc,
              buffer = bufnr,
              noremap = true,
              silent = true,
              nowait = true,
          }
      end

      -- ✅ Load ALL default mappings first (Enter to open folders, g? for help, etc.)
      api.config.mappings.default_on_attach(bufnr)

      -- ➕ Then add your custom ones on top
      vim.keymap.set("n", "v", api.node.open.vertical,   opts("Open: Vertical Split"))
      vim.keymap.set("n", "s", api.node.open.horizontal, opts("Open: Horizontal Split"))
      vim.keymap.set("n", "t", api.node.open.tab,        opts("Open: New Tab"))
  end,
})