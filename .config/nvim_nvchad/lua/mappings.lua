require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save shortcuts
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-S>", "<cmd> wa <cr>")

-- illuminate toggle
map({ "n", "i" }, "<C-\\>", "<cmd> lua require('illuminate').toggle() <cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
