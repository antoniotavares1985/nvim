return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 
      'nvim-lua/plenary.nvim',
    },
    default = {
	mappings = {
	  ["<leader>gs"] = "git_status"
	}
    }
}

