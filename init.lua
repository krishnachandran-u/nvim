require "basicCommands"
require "lazyPlugins"
--require "packerPlugins"
require "colorScheme"
require "nvimTree"
require "ultiSnips"

-- Enable true color support
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require("feline").setup()


