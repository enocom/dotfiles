vim.g.mapleader = " "

-- Make it easy to edit and source configuration
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>ee', ':source $MYVIMRC<CR>')

-- Keymap to get to Ex mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Manually format buffer, don't do it automatically
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- make it easy to yank to vim or system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Keymaps I'm not sure I want
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
