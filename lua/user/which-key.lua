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
