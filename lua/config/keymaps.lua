----------------------------- COLEMAK -----------------------------
vim.keymap.set({ "n", "v" }, "h", "o")
vim.keymap.set({ "n", "v" }, "j", "n")
vim.keymap.set({ "n", "v" }, "k", "i")
vim.keymap.set({ "n", "v" }, "l", "e")

vim.keymap.set({ "n", "v" }, "H", "O")
vim.keymap.set({ "n", "v" }, "J", "N")
vim.keymap.set({ "n", "v" }, "K", "I")
vim.keymap.set({ "n", "v" }, "L", "E")

vim.keymap.set({ "n", "v" }, "n", "h")
vim.keymap.set({ "n", "v" }, "e", "j")
vim.keymap.set({ "n", "v" }, "i", "k")
vim.keymap.set({ "n", "v" }, "o", "l")

vim.keymap.set({ "n", "v" }, "N", "H")
vim.keymap.set({ "n", "v" }, "E", "J")
vim.keymap.set({ "n", "v" }, "I", "K")
vim.keymap.set({ "n", "v" }, "O", "L")

vim.keymap.set({ "n", "v" }, "<C-n>", "<C-h>")
vim.keymap.set({ "n", "v" }, "<C-e>", vim.lsp.buf.hover)
vim.keymap.set({ "n", "v" }, "<C-i>", "<C-k>")
vim.keymap.set({ "n", "v" }, "<C-o>", "<C-l>")

vim.keymap.set({ "n", "v" }, "<C-h>", "<C-o>")
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-n>")
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-i>")
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-e>")


-------------------------------------------------------------------


-- TOGGLE SIDEBAR
vim.keymap.set("n", "<space>s", require("sidebar-nvim").toggle, {
  desc = "Toggle [s]idebar"
})

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<space>x", require("oil").open, {
  desc = "Open file e[x]plorer"
})

-- TELESCOPE FIND FILES
vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files, {
  desc = "Find [f]iles"
})

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

----------------------------- HARPOON -----------------------------
-- ADD FILE TO HARPOON LIST
vim.keymap.set("n", "<space>ha", function()
  require("harpoon"):list():add()
end, {
  desc = "[A]dd current buffer to harpoon"
})

-- REMOVE FILE FROM HARPOON LIST
vim.keymap.set("n", "<space>hr", function()
  require("harpoon"):list():remove()
end, {
  desc = "[R]emove current buffer from harpoon"
})

-- OPEN HARPOON LIST
vim.keymap.set("n", "<space>hl", function()
  require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end, {
  desc = "Open harpoon buffer [l]ist"
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
