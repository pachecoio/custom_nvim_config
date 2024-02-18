return {
  "vim-test/vim-test",
  lazy = false,
  config = function()
    vim.g["test#preserve_screen"] = false
    vim.g["python#runner"] = "pytest"

    -- remaps
    vim.cmd([[nnoremap <leader>tt :TestNearest<cr>]])
    vim.cmd([[nnoremap <leader>tf :TestFile<cr>]])
    vim.cmd([[nnoremap <leader>tl :TestLast<cr>]])
    vim.cmd([[nnoremap <leader>ts :TestSuite<cr>]])
    vim.cmd([[nnoremap <leader>tc :TestClass<cr>]])
    vim.cmd([[nnoremap <leader>tv :TestVisit<cr>]])
  end,
}
