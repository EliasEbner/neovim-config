-- ENABLE TREESITTER
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "c",
    "cpp",
    "wgsl",
    "typescriptreact",
    "typescript",
    "c3",
    "rs",
  },
  callback = function() vim.treesitter.start() end,
})
