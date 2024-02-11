local copilot_on = true

vim.api.nvim_create_user_command("CopilotToggle", function()
    if copilot_on then
        vim.cmd("Copilot disable")
        print("Copilot disabled")
    else
        vim.cmd("Copilot enable")
        print("Copilot enabled")
    end
    copilot_on = not copilot_on
end, { nargs = 0 })

vim.api.nvim_set_keymap("", "<F7>", ":CopilotToggle<CR>", { noremap = true, silent = true })

