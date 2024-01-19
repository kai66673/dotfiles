-- Базовая конфигурация
require "user.launch"
require "user.mappings"
require "user.configs"

-- Конфигурация плагинов
spec "user.plugs.colorscheme"
spec "user.plugs.treesitter"
spec "user.plugs.neo-tree"
spec "user.plugs.mason"
spec "user.plugs.lspconfig"
spec "user.plugs.cmp"
spec "user.plugs.none-ls"
spec "user.plugs.whichkey"
spec "user.plugs.bufferline"
spec "user.plugs.lualine"
spec "user.plugs.navic"
spec "user.plugs.cmake-tools"
spec "user.plugs.toggleterm"

-- Ленивая загрузка плагинов
require "user.lazy"
