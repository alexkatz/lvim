lvim.log.level = 'info'

lvim.format_on_save = true
vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll ]])

lvim.colorscheme = 'arctic'

lvim.builtin.breadcrumbs.active = true
lvim.builtin.terminal.active = true
lvim.builtin.treesitter.matchup.enable = true
lvim.builtin.nvimtree.setup.view.side = 'left'

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true

vim.opt.list = true
vim.opt.listchars = 'space:·'
vim.opt.fillchars = 'diff:╱'
vim.opt.showtabline = 0
vim.opt.timeoutlen = 500

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cmdheight = 1

vim.opt.laststatus = 3
