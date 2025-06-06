require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls" }
local servers = { "html", "cssls", "clangd", "bashls", "gopls", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
