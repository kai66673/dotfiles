local M = {
  "akinsho/bufferline.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' }
}

function M.config()
  require("bufferline").setup {
    options = {
      buffer_close_icon = '',

      mode = 'buffers',
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
          padding = 1
        },
      },
      diagnostics = "nvim_lsp",
      indicator = {
        icon = '  ', -- this should be omitted if indicator style is not 'icon'
        style = 'icon'
      },
      -- separator_style = "slope"
    }
  }
end

return M
