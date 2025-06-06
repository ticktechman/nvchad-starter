return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- added by ticktechman
  {
    "majutsushi/tagbar",
    lazy = false,
    config = function()
      vim.g.tagbar_sort = 0
    end,
  },
  { "godlygeek/tabular", lazy = false },
  { "ntpeters/vim-better-whitespace", lazy = false },
  { "vim-scripts/a.vim", lazy = false },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
