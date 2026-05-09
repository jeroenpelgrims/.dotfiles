-- Enable relative line numbers
vim.wo.relativenumber = true

-- Defines how large a tab is displayed as
vim.opt.tabstop = 2

-- How many spaces are inserted for each indenation level
vim.opt.shiftwidth = 2

-- plugin-specific variable for vim-airline
vim.g.airline_powerline_fonts = 1

-- Highlight current line
vim.opt.cursorline = true

-- Copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- enable auto formatting on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    vim.lsp.buf.format({ 
      bufnr = args.buf,
      async = false  -- synchronous required for BufWritePre
    })
  end,
})

-- reserve fixed space for the diagnostics column
vim.opt.signcolumn = "yes"
