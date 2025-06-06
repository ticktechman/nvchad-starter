# new starter

Working with nvchad v2.5

- change default color scheme
- change leader to ,
- add my own snippets
- add my own plugins
- auto format after write

# enable new LSP

``` bash
## change server variable in lspconfig.lua
##     local servers = { "html", "cssls", "clangd", "bashls", "gopls" }
vim ./lua/configs/lspconfig.lua
```

# debug tips

- list all plugins in runtime: scriptnames
- no plugins startup: nvim --noplugin --clean xxx

# tips for adding new language toolkit

- formatter: lua/configs/conform.lua
- lsp: lua/configs/lspconfig.lua
- snippets:
    - registry: lua/snippets/package.json
    - snippets: lua/snippets/your-lang.json

# c/c++ env

- clangd & clang-format for LSP and formatting
- bear for compile_commands.json
- Snippets

# golang env

- gopls for LSP
- gofumpt for formatter

# shell

- bashls for LSP
- shellcheck  for linter
- shfmt for formatter

# python

- pyright for LSP
- black for linter
- ruff for formatter

# javascript, typescript, json

- typescript-language-server for LSP
- eslint_d for linter
- prettierd for fomatter

# enable open folder and zip files

- comments plugins() disable in lua/configs/lazy.lua
- add autocmd in autocmds.lua and load it in init.lua

```lua
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg and vim.fn.isdirectory(arg) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end,
})
```

