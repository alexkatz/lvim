lvim.builtin.telescope.defaults.file_ignore_patterns = {
  '.git/',
  '%.lock',
  'node_modules/',
  '%.jpg',
  '%.jpeg',
  '%.png',
  '%.svg',
  '%.otf',
  '%.ttf',
  '%.webp',
  '.dart_tool/',
  '.vscode/',
  'build/',
  'env/',
  'gradle/',
  '%.cache',
  '.yarn/',
}

lvim.builtin.telescope.pickers.buffers.initial_mode = 'insert'

lvim.builtin.telescope.defaults.layout_config = {
  center = { width = 0.50 },
}

local actions = require('telescope.actions')
lvim.builtin.telescope.defaults.mappings = {
  i = {
    ['<esc>'] = actions.close,
    ['<C-j>'] = actions.move_selection_next,
    ['<C-k>'] = actions.move_selection_previous,
    ['<CR>'] = actions.select_default,
  },
}

require('telescope').load_extension('ui-select')
require('telescope').load_extension('undo')

lvim.builtin.which_key.mappings.s.u = { '<Cmd>Telescope undo<CR>', 'Undo Tree' }
