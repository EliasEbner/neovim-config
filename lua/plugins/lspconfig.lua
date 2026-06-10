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
