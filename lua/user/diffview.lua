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
