-- ENABLE TREESITTER
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "c",
    "cpp",
    "wgsl",
    "typescriptreact",
    "ts",
    "js",
    "c3",
    "rs",
  },
  callback = function() vim.treesitter.start() end,
})
