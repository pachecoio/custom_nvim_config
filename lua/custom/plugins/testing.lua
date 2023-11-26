return {
  "vim-test/vim-test",
  lazy = false,
  config = function()
    vim.g["test#preserve_screen"] = false
    vim.g["python#runner"] = "pytest"

    -- remaps
    vim.cmd([[nnoremap <leader>tt :TestNearest<cr>]])
    vim.cmd([[nnoremap <leader>tf :TestFile<cr>]])
  end,
}
