local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup({
  {
    command = 'prettierd',
    filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact', 'vue', 'svelte' },
  },
  {
    command = 'stylua',
    filetypes = { 'lua' },
  },
  {
    command = 'rustywind',
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'svelte', 'html' },
  },
  {
    command = 'rustfmt',
    fileTypes = { 'rust' },
  },
  {
    command = 'beautysh',
    fileTypes = { 'bash', 'csh', 'ksh', 'sh', 'zsh' },
  },
  {
    command = 'yamlfmt',
    fileTypes = { 'yaml' },
  },
})
