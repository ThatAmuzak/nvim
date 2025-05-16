return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			org_agenda_files = { "~/notes/Brain2/**/*" },
			org_default_notes_file = "~/notes/Brain2/inbox.org",
			org_capture_templates = {
				b = {
					description = "Thought",
					template = table.concat({
						"* %?\t:%^{Tags}:\n",
						":PROPERTIES:\n",
						":CREATED: %U\n",
						":END:\n",
					}, ""),
					target = "~/notes/Brain2/thoughts/%<%Y-%m-%d>-thought.org",
				},

				t = {
					description = "Task",
					template = table.concat({
						"* TODO %?\t:%^{Tags}:\n",
						"DEADLINE: %^{Deadline}t\n",
						":PROPERTIES:\n",
						":CREATED: %U\n",
						":END:\n",
					}, ""),
					target = "~/notes/Brain2/tasks/%<%Y-%m-%d>-task.org",
				},
			},
		})
	end,
}
