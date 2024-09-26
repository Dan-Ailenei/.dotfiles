-- Vue language options (volar)
print(require('lspconfig').volar)
require('lspconfig').volar.setup ({
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' }
})

