vim.api.nvim_create_augroup('AutoFormatting', {})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.*',
  group = 'AutoFormatting',
  callback = function()
    local filetype = vim.bo.filetype
    -- List of filetypes where we want to use Prettier instead of LSP formatting
    local prettier_filetypes = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'tsx',
      'jsx',
    }

    if vim.tbl_contains(prettier_filetypes, filetype) then
      vim.cmd('Prettier')
    else
      vim.lsp.buf.format({ async = false })
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.tsx", "*.jsx", "*.json", "*.css", "*.scss", "*.md" },
  group = vim.api.nvim_create_augroup("PrettierFormat", { clear = true }),
  callback = function()
    vim.cmd("Prettier")
  end,
})
