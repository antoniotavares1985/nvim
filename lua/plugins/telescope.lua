return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>ff",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "[F]ind [F]iles",
		},
		{
			"<leader>fs",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "[F]ind [S]tring",
		},
		{
			"<leader>fb",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "[F]ind [B]uffers",
		},
		{
			"<leader>gb",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").git_branches()
			end,
			desc = "[G]it [B]ranches",
		},
		{
			"<leader>ts",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").treesitter()
			end,
			desc = "[T]ree[S]itter",
		},
	},
}
