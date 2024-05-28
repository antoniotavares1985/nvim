return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 
      'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>ff', "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles"},
        { '<leader>fg', "<cmd>Telescope live_grep<cr>", desc = "[F]ind [G]rep"},
    },
}
