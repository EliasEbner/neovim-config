vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter' }

-- require('nvim-treesitter').install {
--     'rust',
--     'c',
--     'c3',
--     'wgsl',
--     'javascript',
--     'typescript',
--     'tsx',
-- }

-- ENABLE TREESITTER
vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        'c',
        'cpp',
        'wgsl',
        'typescriptreact',
        'typescript',
        'c3',
        'rust',
    },
    callback = function()
        vim.treesitter.start()
    end,
})


require('nvim-treesitter').setup {}
