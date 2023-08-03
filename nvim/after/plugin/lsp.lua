local lsp = require("lsp-zero").preset({
    name = "recommended",
    --[[
    String. Shape of borders in floating windows. It can be one of the
    following: `'none'`, `'single'`, `'double'`, `'rounded'`, `'solid'`
    or `'shadow'`.
    --]]
    float_border = 'single',
})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    -- lsp.buffer_autoformat()
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
