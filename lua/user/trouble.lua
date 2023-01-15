require('trouble').setup({})

lvim.builtin.which_key.mappings.t = {
  name = 'Diagnostics',
  t = { '<Cmd>TroubleToggle<CR>', 'Trouble' },
  w = { '<Cmd>TroubleToggle workspace_diagnostics<CR>', 'Workspace' },
  d = { '<Cmd>TroubleToggle document_diagnostics<CR>', 'Document' },
  q = { '<Cmd>TroubleToggle quickfix<CR>', 'Quickfix' },
  l = { '<Cmd>TroubleToggle loclist<CR>', 'Loclist' },
  r = { '<Cmd>TroubleToggle lsp_references<CR>', 'References' },
}
