return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[F]ind [F]iles" },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "[F]ind [S]tring" },
		{ "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "[G]it [F]iles" },
	},
}
