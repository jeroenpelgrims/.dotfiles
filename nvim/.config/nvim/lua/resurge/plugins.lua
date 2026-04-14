-- stdlib for many nvim plugins
vim.pack.add({
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
		version = "v0.1.4",
	}
})


-- Telescope fuzzy finder
vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		version = "v0.2.2",
	},
	-- Native implementation of sorter (= faster)
  {
    src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
		version = "main",
  },	
})
-- Build fzf-native (vim.pack doesn't execute build automatically)
vim.fn.system({"make", "-C", vim.fn.stdpath("data") .. "/site/pack/core/opt/telescope-fzf-native.nvim"})
require("telescope").setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules"
		}
	}
}
require("telescope").load_extension("fzf")


-- LSP
vim.pack.add({
	{
		src = "https://github.com/neovim/nvim-lspconfig",
		version = "v2.8.0"
	},
	{
		src = "https://github.com/mason-org/mason.nvim",
		version = "v2.2.1"
	},
	{
		src = "https://github.com/mason-org/mason-lspconfig.nvim",
		version = "v2.1.0"
	}
})
require('mason').setup()

-- Override vtsls to add Vue plugin BEFORE mason-lspconfig enables it
vim.lsp.config('vtsls', {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
            name = "@vue/typescript-plugin",
            location = vim.fn.stdpath('data') .. '/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin',
            languages = { "vue" },
            configNamespace = "typescript",
            enableForWorkspaceTypeScriptVersions = true,
          },
        },
      },
    },
  },
})

require('mason-lspconfig').setup({
  ensure_installed = { 'vtsls', 'vue_ls' },
  automatic_enable = true,  -- Auto-runs vim.lsp.enable() for installed servers
})
