return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ['yp'] = {
        desc = 'Copy relative filepath to system clipboard',
        callback = function()
          local oil = require 'oil'
          local entry = oil.get_cursor_entry()
          if not entry then
            return
          end
          local dir = oil.get_current_dir()
          if not dir then
            return
          end
          local full = vim.fs.joinpath(dir, entry.name)
          local rel = vim.fn.fnamemodify(full, ':.')
          vim.fn.setreg('+', rel)
          vim.notify('Copied: ' .. rel)
        end,
      },
    },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
