-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- some LSPs go by obscure naming, feel free to figure it out on your own
local servers = { "html", "cssls", "clangd", "asm_lsp", "rust_analyzer", "cmake", "opencl_ls", "gopls", "pylyzer" }

-- deprecated lspconfig, long live vim.lsp
vim.lsp.enable(servers)
