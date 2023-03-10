local mason_path = vim.fn.glob(vim.fn.stdpath('data') .. '/mason/')
local codelldb_adapter = {
  type = 'server',
  port = '${port}',
  executable = {
    command = mason_path .. 'bin/codelldb',
    args = { '--port', '${port}' },
  },
}

local dap = require('dap')
dap.adapters.codelldb = codelldb_adapter
dap.configurations.rust = {
  {
    name = 'Launch file',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = function()
      local argument_string = vim.fn.input('Program arguments: ')
      return vim.fn.split(argument_string, ' ', true)
    end,
  },
}
