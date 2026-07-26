-- Auto formatters
vim.pack.add({
  {
    src = "https://github.com/stevearc/conform.nvim",
    version = "v9.1.0"
  }
})
require("conform").setup({
  formatters_by_ft = {
    rust = { "rustfmt", lsp_format = "fallback" },
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
    python = { "black" }
  },
  -- Auto format on save
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",  -- Use LSP (vtsls) if no prettier config found
  },
  -- Ensure prettier finds your config file
  formatters = {
    prettier = {
      -- require_cwd = true,  -- Only run if prettier config exists in project
      append_args = { "--tab-width", "2", "--use-tabs", "false" },
    },
  },
})

-- Configure formatting per language
local set_indent = vim.api.nvim_create_augroup("set_indent", { clear = true })
vim.opt.list = true

vim.api.nvim_create_autocmd("FileType", {
  group = set_indent,
  pattern = { "rust" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.listchars:append({
       tab = "▸ ",
       trail = "·",
      leadmultispace = "│   "
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = set_indent,
  pattern = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "vue",
    "css",
    "scss",
    "json",
    "yaml",
    "html",
    "lua"
  },
  callback = function()
    vim.bo.expandtab = true -- Use spaces instead of tabs
    vim.bo.tabstop = 2 -- How many columns a \t is displayed as
    vim.bo.shiftwidth = 2 -- How many spaces to use for indentation commands
    vim.bo.softtabstop = 2
    vim.opt_local.listchars:append({
       tab = "▸ ",
       trail = "·",
      leadmultispace = "│ "
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
  end,
})
