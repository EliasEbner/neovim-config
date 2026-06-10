vim.pack.add { 'https://github.com/nvim-telescope/telescope.nvim' }

-- TELESCOPE FIND FILES
vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files, {
  desc = "Find [f]iles"
})

require('telescope').setup {}
