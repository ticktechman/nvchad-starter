require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>z", ":q!<CR>")
map("i", "jk", "<ESC>")

-- tabufline
map("n", "L", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "H", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto next" })

-- nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- tagbar
map("n", "<leader>t", ":TagbarToggle<CR>")
map("n", "<leader>,", ":call QuickFixToggle()<CR>")
