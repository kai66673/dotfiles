local M = {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<Leader>e"] = { "<CMD>Neotree float toggle<CR>", "Neotree float toggle" },
    ["<Leader><s-e>"] = { "<CMD>Neotree left toggle<CR>", "Neotree left toggle" },
  }
  wk.register({
    ["<c-f>"] = { "<ESC><CMD>Neotree float toggle<CR>", "Neotree float toggle" },
  }, { mode = "i" })

  -- I:f you want icons for diagnostic errors, you'll need to define them somewhere:
  vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
  vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
  vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
  vim.fn.sign_define("DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" })

  require("neo-tree").setup({
    close_if_last_window = false,
  })
end

return M
