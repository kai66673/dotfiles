-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "clangd",
  "jsonls",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig["basedpyright"].setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  root_dir = function(fname)
    local util = require "lspconfig/util"
    local prefered_prj_files = {
      "pyrightconfig.json",
    }
    local root_files = {
      "pyproject.toml",
      "setup.py",
      "setup.cfg",
      "requirements.txt",
      "Pipfile",
      "pyrightconfig.json",
    }
    return util.root_pattern(unpack(prefered_prj_files))(fname)
      or util.root_pattern(unpack(root_files))(fname)
      or util.find_git_ancestor(fname)
      or util.path.dirname(fname)
  end,
  capabilities = nvlsp.capabilities,
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
        diagnosticSeverityOverrides = {
          reportMissingTypeStubs = false,
        },
      },
    },
  },
}
