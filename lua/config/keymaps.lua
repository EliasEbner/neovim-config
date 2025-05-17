-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle, {
    desc = "Toggle the sidebar."
})

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open, {
    desc = "Open the file explorer."
})

-- TELESCOPE FIND FILES
vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files)

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


----------------------------- HARPOON -----------------------------
-- ADD FILE TO HARPOON LIST
vim.keymap.set("n", "<space>ha", function()
    require("harpoon"):list():add()
end)

-- REMOVE FILE FROM HARPOON LIST
vim.keymap.set("n", "<space>hd", function()
    require("harpoon"):list():remove()
end)

-- OPEN HARPOON LIST
vim.keymap.set("n", "<space>hl", function()
    require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end)

-- GO TO SPECIFIC LIST ITEMS
vim.keymap.set("n", "<space>hh", function()
    require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<space>ht", function()
    require("harpoon"):list():select(2)
end)
vim.keymap.set("n", "<space>hn", function()
    require("harpoon"):list():select(3)
end)
vim.keymap.set("n", "<space>hs", function()
    require("harpoon"):list():select(4)
end)
