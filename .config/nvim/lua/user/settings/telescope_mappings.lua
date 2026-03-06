local wk = require "which-key"

wk.add {
  { "<leader>fr", "<cmd>Telescope lsp_references<cr>", name = "Telescope [F]ind [R]eferences", mode = "n" },
}
