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
			"<leader>ts",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").treesitter()
			end,
			desc = "[T]ree[S]itter",
		},
        {
			"<leader>bs",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			desc = "[B]uffer [S]earch",
		},

        -- git
		{
			"<leader>gb",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").git_branches()
			end,
			desc = "[G]it [B]ranches",
		},

        {
			"<leader>gS",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").git_status()
			end,
			desc = "[G]it [S]tatus",
		},

        -- lsp related
        {
			"<leader>sr",
			mode = { "n", "x", "o" },
			function()
				require("telescope.builtin").lsp_references()
			end,
			desc = "[S]earch [R]eferences",
		},

	},
}
