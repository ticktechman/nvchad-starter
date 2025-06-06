require("nvchad.configs.lspconfig").defaults()

-- for other LSP names, run the command:
--  cat $HOME/.local/share/nvim/mason/registries/github/mason-org/mason-registry/registry.json|jq -c '.[]|{name,neovim}'
local servers = { "html", "cssls", "clangd", "bashls", "gopls", "pyright", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
