vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open, {
  desc = "Open file e[x]plorer"
})

require('oil').setup()
