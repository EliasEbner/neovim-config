-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle)

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open)

----------------------------- LSP -----------------------------
-- GO TO DEFINITION
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- GO TO REFERENCES
vim.keymap.set("n", "gr", vim.lsp.buf.references)

-- RENAME
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
