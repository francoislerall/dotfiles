return {
  {
    'sindrets/diffview.nvim',
    event = 'VimEnter',
    config = function()
      local diffview = require 'diffview'

      vim.keymap.set('n', '<leader>gd', diffview.open, { desc = 'Open [G]it [D]iffview' })
    end,
  },
}
