return {
  "vim-test/vim-test",
  lazy = false,
  config = function()
    vim.g["test#preserve_screen"] = false
    vim.g["python#runner"] = "pytest"
  end,
}
