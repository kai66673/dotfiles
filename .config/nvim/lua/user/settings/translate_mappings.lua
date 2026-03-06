local wk = require "which-key"
wk.add {
  { "<leader>u", name = "Мои команды", mode = "n" },
  { "<leader>up", name = "Переводчик", mode = "n" },
  { "<leader>upa", "HVL<cmd>Translate ru<cr>", name = "en->ru [ Экран ]", mode = "n" },
  { "<leader>upw", "viw<cmd>Translate ru<cr>", name = "en->ru [ словo ]", mode = "n" },
  {
    "<leader>upz",
    "viw<cmd>Translate en -output=replace<cr><esc>",
    name = "Заменить [ слово ] ru->en",
    mode = "n",
  },

  { "<leader>u", name = "Мои команды", mode = "v" },
  { "<leader>up", "<cmd>Translate ru<cr>", name = "en->ru [ строка ]", mode = "v" },
  {
    "<leader>uz",
    "viw<cmd>Translate en -output=replace<cr><esc>",
    name = "Заменить [ слово ] ru->en",
    mode = "v",
  },
}
