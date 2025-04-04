return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {

			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[                                   ]],
			[[          ▀████▀▄▄              ▄█ ]],
			[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
			[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
			[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
			[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
			[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
			[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
			[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
			[[   █   █  █      ▄▄           ▄▀   ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰮗  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "󰙅  Open file tree", "<Cmd>Neotree toggle<CR>"),
			dashboard.button("t", "󱄽  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", "  Configuration", ":cd ~/.config/nvim | e init.lua<CR>"),
			dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
		}
		alpha.setup(dashboard.opts)
		-- require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
}
