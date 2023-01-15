require('leap').add_default_mappings()

-- resetting my x keys back to normal rather than triggering leap
vim.keymap.set({ 'x', 'o' }, 'x', 'x', { noremap = true, silent = true })
vim.keymap.set({ 'x', 'o' }, 'X', 'X', { noremap = true, silent = true })
