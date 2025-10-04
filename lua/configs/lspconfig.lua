-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "asm_lsp", "rust_analyzer", "cmake", "opencl_ls", "gopls" }
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.jdtls.setup {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
    settings = {
        -- your personal jdtls preferences
    },
}

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end
