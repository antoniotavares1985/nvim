local name = {

	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[	                                                                                           ]],
	[[                                                                                             ]],
	[[                 /$$      /$$                                                                ]],
	[[                | $$$    /$$$                                                                ]],
	[[                | $$$$  /$$$$  /$$$$$$  /$$   /$$  /$$$$$$$  /$$$$$$                         ]],
	[[                | $$ $$/$$ $$ /$$__  $$| $$  | $$ /$$_____/ /$$__  $$                        ]],
	[[                | $$  $$$| $$| $$  \ $$| $$  | $$|  $$$$$$ | $$$$$$$$                        ]],
	[[                | $$\  $ | $$| $$  | $$| $$  | $$ \____  $$| $$_____/                        ]],
	[[                | $$ \/  | $$|  $$$$$$/|  $$$$$$/ /$$$$$$$/|  $$$$$$$                        ]],
	[[                |__/     |__/ \______/  \______/ |_______/  \_______/                        ]],
	[[                                                                                             ]],
	[[                                                                                             ]],
	[[                                                                                             ]],
	[[                                                                                             ]],
	[[ /$$      /$$                     /$$                                                        ]],
	[[| $$  /$ | $$                    | $$                                                        ]],
	[[| $$ /$$$| $$  /$$$$$$   /$$$$$$ | $$   /$$  /$$$$$$$  /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$ ]],
	[[| $$/$$ $$ $$ /$$__  $$ /$$__  $$| $$  /$$/ /$$_____/ /$$__  $$ |____  $$ /$$_____/ /$$__  $$]],
	[[| $$$$_  $$$$| $$  \ $$| $$  \__/| $$$$$$/ |  $$$$$$ | $$  \ $$  /$$$$$$$| $$      | $$$$$$$$]],
	[[| $$$/ \  $$$| $$  | $$| $$      | $$_  $$  \____  $$| $$  | $$ /$$__  $$| $$      | $$_____/]],
	[[| $$/   \  $$|  $$$$$$/| $$      | $$ \  $$ /$$$$$$$/| $$$$$$$/|  $$$$$$$|  $$$$$$$|  $$$$$$$]],
	[[|__/     \__/ \______/ |__/      |__/  \__/|_______/ | $$____/  \_______/ \_______/ \_______/]],
	[[                                                     | $$                                    ]],
	[[                                                     | $$                                    ]],
	[[                                                     |__/                                    ]],
	[[                                                                                             ]],
	[[                                                                                             ]],
	[[                                                                                             ]],
}

return {
	"goolord/alpha-nvim",
	-- event = "VeryLazy",
	-- lazy = true,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"rmagatti/auto-session",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.buttons.val = {
			dashboard.button("r", "󱀸 Restore session", "<cmd>SessionRestore<CR>"),
			dashboard.button("s", " Save Session", "<cmd>SessionSave<cr>"),
			dashboard.button("f", " Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("t", " Find text", "<cmd>Telescope live_grep<CR>"),
			-- dashboard.button('p', ""),
			dashboard.button("n", " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("o", " Recently opened files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("u", "󰚰 Update Plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", " Quit", ":qa<CR>"),
		}

		dashboard.section.header.val = name
		dashboard.section.footer.val = " Antonio Tavares"

		alpha.setup(dashboard.opts)
	end,
}
