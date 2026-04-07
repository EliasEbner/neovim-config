vim.keymap.set("i", "<Tab>", function()
  local minuet = require("minuet.virtualtext")

  if minuet and minuet.action.is_visible() then
    minuet.action.accept_line()
  else
    return "\t"
  end
end, { expr = true })
