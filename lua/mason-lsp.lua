require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "pyright" },
})

require("lspconfig").clangd.setup {}
require("lspconfig").pyright.setup {}
