
local mason = require("mason")
mason.setup {}

local coq = require("coq")

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup {
    handlers = {
        function(server_name)
            local lspconfig = require("lspconfig")
            lspconfig[server_name].setup {
                on_attach = function(client, bufnr)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { bufnr = bufnr, noremap = true })
                end,
                capabilities = coq.lsp_ensure_capabilities(),
            }
        end
    }
}

coq.Now()
