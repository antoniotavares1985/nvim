return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = {
		close_if_last_window = true,
		hijack_netrw_behavior = "open_current",
		window = {
			position = "right"
		},
		window = {
			position = "right",
			mapping_options = {
				noremap = true,
				nowait = true,
			},
		}
	}
}

