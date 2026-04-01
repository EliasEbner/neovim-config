return {
  {
    'milanglacier/minuet-ai.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('minuet').setup {
        notify = "debug",
        request_timeout = 5,
        provider = "openai_fim_compatible",
        provider_options = {
          openai_fim_compatible = {
            api_key = "TERM",
            name = 'Ollama',
            end_point = 'http://localhost:11434/v1/completions',
            model = 'qwen2.5-coder:7b',
            optional = {
              max_tokens = 256,
              top_p = 0.9,
            },
          },
        },
        n_completions = 1,
        context_window = 512,
        virtualtext = {
          auto_trigger_ft = { "c", "zig", "tsx", "ts", "cpp", "js", "jsx" },
          keymap = {
            -- accept whole completion
            accept = '<C-g>',
            -- accept one line
            accept_line = nil,
            -- accept n lines (prompts for number)
            -- e.g. "A-z 2 CR" will accept 2 lines
            accept_n_lines = '<C-S-g>',
            -- Cycle to prev completion item, or manually invoke completion
            prev = '<C-p>',
            -- Cycle to next completion item, or manually invoke completion
            next = '<C-n>',
            dismiss = '<C-e>',
          }
        }
      }
    end,
  },
}
