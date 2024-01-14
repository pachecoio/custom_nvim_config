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
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Navigation

-- Go to previous buffer with H
-- vim.keymap.set('n', '<S-h>', '<C-^>', { desc = 'Go to previous buffer' })
-- vim.cmd([[nnoremap <silent> <S-h> :bprevious<CR>]])

-- Go to next buffer with shift L
-- vim.keymap.set('n', '<S-l>', '<C-w>l', { desc = 'Go to next buffer' })
-- vim.cmd([[nnoremap <silent> <S-l> :bnext<CR>]])

-- Toggle NeoTree with leader e
vim.cmd([[nnoremap <leader>m :Neotree toggle<cr>]])

-- close current window
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close current window' })
-- close and ignore save
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'Close current window and ignore save' })

-- Close current buffer with leader cc
vim.keymap.set('n', '<leader>cc', ':bd<CR>', { desc = 'Close current buffer' })

-- vim tmux navigation remappings
vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', { desc = 'Navigate left' })
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', { desc = 'Navigate down' })
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', { desc = 'Navigate up' })
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { desc = 'Navigate right' })

-- Remap DVORAK to QWERTY if using DVORAK
if vim.o.keymap == 'dvorak' then
    -- Remap navigation keys to QWERTY
    vim.keymap.set('n', 'h', 'j', { desc = 'Navigate left' })
    vim.keymap.set('n', 'j', 'k', { desc = 'Navigate down' })
    vim.keymap.set('n', 'k', 'i', { desc = 'Navigate up' })
    vim.keymap.set('n', 'l', 'l', { desc = 'Navigate right' })
end

-- Git remaps
vim.keymap.set('n', '<leader>gs', ':G<CR>', { desc = 'Git status' })
vim.keymap.set('n', '<leader>ga', ':G add %<CR>', { desc = 'Git add current file' })
vim.keymap.set('n', '<leader>gA', ':G add .<CR>', { desc = 'Git add all files' })
vim.keymap.set('n', '<leader>gc', ':G commit<CR>', { desc = 'Git commit' })
-- Push to current branch
vim.keymap.set('n', '<leader>gp', ':G push origin HEAD<CR>', { desc = 'Git push' })
vim.keymap.set('n', '<leader>gd', ':G diff<CR>', { desc = 'Git diff' })
vim.keymap.set('n', '<leader>gl', ':G log<CR>', { desc = 'Git log' })
vim.keymap.set('n', '<leader>gf', ':G fetch<CR>', { desc = 'Git fetch' })
vim.keymap.set('n', '<leader>gF', ':G pull origin HEAD<CR>', { desc = 'Git pull' })
vim.keymap.set('n', '<leader>gS', ':G stash<CR>', { desc = 'Git stash' })

-- Create and checkout branch
vim.keymap.set('n', '<leader>gbn', ':G checkout -b ', { desc = 'Git create and checkout branch' })
vim.keymap.set('n', '<leader>gbc', ':G checkout ', { desc = 'Git checkout branch' })
vim.keymap.set('n', '<leader>gbl', ':G branch -l<CR>', { desc = 'Git list branches' })
vim.keymap.set('n', '<leader>gbb', ':G blame<CR>', { desc = 'Git blame' })

-- Obsidian keymaps
vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', { desc = 'Create new note' })
vim.keymap.set('n', '<leader>oo', ':ObsidianOpen<CR>', { desc = 'Open note' })
-- Obsidian links
vim.keymap.set('n', '<leader>olf', ':ObsidianFollowLink<CR>', { desc = 'Follow obsidian link' })
vim.keymap.set('n', '<leader>olb', ':ObsidianBacklinks<CR>', { desc = 'Get references' })
vim.keymap.set('n', '<leader>or', ':ObsidianRename<CR>', { desc = 'Rename note' })
vim.keymap.set('n', '<leader>od', ':ObsidianToday<CR>', { desc = 'Open daily note' })
vim.keymap.set('n', '<leader>os', ':ObsidianSearch<CR>', { desc = 'Search note' })
vim.keymap.set('n', '<leader>ot', ':ObsidianTemplate<CR>', { desc = 'Use template' })
