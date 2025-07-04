return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰮗  Find File", ":Telescope find_files <CR>"),
			dashboard.button("n", "  New File", ":enew<CR>"),
			dashboard.button("e", "󰙅  Open Oil", "<Cmd>Oil<CR>"),
			dashboard.button("t", "󱄽  Find Text", ":Telescope live_grep <CR>"),
			dashboard.button("d", "󰂺  Open Journal", ":Neorg journal today <CR>"),
			dashboard.button("i", "󰧑  Open Index", ":Neorg index <CR>"),
			dashboard.button("c", "  Configuration", ":cd ~/.config/nvim | e init.lua<CR>"),
			dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
		}
		dashboard.config.layout = {
			{ type = "padding", val = 13 },
			dashboard.section.header,
			{ type = "padding", val = 5 },
			dashboard.section.buttons,
			{ type = "padding", val = 5 },
		}
		dashboard.section.header.opts = {
			hl = "AlphaHeader",
			position = "center",
		}
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#2BC6FF", bold = true })
		alpha.setup(dashboard.opts)
	end,
}
