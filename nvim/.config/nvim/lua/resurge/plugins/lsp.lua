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
	filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }, 
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
  ensure_installed = { 'vtsls', 'vue_ls', 'rust_analyzer', 'basedpyright' },
  automatic_enable = true,  -- Auto-runs vim.lsp.enable() for installed servers
})
vim.o.completeopt = "menuone,noselect,fuzzy"