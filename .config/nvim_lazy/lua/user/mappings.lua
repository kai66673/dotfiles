vim.g.mapleader = " "

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree left focus<CR>')
vim.keymap.set('n', '<leader><s-e>', ':Neotree float toggle<CR>')

-- Tabs & buffers...
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<c-c>', '<CMD>bd<CR>')
vim.keymap.set('i', '<c-c>', '<CMD>bd<CR>')
vim.keymap.set('n', '<c-s>', '<CMD>w<CR>')
vim.keymap.set('i', '<c-s>', '<CMD>w<CR>')
vim.keymap.set('n', '<c-q>', '<CMD>qa<CR>')
vim.keymap.set('i', '<c-q>', '<CMD>qa<CR>')

-- LSP-navigation
vim.keymap.set('n', '<F2>', '<CMD>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('i', '<F2>', '<CMD>lua vim.lsp.buf.definition()<CR>')
