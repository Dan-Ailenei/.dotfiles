require('lspconfig').gopls.setup {
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    settings = {
        gopls = {
            usePlaceholders = true,
            analyses = {
                shadow=true,
                unusedparams=true,
            },
        }
    }
}
