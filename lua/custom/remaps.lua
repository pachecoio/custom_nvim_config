-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Navigation

-- Go to previous buffer with H
-- vim.keymap.set('n', '<S-h>', '<C-^>', { desc = 'Go to previous buffer' })
vim.cmd([[nnoremap <silent> <S-h> :bprevious<CR>]])

-- Go to next buffer with shift L
-- vim.keymap.set('n', '<S-l>', '<C-w>l', { desc = 'Go to next buffer' })
vim.cmd([[nnoremap <silent> <S-l> :bnext<CR>]])


-- Go to left window
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window' })

-- Go to right wtndow
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window' })

-- Toggle NeoTree with leader e
vim.cmd([[nnoremap <leader>e :Neotree toggle<cr>]])

-- close current window
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close current window' })

-- Close current buffer with leader cc
vim.keymap.set('n', '<leader>cc', ':bd<CR>', { desc = 'Close current buffer' })

