vim.pack.add { 'https://github.com/catppuccin/nvim' }

require('catppuccin').setup {
  color_overrides = {
    all = {
        text = '#ffffff',
    },
    latte = {
        base = '#22282a',
        mantle = '#242424',
        crust = '#474747',
    },
    frappe = {},
    macchiato = {},
    mocha = {
        base = '#22282a',
    },
  }
}
