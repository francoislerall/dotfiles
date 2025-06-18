return {
  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        virtual_text = {
          enabled = true,
          key_bindings = {
            -- Accept the current completion.
            accept = '<C-J>',
            -- Accept the next word.
            accept_word = false,
            -- Accept the next line.
            accept_line = false,
            -- Clear the virtual text.
            clear = '<C-K>',
            -- Cycle to the next completion.
            next = '<C-L>',
            -- Cycle to the previous completion.
            prev = '<C-H>',
          },
        },
      }
    end,
  },
}
