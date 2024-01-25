local M = {
  "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
}

function M.config()
  require('toggle_lsp_diagnostics').init()
end

return M
