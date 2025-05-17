-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle)

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open)

----------------------------- LSP -----------------------------
-- GO TO DEFINITION
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to the definition of the symbol under the cursor."
})

-- GO TO REFERENCES
vim.keymap.set("n", "gr", vim.lsp.buf.references, {
    desc = "Show the references of the symbol under the cursor."
})

-- RENAME
vim.keymap.set("n", "grn", vim.lsp.buf.rename, {
    desc = "Rename the symbol under the cursor."
})

-- CODE ACTIONS
vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, {
    desc = "Open the code actions menu."
})
