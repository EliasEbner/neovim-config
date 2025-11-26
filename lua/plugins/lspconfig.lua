return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("*", {})
		vim.lsp.enable({
			"gopls",
      "tailwindcss",
			"jdtls",
			"kotlin_language_server",
			"lua_ls",
			"pyright",
			"rust_analyzer",
			"ts_ls",
      "ruff",
      "eslint",
      "html",
      "emmet_ls",
      "ltex",
      "astro",
      "clangd",
      "angularls",
      "zls",
      "tinymist"
		})

	end,
}
