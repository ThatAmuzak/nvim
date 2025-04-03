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
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "d;", "d$", opts)

vim.keymap.set('n', '<leader>v', '<C-w>v', opts) 
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) 
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) 

vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)
