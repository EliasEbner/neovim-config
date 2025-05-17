return {
    "sidebar-nvim/sidebar.nvim",
    opts = {
        open = true,
        sections = { "datetime", "files", "diagnostics", "git" },
        files = {
            icon = "",
            show_hidden = false,
            ignored_paths = {"%.git$"}
        },
        bindings = {
            ["<space>s"] = function()
                require("sidebar-nvim").toggle()
            end
        }
    }
}
