-------------------------------------------------------------------------------
--
--       filename: autocmds.lua
--    description:
--        created: 2025/06/06
--         author: ticktechman
--
-------------------------------------------------------------------------------

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg and vim.fn.isdirectory(arg) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*",
  callback = function()
    local first_line = vim.fn.getline(1)
    if first_line:match "^#!%s*/usr/bin/env%s+osascript" then
      vim.bo.filetype = "javascript"
    elseif first_line:match "^#!%s*/usr/bin/env%s+node" then
      vim.bo.filetype = "javascript"
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "zshrc", ".zshrc" },
  callback = function()
    vim.bo.filetype = "sh"
  end,
})

-------------------------------------------------------------------------------
