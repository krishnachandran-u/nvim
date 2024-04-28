require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "pyright" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup {
    capabilities = capabilities,
}
require("lspconfig").pyright.setup {
    capabilities = capabilities,
}
