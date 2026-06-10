vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter' }

require('nvim-treesitter').install {
    'rust',
    'c',
    'c3',
    'javascript',
    'typescript',
    'tsx',
}
require('nvim-treesitter').setup()
