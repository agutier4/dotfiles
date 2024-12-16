return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- vim
        "lua","vim",

        -- webdev
        "javascript", "html", "css", "json", "yaml", "xml", "sql",

        -- c adjacent
        "cpp", "c", "arduino", "cmake", "make",

        -- languages 
        "java", "rust", "python", "matlab",

        -- misc
        "bash", "markdown", "nix", "dockerfile"
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
