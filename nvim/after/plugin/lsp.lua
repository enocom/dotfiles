local lsp = require("lsp-zero").preset({
    name = "recommended",
    float_border = 'none',
})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

lsp.ensure_installed({
    'gopls',
    'tsserver',
    'eslint',
    'lua_ls',
    'rust_analyzer',
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
