return {
	"chipsenkbeil/org-roam.nvim",
	tag = "0.1.1",
	dependencies = {
		{
			"nvim-orgmode/orgmode",
		},
	},
	config = function()
		require("org-roam").setup({
			directory = "~/Notes/Brain2/",
			org_files = {
				"~/Notes/Brain2/",
			},
		})
	end,
}
