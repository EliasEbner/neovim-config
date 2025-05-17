return {
    "sidebar-nvim/sidebar.nvim",
    opts = {
        open = false,
        files = {},
        bindings = {
            ["<space>s"] = function()
                require("sidebar-nvim").toggle()
            end
        }
    }
}
