return {
  { "uga-rosa/translate.nvim", lazy = false },
  {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
  { "octol/vim-cpp-enhanced-highlight", lazy = false }, -- дополнительная подсветка синтаксиса
  {
    "Civitasv/cmake-tools.nvim",
    dependencies = {
      "stevearc/overseer.nvim",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    keys = {
      { "<F5>", "<CMD>DapContinue<CR>", mode = "n" },
      { "<F6>", "<CMD>DapStepOver<CR>", mode = "n" },
      { "<F7>", "<CMD>DapStepInto<CR>", mode = "n" },
      { "<F8>", "<CMD>DapStepOut<CR>", mode = "n" },
      { "<F9>", "<CMD>DapToggleBreakpoint<CR>", mode = "n" },
      { "<F10>", '<CMD>lua require("dapui").toggle()<CR>', mode = "n" },
    },
    config = function()
      local dapui = require "dapui"
      local dap = require "dap"

      dapui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
    init = function()
      vim.fn.sign_define("DapBreakpoint", { text = "󰏥", texthl = "DapBreakpoint" })
      vim.fn.sign_define("DapBreakpointRejected", { text = "󰏥" })
      vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped" })
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("mason-nvim-dap").setup {
        automatic_setup = true,
        ensure_installed = {
          "bash",
          "codelldb",
          "delve",
          "python",
          "debugpy",
        },
        handlers = {},
      }
    end,
  },

  { "mfussenegger/nvim-dap-python" },

  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup(--[[optional config]])
    end,
  },
}
