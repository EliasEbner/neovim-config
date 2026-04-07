-- ENABLE TREESITTER
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "tsx", "ts", "js", "c3", "rs", "zig" },
  callback = function() vim.treesitter.start() end,
})
