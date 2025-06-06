local options = {
  -- for all formatters, run the following command:
  -- ls $HOME/.local/share/nvim/lazy/conform.nvim/lua/conform/formatters
  --
  -- for all filetypes:
  -- ls /opt/homebrew/Cellar/neovim/0.11.0/share/nvim/runtime/ftplugin/
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
