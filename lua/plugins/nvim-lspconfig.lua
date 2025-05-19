return {
    "neovim/nvim-lspconfig",
    opts = {},
    config = function()
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("pyright")
        vim.lsp.enable("rust_analyzer")
        vim.lsp.enable("jdtls")
        vim.lsp.enable("ts_ls")
        vim.lsp.enable("tailwindcss")
        vim.lsp.enable("eslint")
    end
}
