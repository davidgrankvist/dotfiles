local nvim_lsp = require'lspconfig'

nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
nvim_lsp.pyright.setup({})
nvim_lsp.tsserver.setup({})
nvim_lsp.csharp_ls.setup({})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        update_in_insert = true,
    }
)
