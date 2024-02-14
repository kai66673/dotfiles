local M = {
  "nvimdev/guard.nvim",
  -- Builtin configuration, optional
  dependencies = {
    "nvimdev/guard-collection",
  },
}

function M.config()
  local ft = require('guard.filetype')

  ft('c'):fmt({
    cmd = 'clang-format',
    args = { "--style=file" },
  }):lint('clang-tidy')
  ft('cpp'):fmt({
    cmd = 'clang-format',
    args = { '--style=file' },
  }):lint('clang-tidy')

  require('guard').setup({
    -- Choose to format on every write to a buffer
    fmt_on_save = true,
    -- Use lsp if no formatter was defined for this filetype
    lsp_as_default_formatter = false,
    -- By default, Guard writes the buffer on every format
    -- You can disable this by setting:
    -- save_on_fmt = false,
  })
end

return M
