vim.g.mapleader = " "

-- Make it easy to edit and source configuration
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>ee', ':source $MYVIMRC<CR>')

-- Keymap to get to Ex mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- make it easy to yank to vim or system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- format manually because something is broken with auto
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
