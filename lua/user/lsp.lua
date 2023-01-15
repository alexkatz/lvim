vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { 'tailwindcss', 'eslint', 'tsserver' })

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

require('lspconfig').tsserver.setup({
  root_dir = require('lspconfig.util').root_pattern('.git'),
  flags = { allow_incremental_sync = true, debounce_text_changes = 500 },
})

require('lspconfig').eslint.setup({
  root_dir = require('lspconfig.util').root_pattern('.git'),
  flags = { allow_incremental_sync = true, debounce_text_changes = 500 },
})

-- remove all snippets
local filtered_sources = {}
for _, source in ipairs(lvim.builtin.cmp.sources) do
  if source.name ~= 'luasnip' then
    table.insert(filtered_sources, source)
  end
end

lvim.builtin.cmp.sources = filtered_sources
