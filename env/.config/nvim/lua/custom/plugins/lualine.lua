return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'nightfly',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        {
          'buffers',
          mode = 2,
          buffers_color = {
            -- Same values as the general color option can be used here.
            active = 'lualine_a_insert', -- Color for active buffer.
            inactive = 'lualine_a_inactive', -- Color for inactive buffer.
          },
          symbols = {
            modified = ' ●', -- Text to show when the buffer is modified
            alternate_file = '', -- Text to show to identify the alternate file
            directory = '', -- Text to show when the buffer is a directory
          },
        },
      },
      lualine_c = { 'branch', 'diff', 'diagnostics' },
      lualine_x = { 'lsp_status', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
