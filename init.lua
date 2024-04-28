require "essentials"
require "lazyplugins"
--require "packerPlugins"
require "colorscheme"
require "nvimtree"
require "ultisnips"
require "copilot"
require "clipboard"
require "toggletermconfig"
require "snippets"
require "mason-lsp"
require "completion"
--require "nvimcmp"

--require "telescope" checkhealth is not working

-- Enable true color support
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require("feline").setup()


