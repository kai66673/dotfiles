local M = {
  'mfussenegger/nvim-lint',
}

function M.config()
  require('lint').linters_by_ft = {
    cpp = { 'clazy', }
  }

  vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
      require("lint").try_lint()
    end,
  })
end

return M
