vim.pack.add { 'https://github.com/EdenEast/nightfox.nvim' }

require('nightfox').setup {
  groups = {
    all = {
      DiagnosticUnderlineError = { style = 'underline,bold' },
      DiagnosticUnderlineWarn = { style = 'underline' },
    }
  }
}
