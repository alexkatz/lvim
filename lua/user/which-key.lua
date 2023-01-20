-- leader v for quick vertical split
lvim.builtin.which_key.mappings.v = { '<C-w>v', 'Vertical Split' }

-- press leader h in visual mode to engage a search with highlighted text
-- needs a bit of work to escape certain characters properly
lvim.builtin.which_key.vmappings.h = { [[y:let @/=fnameescape("<C-R>"") <bar> :set hls <CR>]], 'Search visual text' }

-- leader w or b to eliminate all but current window or buffer
lvim.builtin.which_key.mappings.o = {
  name = '+Only',
  w = { '<Cmd>only<CR>', 'Make only window' },
  b = { '<Cmd>BufferLineCloseLeft<CR> <Cmd>BufferLineCloseRight<CR>', 'Make only buffer' },
}

lvim.builtin.which_key.mappings.W = {
  '<Cmd>wa<CR>',
  'Save All Buffers',
}

--  open specre workspace search
lvim.builtin.which_key.mappings.s.s = {
  "<Cmd>lua require('spectre').open()<CR>",
  'Spectre',
}

-- focus nvimtree explorer from any window
lvim.builtin.which_key.mappings.E = {
  '<cmd>NvimTreeFocus<CR>',
  'Focus Explorer',
}

-- open nvimtree explorer
lvim.builtin.which_key.mappings.u = { '<Cmd>UndotreeToggle<CR> <Cmd>UndotreeFocus<CR>', 'Undotree' }

-- diff view
local open_diff_view = function()
  vim.ui.input({ prompt = 'Diff working tree with branch (leave blank for development): ' }, function(branch_name)
    require('diffview').open(string.len(branch_name) == 0 and 'development' or branch_name)
  end)
end

lvim.builtin.which_key.mappings.g.d = {
  name = '+Diffview',
  d = { '<Cmd>DiffviewOpen<CR>', 'Open Diffview' },
  D = { open_diff_view, 'Enter branch' },
  c = { '<Cmd>DiffviewClose<CR>', 'Close Diffview' },
  f = { '<Cmd>DiffviewFileHistory %<CR>', 'File history' },
}

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

-- markdown preview
lvim.builtin.which_key.mappings.m = {
  name = 'Markdown',
  m = { '<Cmd>MarkdownPreviewToggle<CR>', 'Toggle Markdown Preview' },
}

-- telescope undo
lvim.builtin.which_key.mappings.s.u = { '<Cmd>Telescope undo<CR>', 'Undo Tree' }

-- trouble
lvim.builtin.which_key.mappings.t = {
  name = 'Diagnostics',
  t = { '<Cmd>TroubleToggle<CR>', 'Trouble' },
  w = { '<Cmd>TroubleToggle workspace_diagnostics<CR>', 'Workspace' },
  d = { '<Cmd>TroubleToggle document_diagnostics<CR>', 'Document' },
  q = { '<Cmd>TroubleToggle quickfix<CR>', 'Quickfix' },
  l = { '<Cmd>TroubleToggle loclist<CR>', 'Loclist' },
  r = { '<Cmd>TroubleToggle lsp_references<CR>', 'References' },
}
