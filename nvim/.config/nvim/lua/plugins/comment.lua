return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    config = function () 
        require('Comment').setup(
            {
                ignore = '^$',
                toggler = {
                    line = '<C-:>',
                    block = '<C-:>',
                },
                opleader = {
                    line = '<leader>c',
                    block = '<leader>b',
                },

            })
    end,
    lazy = false
}
