return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        'sharkdp/fd',
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles" },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "[F]ind [S]tring" },
		{ "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "[G]it [F]iles" },
		{ "<leader>lb", "<cmd>Telescope buffers<cr>", desc = "[L]ist [B]uffers " },
	},
    config = function()
        require('telescope').setup({
            defaults = {
                layout_strategy = "vertical",
                    layout_config = {
                        width = 0.8
                    }
                }
            }
        )
    end
}
