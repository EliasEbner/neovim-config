-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle, {
  desc = "Toggle sidebar"
})

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open, {
  desc = "Open file explorer"
})

-- TELESCOPE FIND FILES
vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files, {
  desc = "Find files"
})

----------------------------- LSP -----------------------------
-- GO TO DEFINITION
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
  desc = "Go to definition"
})

-- GO TO TYPE DEFINITION
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, {
  desc = "Go to type definition"
})

-- GO TO REFERENCES
vim.keymap.set("n", "gr", vim.lsp.buf.references, {
  desc = "Go to references"
})

-- RENAME
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {
  desc = "Rename symbol"
})

-- CODE ACTIONS
vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, {
  desc = "Show code actions"
})

----------------------------- HARPOON -----------------------------
-- ADD FILE TO HARPOON LIST
vim.keymap.set("n", "<space>ha", function()
  require("harpoon"):list():add()
end, {
  desc = "Add current buffer to harpoon"
})

-- REMOVE FILE FROM HARPOON LIST
vim.keymap.set("n", "<space>hd", function()
  require("harpoon"):list():remove()
end, {
  desc = "Remove current buffer from harpoon"
})

-- OPEN HARPOON LIST
vim.keymap.set("n", "<space>hl", function()
  require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end, {
  desc = "Open harpoon buffer list"
})

-- GO TO SPECIFIC LIST ITEMS
vim.keymap.set("n", "<space>hh", function()
  require("harpoon"):list():select(1)
end, {
  desc = "Open first element in harpoon buffer list"
})
vim.keymap.set("n", "<space>ht", function()
  require("harpoon"):list():select(2)
end, {
  desc = "Open second element in harpoon buffer list"
})
vim.keymap.set("n", "<space>hn", function()
  require("harpoon"):list():select(3)
end, {
  desc = "Open third element in harpoon buffer list"
})
vim.keymap.set("n", "<space>hs", function()
  require("harpoon"):list():select(4)
end, {
  desc = "Open fourth element in harpoon list"
})

----------------------------- DIAGNOSTICS -----------------------------
-- TOGGLE DIAGNOSTICS FLOATING WINDOW
vim.keymap.set("n", "<space>d", function()
  vim.diagnostic.open_float({
    focusable = true,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    border = "rounded",
    prefix = "",
    scope = "cursor",
  })
end, {
  desc = "Show diagnostic floating window"
})


----------------------------- DIFFVIEW -----------------------------
-- OPEN DIFFVIEW
vim.keymap.set("n", "do", function()
  vim.cmd("DiffviewOpen")
end, {
  desc = "Open diff view"
})

-- CLOSE DIFFVIEW
vim.keymap.set("n", "dc", function()
  vim.cmd("DiffviewClose")
end, {
  desc = "Open diff view"
})


----------------------------- TREESITTER -----------------------------
-- TOGGLE HIGHLIGHTING
vim.keymap.set("n", "<space>t", function()
  if vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] then
    vim.treesitter.stop()
  else
    vim.treesitter.start()
  end
end, {
  desc = "Start treesitter highlighting"
})
