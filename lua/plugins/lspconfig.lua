vim.pack.add { 'https://github.com/neovim/nvim-lspconfig' }
vim.lsp.config('*', {})
vim.lsp.enable({
    'gopls',
    'tailwindCSS',
    'jdtls',
    'kotlin_language_server',
    'lua_ls',
    'pyright',
    'rust_analyzer',
    'ts_ls',
    'ruff',
    'eslint',
    'html',
    'emmet_ls',
    'ltex',
    'astro',
    'clangd',
    -- 'angularls',
    'zls',
    'tinymist',
    'wgsl_analyzer',
    'c3_lsp',
})

vim.keymap.set('i', '<C-space>', function()
    vim.lsp.completion.get()
end);

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
        if client:supports_method('textDocument/completion') then
            local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = chars

            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                buffer = ev.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end
    end,
})
