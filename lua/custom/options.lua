-- ----------------------------------------------------
-- ----------------------------------------------------
-- My Custom Settings
-- Change default config options
-- ----------------------------------------------------
-- ----------------------------------------------------
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
-- edited the original init.lua file
-- vim.g.mapleader = '\\'
-- vim.g.maplocalleader = '\\'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- ----------------------------------------------------
-- ----------------------------------------------------
-- Isto está no ficheiro init.lua. Caso não seja para manter será necessário
-- comentar o vim.opt.clipboard para a função ficar vazia
-- ----------------------------------------------------
-- ----------------------------------------------------
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.opt.clipboard = 'unnamedplus'
-- end)

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- ----------------------------------------------------
-- ----------------------------------------------------
-- My Custom Settings
-- Complementing default config
-- ----------------------------------------------------
-- ----------------------------------------------------
vim.opt.title = true
vim.opt.sidescrolloff = 8
vim.opt.laststatus = 3 -- global statusline
vim.opt.fillchars = { eob = ' ' }
vim.opt.mousehide = true
vim.opt.termguicolors = true
-- Intentation --
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.smartindent = true
-- Numbers --
vim.opt.numberwidth = 2
vim.opt.ruler = false
-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append '<>[]hl'

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
--
vim.opt.rnu = true
-- ------------------
