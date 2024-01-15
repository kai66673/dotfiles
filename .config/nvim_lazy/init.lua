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

-- Ленивая загрузка плагинов
require "user.lazy"
