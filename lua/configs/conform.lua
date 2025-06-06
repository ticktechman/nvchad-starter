local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    json = { "prettierd" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
