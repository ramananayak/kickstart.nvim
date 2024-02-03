-- Unless you are still migrating, remove the deprecated commands from v1.x
-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
    "nvim-neo-tree/neo-tree.nvim",
    -- version = "*",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require('neo-tree').setup {}
    end,
    vim.keymap.set('n', '<leader>ne', '<Cmd>Neotree toggle<CR>', { desc = '[N]eoTree File [E]xplorer (cwd)' });
    vim.keymap.set('n', '<leader>ng', '<Cmd>Neotree git_status<CR>', { desc = '[N]eoTree [G]it Explorer' });
    vim.keymap.set('n', '<leader>nb', '<Cmd>Neotree buffers<CR>', { desc = '[N]eoTree [B]uffer Explorer' });
    vim.keymap.set('n', '<leader>nf', '<Cmd>Neotree focus<CR>', { desc = '[N]eoTree Explorer [F]ocus' });
    require('which-key').register {
      ['<leader>n'] = { name = '[N]eoTree', _ = 'which_key_ignore' },
    }
  }
