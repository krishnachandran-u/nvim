require "basiccommands"
require "lazyplugins"
require "colorscheme"
require "nvimtree"

-- Enable true color support
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require("feline").setup()


