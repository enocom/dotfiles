local map = vim.api.nvim_set_keymap

vim.g.mapleader = ","

options = { noremap = true }
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

map('n', '<leader>x', ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', options)

map('n', 'C-n', ':cnext<CR>', options)
map('n', 'C-m', ':cprevious<CR>', options)

map('n', '<leader>ev', ':edit $MYVIMRC<CR>', options)
map('n', '<leader>ee', ':source $MYVIMRC<CR>', options)

map('n', '<SPACE>', ':nohls<CR>', options)
