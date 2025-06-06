require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-----------------------------------------------
-- added for ticktechman
map("n", "<leader>z", ":q!<CR>")

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

map({ "n", "t" }, "<C-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = { border = "rounded", row = 0.2, col = 0.2, width = 0.6, height = 0.6 },
  }
end, { desc = "terminal toggle floating term" })
-----------------------------------------------
