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
vim.api.nvim_set_keymap('n', '<F6>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })


