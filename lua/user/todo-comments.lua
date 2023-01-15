require('todo-comments').setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
})

lvim.builtin.which_key.t = {
  s = { '<Cmd>TodoTelescope<CR>', 'Search TODO comments' },
  o = { '<Cmd>TodoTrouble<CR>', 'Trouble TODO' },
}
