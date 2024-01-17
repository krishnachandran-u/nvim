local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "feline-nvim/feline.nvim",
    {
	    "L3MON4D3/LuaSnip",
	    -- follow latest release.
	    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	    -- install jsregexp (optional!).
	    build = "make install_jsregexp"
    },

    --"honza/vim-snippets",

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
        "nvim-tree/nvim-web-devicons",
        },
        config = function()
        require("nvim-tree").setup {}
        end,
    },

    --"SirVer/ultisnips",
    "github/copilot.vim",
    "pangloss/vim-javascript",
    "elzr/vim-json",
    "mxw/vim-jsx",
    "mattn/emmet-vim",
    'alvan/vim-closetag',
})


