return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
        local harpoon = require("harpoon")
        -- REQUIRED
        harpoon:setup()
        -- REQUIRED
        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
	end,
}
