require "basiccommands"
require "lazyplugins"
require "colorscheme"

-- Enable true color support
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require("feline").setup()


