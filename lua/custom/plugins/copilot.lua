return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      -- copilot assume mapped
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_no_tab_map = true
    end,
  },
  {
    "hrsh7th/cmp-copilot",
    config = function()
      -- lvim.builtin.cmp.formatting.source_names["copilot"] = "( )"
      -- table.insert(lvim.builtin.cmp.sources, 2, { name = "copilot" })
    end,
  }
}
