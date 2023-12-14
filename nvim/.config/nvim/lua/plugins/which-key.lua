return { 'folke/which-key.nvim', opts = {},
    config = function()
        require('which-key').register({
            ['<leader>'] = {
                c = { vim.lsp.buf.code_action, '[c]ode action', },
                g = { name = '[g]it', {
                    G = { '<cmd>LazyGit<cr>', 'Lazy[G]it'}
                } },
                h = { name = 'More git', _ = 'which_key_ignore' },
                r = { vim.lsp.buf.rename, '[r]ename under cursor' },
                s = {
                    name = '[s]earch',
                    f = { require('telescope.builtin').find_files, '[f]iles' },
                    g = { require('telescope').extensions.live_grep_args.live_grep_args, '[g]rep'},
                    G = { require('telescope.builtin').git_files, '[G]it files'},
                    r = { require('telescope.builtin').resume, '[r]esume'},
                    d = { require('telescope.builtin').diagnostics, '[d]iagnostics'},
                    ['?'] = { require('telescope.builtin').help, '[?]help'},
                    o = { require('telescope.builtin').old_files, '[o]ld files (recent)'},
                    b = { require('telescope.builtin').buffers, 'existing [b]uffers'},
                },
                d = {
                    name = '[D]ebug',
                    b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle breakpoint" },
                    l = {
                        "<cmd>CMakeClose<cr><cmd>lua require'dap.ext.vscode'.load_launchjs()<cr><cmd>lua require'dap'.continue()<cr>",
                        "Launch debug session",
                    },
                    t = { "<cmd>lua require'dap'.terminate()<cr><cmd>lua require'dapui'.close()<cr>", "Terminate debug session" },

                },
                e = { "<cmd>NvimTreeToggle<cr>", 'toggle nvimtree'},
                t = { ':ToggleTerm<cr>', '[t]erminal'},
            },
            g = {
                name = "[g]oto",
                D = { vim.lsp.buf.declaration , "[D]eclaration"},
                d = { vim.lsp.buf.definition, '[d]efinition'},
                r = { require('telescope.builtin').lsp_references, '[r]eferences'},
                i = { require('telescope.builtin').lsp_implementations, '[i]mplementations'},
                t = { vim.lsp.buf.type_definition, '[t]pe definition'},
            },
            ['<C-q>'] = { vim.lsp.buf.signature_help, 'Signature Documentation' },
        })

    end
}
