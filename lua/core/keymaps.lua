vim.g.mapleader = ' '
vim.g.maploclleader = ' '
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent=true})

local opts = {noremap=true, silent=true}

vim.keymap.set('n', '<leader>fs', '<cmd> w <CR>', opts)
vim.keymap.set('n', '<leader>fq', '<cmd> x <CR>', opts)
vim.keymap.set('n', '<leader>qq', '<cmd> wqa <CR>', opts)
vim.keymap.set('n', 'x', '"_x', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('v', 'p', '"_dP', opts)
