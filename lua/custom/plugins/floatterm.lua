return {
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', '<F7>', ':FloatermNew<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('t', '<F7>', '<C-\\><C-n>:FloatermNew<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('n', '<F8>', ':FloatermPrev<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('t', '<F8>', '<C-\\><C-n>:FloatermPrev<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('n', '<F9>', ':FloatermNext<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('t', '<F9>', '<C-\\><C-n>:FloatermNext<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('n', '<F10>', ':FloatermToggle<CR>', { silent = true, desc = "New Floating terminal" })
        vim.keymap.set('t', '<F10>', '<C-\\><C-n>:FloatermToggle<CR> ', { silent = true, desc = "New Floating terminal" })
    end
}
