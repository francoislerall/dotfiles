return {
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      -- Keybindings
      local map = vim.keymap.set

      map('n', '<leader><leader>a', function()
        harpoon:list():add()
      end, { desc = '[H]arpoon [A]dd' })
      map('n', '<leader><leader>e', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = '[H]arpoon [E]xplore' })
      map('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = '[H]arpoon [1] mark' })
      map('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = '[H]arpoon [2] mark' })
      map('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = '[H]arpoon [3] mark' })
      map('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = '[H]arpoon [4] mark' })
    end,
  },
}
