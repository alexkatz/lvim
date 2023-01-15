lvim.keys.normal_mode['<S-l>'] = '<Cmd>BufferLineCycleNext<CR>'
lvim.keys.normal_mode['<S-h>'] = '<Cmd>BufferLineCyclePrev<CR>'

lvim.builtin.which_key.mappings.o = {
  name = 'Only',
  w = { '<Cmd>only<CR>', 'Window' },
  b = { '<Cmd>BufferLineCloseLeft<CR> <Cmd>BufferLineCloseRight<CR>', 'Buffer' },
}
