lvim.plugins = {
  "nvim-treesitter/nvim-treesitter-textobjects",
  {
    "mawkler/modicator.nvim",
    event = "ColorScheme",
  },
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "lunarvim/darkplus.nvim",
  "kevinhwang91/nvim-bqf",
  "nacro90/numb.nvim",
  "sindrets/diffview.nvim",
  "stevearc/dressing.nvim",
  "olexsmir/gopher.nvim",
  {
    'junegunn/fzf',
    build = function()
      vim.fn['fzf#install']()
    end
  },
  {
    "j-hui/fidget.nvim",
    branch = "legacy",
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim"
    },
  },
  "nvim-neotest/neotest-go",
  {
    "hrsh7th/cmp-emoji",
    event = "BufRead",
  },
  "leoluz/nvim-dap-go",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  "LukasPietzschmann/telescope-tabs",
}
