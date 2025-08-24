return {
  "neovim/nvim-lspconfig",
  opts = {},
  config = function()
    -- for tailwindcss to work in rust leptos files
    local lspconfig = require("lspconfig")

    lspconfig.tailwindcss.setup({
      filetypes = {
        "html", "css", "javascript", "javascriptreact",
        "typescript", "typescriptreact", "rust" -- Add rust here
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
    -- vim.lsp.enable("tailwindcss")
    vim.lsp.enable("tailwindcss")
    vim.lsp.enable("eslint")
    vim.lsp.enable("html")
    vim.lsp.enable("emmet_ls")
    vim.lsp.enable("ltex")
  end
}
