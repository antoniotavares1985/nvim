return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")

		wk.register({
			["<leader>"] = {
				f = { 
					name = "[F]ind",
				},
				g = {
					name = "[G]it",
					{
						i = {
							name = "g[I]t",
							{
								t = {
									name = "gi[T]",
								},
							},
						},
					},
				},
				h = {
					name = "[H]arpoon",
				},
				b = {
					name = "[B]uffer",
					{
						n = {
							"<cmd>bnext<cr>",
							"[B]uffer [N]ext",
						},
						p = {
							"<cmd>bprev<cr>",
							"[B]uffer [P]revious",
						},
					},
				},
			}, 
		})
	end
}
