-- leader v for quick vertical split
lvim.builtin.which_key.mappings.v = { '<C-w>v', 'Vertical Split' }

-- press leader h in visual mode to engage a search with highlighted text
-- needs a bit of work to escape certain characters properly
lvim.builtin.which_key.vmappings.h = { [[y:let @/=fnameescape("<C-R>"") <bar> :set hls <CR>]], 'Search visual text' }
