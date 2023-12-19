vim.g.mapleader = " "

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree left focus<CR>')
vim.keymap.set('n', '<leader><s-e>', ':Neotree float toggle<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
