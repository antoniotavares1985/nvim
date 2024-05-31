return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = {
	close_if_last_window = true,
	hijack_netrw_behavior = "open_current",
	window = {
          position = "right"
    	},
	git_status = {
          window = {
            position = "float",
            mappings = {
              ["<c-g>A"] = "git_add_all",
              ["<c-g>u"] = "git_unstage_file",
              ["<c-g>a"] = "git_add_file",
              ["<c-g>r"] = "git_revert_file",
              ["<c-g>c"] = "git_commit",
              ["<c-g>p"] = "git_push",
              ["<c-g>g"] = "git_commit_and_push",
      	    }
      	  }
    	}
    }
}

