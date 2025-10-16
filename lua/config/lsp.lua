-- TALWIND (FOR RUST SUPPORT)
vim.lsp.config("tailwindcss", {
  filetypes = {
    "html", "css", "javascript", "javascriptreact",
    "typescript", "typescriptreact", "rust"
  },
  settings = {
    tailwindCSS = {
      classAttributes = {
        "className",
        "class"
      },
      includeLanguages = {
        rust = "html",
      }
    }
  }
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        features = "all"
      },
    }
  }
})
vim.lsp.enable("jdtls")
-- I'm already using ts tools
vim.lsp.enable("ts_ls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("eslint")
vim.lsp.enable("html")
vim.lsp.enable("emmet_ls")
vim.lsp.enable("ltex")
vim.lsp.enable("astro")
vim.lsp.enable("clangd")
vim.lsp.enable("gopls")
-- Sometimes doesn't work if I need this I'll comment it out
-- vim.lsp.enable("angularls")
