-- Auto formatters
vim.pack.add({
  {
    src = "https://github.com/stevearc/conform.nvim",
    version = "v9.1.0"
  }
})
require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    vue = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    html = { "prettier" },
  },
  -- Auto format on save
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",  -- Use LSP (vtsls) if no prettier config found
  },
  -- Ensure prettier finds your config file
  formatters = {
    prettier = {
      require_cwd = true,  -- Only run if prettier config exists in project
    },
  },
})