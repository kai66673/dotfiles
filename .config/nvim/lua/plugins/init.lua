return {
  -- Настройка плагинов NvChad
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "clangd",
        "clang-format",
        "basedpyright",
      },
    },
  },

  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   dependencies = {
  --     "williamboman/mason.nvim",
  --   },
  --   config = function()
  --     require("mason").setup {
  --       ui = {
  --         border = "rounded",
  --       },
  --     }
  --     require("mason-lspconfig").setup {
  --       ensure_installed = {
  --         "lua-language-server",
  --         "stylua",
  --         "clangd",
  --         "clang-format",
  --         "pyright",
  --       },
  --     }
  --   end,
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c",
        "cpp",
        "python",
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      image = {},
    },
  },

  -- Пользовательские плагины
  require "user.plugins",
}
