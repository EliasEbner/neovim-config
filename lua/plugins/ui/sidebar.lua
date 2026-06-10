vim.pack.add { 'https://github.com/sidebar-nvim/sidebar.nvim' }

require('sidebar-nvim').setup {
    open = false,
    sections = { 'datetime', 'files', 'diagnostics' },
    -- git wasn't always working for some reason and sometimes threw an error
    -- sections = { 'datetime', 'files', 'diagnostics', 'git' },
    files = {
        icon = '',
        show_hidden = false,
        ignored_paths = { '%.git$' }
    },
    bindings = {
        ['<space>s'] = function()
            require('sidebar-nvim').toggle()
        end
    }
}

-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle, {
  desc = "Toggle [s]idebar"
})
