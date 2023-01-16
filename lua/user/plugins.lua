lvim.plugins = {
  -- vscode dark+ color schemes
  'lunarvim/darkplus.nvim',
  { 'alexkatz/arctic.nvim', requires = { 'rktjmp/lush.nvim' } },

  -- rainbow braces, brackets
  'p00f/nvim-ts-rainbow',

  -- git diff view
  'sindrets/diffview.nvim',

  -- zip support for .yarn
  'lbrayner/vim-rzip',

  -- auto complete html,jsx tags
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  -- nvim-dap configs on a per-project basis
  {
    'ldelossa/nvim-dap-projects',
    config = function() end,
  },

  -- view undo history
  'mbbill/undotree',

  -- surround motions
  'tpope/vim-surround',

  -- treesitter playground
  {
    'nvim-treesitter/playground',
    event = 'BufRead',
  },

  -- typescript
  'jose-elias-alvarez/typescript.nvim',

  -- f,t motion
  {
    'jinh0/eyeliner.nvim',
    config = function()
      require('eyeliner').setup({
        highlight_on_key = true,
      })
    end,
  },

  -- highlight colors directly in terminal
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({ '*' }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  -- % key to navigate across scopes
  {
    'andymass/vim-matchup',
    setup = function()
      vim.g.matchup_matchparen_offscreen = { method = 'popup' }
    end,
  },

  -- general purpose motion
  'ggandor/leap.nvim',

  -- markdown browser preview
  {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    setup = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },

  -- better quickfix window
  'kevinhwang91/nvim-bqf',

  -- sets vim.ui.select to telescope,
  -- so things like lint and code actions appear in telescope
  { 'nvim-telescope/telescope-ui-select.nvim' },

  -- search undo tree in telescope
  { 'debugloop/telescope-undo.nvim' },

  -- diagnostics, references
  {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    cmd = 'TroubleToggle',
  },

  -- kitty config highlighting
  'fladson/vim-kitty',

  -- search and replace
  {
    'windwp/nvim-spectre',
    event = 'BufRead',
    config = function()
      require('spectre').setup()
    end,
  },

  -- manage TODO and similar comments
  {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
  },

  -- github copilot
  {
    'zbirenbaum/copilot.lua',
    event = { 'VimEnter' },
    config = function()
      vim.defer_fn(function()
        require('copilot').setup({
          plugin_manager_path = get_runtime_dir() .. '/site/pack/packer',
          suggestion = {
            enabled = true,
            auto_trigger = true,
            debounce = 75,
            keymap = {
              accept = '<M-l>',
              accept_word = '<M-.>',
              accept_line = false,
              next = '<M-j>',
              prev = '<M-k>',
              dismiss = '<C-h>',
            },
          },
        })
      end, 100)
    end,
  },
}
