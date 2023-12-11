return {
    "theHamsta/nvim-dap-virtual-text",
    opts = {
        enabled = true,
        enabled_commands = true,
        highlight_changed_variables = true,
        highlight_new_as_changed = true,
        show_stop_reason = true,
        commented = vim.fn.has("nvim-0.10") ~= 1,
        only_first_definition = true,
        all_references = true,
        display_callback = function(variable, buf, stackframe, node, options)
            if options.virt_text_pos == "inline" then
                return " = " .. string.sub(variable.value, 1, 15)
            else
                return variable.name .. " = " .. variable.value
            end
        end,
        virt_text_pos = "eol", -- vim.fn.has("nvim-0.10") == 1 and "inline" or "eol",

        -- experimental features
        all_frames = false, -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
        virt_lines = false, -- show virtual lines instead of virtual text (will flicker!)
        virt_text_win_col = nil, -- position the virtual text at a fixed window column (starting from the first text column) ,
    }
}
