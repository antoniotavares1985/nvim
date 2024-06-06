return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			hijack_netrw_behavior = "open_current",
			window = {
				position = "right",
				mapping_options = {
					noremap = true,
					nowait = false,
				},
			},
			git_status = {
				window = {
					position = "float",
					mappings = {
						["A"] = "git_add_all",
						["u"] = "git_unstage_file",
						["a"] = "git_add_file",
						["r"] = "git_revert_file",
						["c"] = "git_commit",
						["p"] = "git_push",
						["gg"] = "git_commit_and_push",
					},
				},
			},
		})
	end,
}
