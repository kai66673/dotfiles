local configs = require "lspconfig.configs"
local nvim_lsp = require "lspconfig"

local nvlsp = require "nvchad.configs.lspconfig"

if not configs.neocmake then
  configs.neocmake = {
    default_config = {
      cmd = { "neocmakelsp", "--stdio" },
      filetypes = { "cmake" },
      root_dir = function(fname)
        return nvim_lsp.util.find_git_ancestor(fname)
      end,
      single_file_support = true, -- suggested
      on_attach = nvlsp.on_attach, -- on_attach is the on_attach function you defined
      init_options = {
        format = {
          enable = true,
        },
        lint = {
          enable = true,
        },
        scan_cmake_in_package = true, -- default is true
      },
    },
  }
  nvim_lsp.neocmake.setup {}
end
