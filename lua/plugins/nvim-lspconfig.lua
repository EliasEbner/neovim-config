return {
  "neovim/nvim-lspconfig",
  opts = {},
  config = function()
    -- for tailwindcss to work in rust leptos files
    local lspconfig = require("lspconfig")
    
    lspconfig.tailwindcss.setup({
      filetypes = {
        "html", "css", "javascript", "javascriptreact", 
        "typescript", "typescriptreact", "rust"  -- Add rust here
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
    vim.lsp.enable("ts_ls")
    -- vim.lsp.enable("tailwindcss")
    vim.lsp.enable("tailwindcss")
    vim.lsp.enable("eslint")
    vim.lsp.enable("html")
    vim.lsp.enable("emmet_language_server")
    vim.lsp.enable("ltex")
  end
}
