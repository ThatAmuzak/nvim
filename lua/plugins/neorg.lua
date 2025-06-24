return {
	"nvim-neorg/neorg",
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	version = "*", -- Pin Neorg to the latest stable release
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Notes/Brain2/",
						},
						default_workspace = "notes",
					},
				},
			},
			vim.keymap.set("n", "<leader>ntt", "<Plug>(neorg.qol.todo-items.todo.task-cycle)"),
			vim.keymap.set("n", "<leader>nta", "<Plug>(neorg.qol.todo-items.todo.task-ambiguous)"),
			vim.keymap.set("n", "<leader>ntd", "<Plug>(neorg.qol.todo-items.todo.task-done)"),
			vim.keymap.set("n", "<leader>nth", "<Plug>(neorg.qol.todo-items.todo.task-on-hold)"),
			vim.keymap.set("n", "<leader>nti", "<Plug>(neorg.qol.todo-items.todo.task-important)"),
			vim.keymap.set("n", "<leader>ntp", "<Plug>(neorg.qol.todo-items.todo.task-pending)"),
			vim.keymap.set("n", "<leader>ntr", "<Plug>(neorg.qol.todo-items.todo.task-recurring)"),
			vim.keymap.set("n", "<leader>ntu", "<Plug>(neorg.qol.todo-items.todo.task-undone)"),
		})
	end,
}
