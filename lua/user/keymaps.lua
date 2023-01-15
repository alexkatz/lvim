lvim.leader = 'space'
vim.leader = 'space'

-- centers cursor on page up or page down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- centers cursor on next/prev search
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- exit insert mode in terminal
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- delete now for use with github copilot plugin
vim.keymap.del('i', 'M-j')
vim.keymap.del('i', 'M-k')

lvim.builtin.which_key.mappings.v = { '<C-w>v', 'Vertical split' }

lvim.builtin.which_key.vmappings.h = { [[y:let @/=expand("<C-R>"") <bar> :set hls <CR>]], 'Highlight visual text' }
