vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { 'eslint' })

require('lspconfig').eslint.setup({
  root_dir = require('lspconfig.util').root_pattern('.git'),
  flags = { allow_incremental_sync = true, debounce_text_changes = 500 },
})
