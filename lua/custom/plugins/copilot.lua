return {
  -- {
  --   "github/copilot.vim",
  --   event = "VeryLazy",
  --   config = function()
  --     -- copilot assume mapped
  --     vim.g.copilot_assume_mapped = true
  --     vim.g.copilot_no_tab_map = true
  --
  --     -- Copilot config
  --     local ok, copilot = pcall(require, "copilot")
  --     if not ok then
  --       return
  --     end
  --     copilot.setup {
  --       suggestion = {
  --         keymap = {
  --           accept = "<c-l>",
  --           next = "<c-j>",
  --           prev = "<c-k>",
  --           dismiss = "<c-h>",
  --         },
  --       },
  --     }
  --     local opts = { noremap = true, silent = true }
  --     vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
  --   end,
  -- }
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<TAB>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = false,
          debounce = 75,
          keymap = {
            accept = "<TAB>",
            accept_word = false,
            accept_line = false,
            next = "<c-j>",
            prev = "<c-k>",
            dismiss = "<ESC>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        server_opts_overrides = {},
      })
    end,
  }
}
