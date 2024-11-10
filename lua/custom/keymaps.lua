-- ------------------
-- My Custom Keymaps
-- ------------------
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Diagnostic keymaps
-- This one exists in init.lua
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '«d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', '»d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

-- --- Keys in Insert Mode
vim.keymap.set('i', 'jj', '<esc>', { desc = 'Quick escape to normal mode' })
-- Easy insertion of a trailing ':', ';' or ',' from insert mode
vim.keymap.set('i', ':::', '<esc>A:<esc>', { desc = 'Easy insertion of a trailng :' })
vim.keymap.set('i', ';;', '<esc>A;<esc>', { desc = 'Easy insertion of a trailng ;' })
vim.keymap.set('i', ',,', '<esc>A,<esc>', { desc = 'Easy insertion of a trailng ,' })
-- navigate within insert mode
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Move left' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Move right' })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down' })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up' })

-- --- Keys in Normal Mode
-- Remap for dealing with word wrap
-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
vim.keymap.set('n', 'k', "v:count || mode(1)[0:1] == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Move Up' })
vim.keymap.set('n', 'j', "v:count || mode(1)[0:1] == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Move down' })
vim.keymap.set('n', '<Up>', "v:count || mode(1)[0:1] == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Move Up' })
vim.keymap.set('n', '<Down>', "v:count || mode(1)[0:1] == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Move down' })
-- Buffer Motion --
vim.keymap.set('n', '<tab>', ':bnext<CR>', { desc = 'Next [Tab]' })
vim.keymap.set('n', '<S-tab>', ':bprevious<CR>', { desc = 'Previous [Shift+Tab]' })
-- save
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { desc = '[Ctrl+s]ave file' })
-- Edit nvim configuration file
vim.keymap.set('n', '<leader>ve', ':edit ~/.config/nvim/init.lua<CR>', { desc = '[v] [e]dit .config/nivm/init.lua file' })
-- Source nvim configuration file to reflect changes
vim.keymap.set('n', '<leader>vr', ':source ~/.config/nvim/init.lua<CR>', { desc = 'Reload init.lua to reflect changes' })
-- Allow "\op" to open non-existent files
vim.keymap.set('n', '<leader>op', ':edit <cfile><CR>', { desc = "[op]en a file, even if it's new" })
-- Coment word with ""
vim.keymap.set('n', '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel', { desc = 'Comment word with ["] brackets' })
-- Coment word with ''
vim.keymap.set('n', "<leader>'", "viw<esc>a'<esc>bi'<esc>lel", { desc = "Comment word with  ['] Plicas" })
-- Remove trailing White Spaces
vim.keymap.set('n', '<leader>ts', ':%s/\\s\\+$//<CR>', { desc = 'Clean [t]railing [s]paces' })
-- Close a buffer
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = 'Close a buffer' })

-- VISUAL MODE
-- Reselect visual selection after indenting
vim.keymap.set('v', '<', '<gv', { desc = '[<] Indent and Maintain selection' })
vim.keymap.set('v', '>', '>gv', { desc = '[>] Indent and Maintain selection' })
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y', { desc = '[y]ank and keep position' })
vim.keymap.set('v', 'Y', 'myY`y', { desc = '[Y]ank and keep position' })
-- Coment selection with ""
vim.keymap.set('v', '<leader>"', ':normal! `>a"<esc>`<i"<esc>`>el', { desc = 'Comment word with ["] brackets' })
-- Coment selection with ''
vim.keymap.set('v', "<leader>'", ":normal! `>a'<esc>`<i'<esc>`>el", { desc = "Comment word with  ['] Plicas" })

--vim.keymap.set('v', '<Up>', 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { desc = 'Move up', expr = true })
--vim.keymap.set('v', '<Down>', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { desc = 'Move down', expr = true })

-- Make Y behave like the other capitals
-- vim.keymap.set("n", "Y", "y$", { desc = "[Y]ank until the end of the line" })
--
-- Mode X
-- Don't copy the replaced text after pasting in visual mode
-- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
vim.keymap.set('x', "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { desc = "Dont copy replaced text", silent = true })

-- more keybinds!
local pygroup = vim.api.nvim_create_augroup('PythonOnly', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.py',
  command = vim.cmd ":nnoremap <buffer> <leader>cc mm}k^m1{j<C-v>'1:normal! I#<esc>'ml",
  group = pygroup,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.py',
  command = vim.cmd ":nnoremap <buffer> <leader>c mm}k^m1{j<C-v>'1:normal! I#<esc>'ml",
  group = pygroup,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.py',
  command = vim.cmd ":map <buffer> <F5> :w<CR>:FloatermNew --autoclose=0 python3 '%'<CR>",
  group = pygroup,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.py',
  command = vim.cmd ":imap <buffer> <F5> <esc>:w<CR>:FloatermNew --autoclose=0 python3 '%'<CR>",
  group = pygroup,
})

-- " To have Vim jump to the last position when reopening a file
vim.api.nvim_create_autocmd('BufReadPost', { command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]] })

-- ------------------

