return {
    'akinsho/bufferline.nvim',
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                separator_style = "slant",
                indicator = {
                    style = 'underline',
                },
                show_close_icon = true,
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = {'close'}
                },
            },
            highlights = {
                indicator_visible = {
                    fg = '#aefe3e',
                    bg = '#f788af',
                },
                indicator_selected = {
                    fg = '#ae3e3e',
                    bg = '#7788af',
                },

            }
        })
    end
--    dependencies = 'nvim-tree/nvim-web-devicons'
}
