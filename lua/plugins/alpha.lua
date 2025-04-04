return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[-----------------------------------------------------------------------]],
			[[| ██████   █████                   █████   █████  ███                 |]],
			[[|░░██████ ░░███                   ░░███   ░░███  ░░░                  |]],
			[[| ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████  |]],
			[[| ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███ |]],
			[[| ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███ |]],
			[[| ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███ |]],
			[[| █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████|]],
			[[|░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░ |]],
			[[-----------------------------------------------------------------------]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰮗  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "󰙅  Open file tree", "<Cmd>Neotree toggle<CR>"),
			dashboard.button("t", "󱄽  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", "  Configuration", ":cd ~/.config/nvim | e init.lua<CR>"),
			dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
		}
		dashboard.section.header.opts = {
			hl = "AlphaHeader",
			position = "center",
		}
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#2BC6FF", bold = true })
		alpha.setup(dashboard.opts)
		vim.keymap.set("n", "<leader>a", "<Cmd>Alpha<CR>")
	end,
}
