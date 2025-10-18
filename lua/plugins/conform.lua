return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      zig = { "zigfmt" },
      ["_"] = { "prettier" },
    }
  },
}
