----------------------------- LSP -----------------------------
-- GO TO DEFINITION
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
  desc = "[G]o to [d]efinition"
})

-- GO TO TYPE DEFINITION
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, {
  desc = "[G]o to t[y]pe definition"
})

-- GO TO REFERENCES
vim.keymap.set("n", "gr", vim.lsp.buf.references, {
  desc = "[G]o to [r]eferences"
})

-- RENAME
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {
  desc = "[R]e[n]ame symbol"
})

-- CODE ACTIONS
vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, {
  desc = "Show code [a]ctions"
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
  desc = "Show [d]iagnostic floating window"
})


----------------------------- DIFFVIEW -----------------------------
-- OPEN DIFFVIEW
vim.keymap.set("n", "do", function()
  vim.cmd("DiffviewOpen")
end, {
  desc = "[O]pen diff view"
})

-- CLOSE DIFFVIEW
vim.keymap.set("n", "dc", function()
  vim.cmd("DiffviewClose")
end, {
  desc = "[C]lose diff view"
})


----------------------------- TREESITTER -----------------------------
-- TOGGLE HIGHLIGHTING
vim.keymap.set("n", "<space>T", function()
  if vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] then
    vim.treesitter.stop()
  else
    vim.treesitter.start()
  end
end, {
  desc = "Toggle [t]reesitter highlighting"
})

----------------------------- TABBY -----------------------------
-- RENAME TAB
vim.keymap.set(
  "n",
  "<space>tr", ":Tabby rename_tab ",
  { desc = "[R]ename the current tab" }
)

-- JUMP TO TAB
vim.keymap.set("n", "<space>tj", function()
  vim.cmd("Tabby jump_to_tab")
end, {
  desc = "[J]ump to another tab"
})

-- PICK WINDOW
vim.keymap.set("n", "<space>tw", function()
  vim.cmd("Tabby pick_window")
end, {
  desc = "Jump to another [w]indow"
})

----------------------------- TABS -----------------------------
-- CREATE NEW TAB
vim.keymap.set("n", "<space>tn", function()
  vim.cmd("tabnew")
end, {
  desc = "Create a [n]ew tab"
})
