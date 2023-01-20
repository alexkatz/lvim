reload('user.lsp.languages.rust')
reload('user.lsp.languages.typescript')
reload('user.lsp.languages.eslint')

-- remove all snippets
local filtered_sources = {}
for _, source in ipairs(lvim.builtin.cmp.sources) do
  if source.name ~= 'luasnip' then
    table.insert(filtered_sources, source)
  end
end

lvim.builtin.cmp.sources = filtered_sources

-- <C-L> also selects completion
lvim.builtin.cmp.mapping['<C-L>'] = lvim.builtin.cmp.mapping['<C-Y>']

-- disable virtual text in buffers
lvim.lsp.diagnostics.virtual_text = false

-- show diagnostic float under cursor
lvim.builtin.which_key.mappings.l.h = {
  '<cmd>lua vim.diagnostic.open_float(nil, { focus = false })<CR>',
  'Show diagnostics',
}

-- restart LSP
lvim.builtin.which_key.mappings.l.R = {
  '<cmd>LspRestart<CR>',
  'Restart LSP',
}
