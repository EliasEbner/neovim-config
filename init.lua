vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      -- Enable completion for this client, buffer, and enable autotrigger
      vim.notify("Enabling LSP completion")
      vim.lsp.completion.enable(true, client.id, args.buf, {
        autotrigger = true,
        -- Optional: Custom formatting for completion items
        convert = function(item)
          return {
            abbr = item.label:gsub('%b()', ''):gsub('%b{}', ''),
            menu = item.detail or '',
          }
        end,
      })
    end
  end,
})

require("plugins")
require("autocomplete")
require("numbers")
require("keymaps")
require("format-on-save")
require("ignore-case")
require("clipboard")
require("miscellaneous")
require("colorscheme")
