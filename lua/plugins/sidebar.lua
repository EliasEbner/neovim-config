return {
    "sidebar-nvim/sidebar.nvim",
    opts = {
        open = true,
        files = {},
        bindings = {
            ["<space>s"] = function()
                require("sidebar-nvim").toggle()
            end
        }
    }
}
