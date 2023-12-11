return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim"},
    config = function ()
        require('neorg').setup({
            load = {
                ["core.defaults"] = {},
                ["core.export"] = {},
                ["core.concealer"] = {},
                ["core.summary"] = {},
                ["core.completion"] = {
                    config = {
                        engine = "nvim-cmp"
                    }
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            work = "~/notes/work",
                            home = "~/notes/home",
                        }
                    }
                }
            }
        })
    end
}
