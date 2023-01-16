vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { 'tailwindcss' })

require('lspconfig').tailwindcss.setup({
  root_dir = require('lspconfig.util').root_pattern('.git'),
  flags = { allow_incremental_sync = true, debounce_text_changes = 500 },
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          { 'classed(?:\\.\\w*)?\\(([^)]*)\\)', '["\'`]([^"\'`]*).*?["\'`]' },
          { 'clsx\\(([^)]*)\\)', "(?:'|\"|`)([^']*)(?:'|\"|`)" },
          '(?:[a-z]ClassName)=\\s*(?:"|\')([^(?:"|\')]*)',
        },
      },
    },
  },
})
