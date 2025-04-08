-- UndoTree
return {
  'jiaoshijie/undotree',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>u', '<cmd>lua require("undotree").toggle()<cr>', desc = 'UndoTree' },
  },
  config = function()
    vim.g.undotree_DiffCommand = 'FC'
    require('jiaoshijie/undotree').setup {
      float_diff = true, -- using float window previews diff, set this `true` will disable layout option
      layout = 'left_bottom', -- "left_bottom", "left_left_bottom"
      ignore_filetype = { 'Undotree', 'UndotreeDiff', 'qf', 'TelescopePrompt', 'spectre_panel', 'tsplayground' },
      window = {
        winblend = 30,
      },
      keymaps = {
        ['j'] = 'move_next',
        ['k'] = 'move_prev',
        ['J'] = 'move_change_next',
        ['K'] = 'move_change_prev',
        ['<cr>'] = 'action_enter',
        ['p'] = 'enter_diffbuf',
        ['q'] = 'quit',
      },
    }
  end,
}
