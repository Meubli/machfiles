
return {
	'akinsho/toggleterm.nvim',
        config = true,
        opts = {
                size = 20,
                hide_numbers = true,
                direction = 'float',
                start_in_insert = true,
                shade_terminals = true,
                shading_factor = 2,
                shell = vim.o.shell,
                insert_mappings = true,
                float_opts = {
                        border = 'curved',
                        winblend = 0
                }
        }
}
