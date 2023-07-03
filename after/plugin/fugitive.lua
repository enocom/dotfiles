vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

vim.keymap.set("n", "<leader>gp", function()
    vim.cmd.Git('push')
end)

vim.keymap.set("n", "<leader>gP", function()
    vim.cmd.Git({ "pull", "--rebase" })
end)
