require("mason").setup()

local lsp_servers = {
    "clangd",
    "pyright", 
    "bashls", 
    "gopls",
    "dockerls",
    "docker_compose_language_service",
    "lua_ls"
}

require("mason-lspconfig").setup({
    ensure_installed = lsp_servers,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in ipairs(lsp_servers) do
    lspconfig[lsp].setup({ capabilities = capabilities })
end
