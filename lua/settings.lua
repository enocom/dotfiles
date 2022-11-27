local o = vim.o   -- global option
local wo = vim.wo -- window option
local bo = vim.bo -- buffer option

-- o.background = "light"
o.swapfile      = false
o.writebackup   = false
o.termguicolors = true
o.smartcase     = true
o.splitbelow    = true
o.splitright    = true

wo.number       = true

bo.smartindent  = true
bo.expandtab    = true
bo.shiftwidth   = 4
bo.tabstop      = 4
bo.softtabstop  = 4

vim.cmd("colorscheme PaperColor")

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

vim.g.netrw_banner = 0
