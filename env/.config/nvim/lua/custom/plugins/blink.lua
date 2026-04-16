-- Autocompletion
-- Disabled supermaven for work, so commented out
return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = '2.*',
      build = (function()
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      dependencies = {
        {
          'rafamadriz/friendly-snippets',
          config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
          end,
        },
      },
      opts = {},
    },
    'folke/lazydev.nvim',
    -- {
    --   'supermaven-inc/supermaven-nvim',
    --   opts = {
    --     disable_inline_completion = true, -- disables inline completion for use with cmp
    --     disable_keymaps = true, -- disables built in keymaps for more manual control
    --   },
    -- },
    -- {
    --   'huijiro/blink-cmp-supermaven',
    -- },
  },
  --- @module 'blink.cmp'
  --- @type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
    },

    appearance = {
      nerd_font_variant = 'mono',
    },

    completion = {
      -- By default, you may press `<c-space>` to show the documentation.
      -- Optionally, set `auto_show = true` to show the documentation after a delay.
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },

    sources = {
      -- default = { 'lsp', 'path', 'snippets', 'lazydev', 'supermaven' },
      default = { 'lsp', 'path', 'snippets', 'lazydev' },
      providers = {
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        -- supermaven = {
        --   name = 'supermaven',
        --   module = 'blink-cmp-supermaven',
        --   async = true,
        -- },
      },
    },

    snippets = { preset = 'luasnip' },
    fuzzy = { implementation = 'lua' },
    signature = { enabled = true },
  },
}
