-- Enable line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse support
vim.o.mouse = "a"

-- Set tab and indentation settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Auto-indentation
vim.o.autoindent = true

-- Enable syntax highlighting
vim.cmd('syntax on')
vim.cmd('inoremap {<cr> {<cr>}<c-o>O')

-- Set the shell environment for Neovim
vim.env.BASH_ENV = "~/.vim_bash_env"
vim.o.shellcmdflag = "-ic"

-- Set Python executable paths
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.python2_host_prog = '/usr/bin/python3'
-- Additional Neovim-specific configurations
--
-- Set leader key to space
vim.g.mapleader = ' '

-- Compile C++ program with C++20
vim.api.nvim_exec([[
    autocmd FileType cpp nnoremap <F5> :w<CR>:!g++ -std=c++20 % -o %< && ./%<CR>
]], false)

-- Copy entire file content to clipboard
vim.api.nvim_set_keymap('n', '<C-A-C>', [[:normal! ggVG"+y<CR>]], { noremap = true, silent = true })

-- Toggle NERDTree with F6
vim.api.nvim_set_keymap('n', '<F6>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Disable Copilot with F7
--vim.api.nvim_set_keymap('n', '<F7>', ':Copilot disable<CR>', { noremap = true, silent = true })

-- Map F7 to toggle Copilot
vim.api.nvim_set_keymap('n', '<F7>', ':lua ToggleCopilot()<CR>', { noremap = true, silent = true })

-- Generate closing tag in HTML
vim.api.nvim_set_keymap('n', '<silent> <C-c>', '</<C-X><C-O><C-X>', { noremap = true, silent = true })

-- Map Tab key in visual mode to >gv
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Map Shift+Tab key in visual mode to <gv
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })


