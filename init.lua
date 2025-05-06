require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.catppuccin"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.none-ls"),
	require("plugins.gitsigns"),
	require("plugins.alpha"),
	require("plugins.harpoon"),
	require("plugins.surround"),
	require("plugins.which-key"),
	require("plugins.lazygit"),
	require("plugins.ibl"),
	require("plugins.autopairs"),
	require("plugins.colorizer"),
	require("plugins.git-integration"),
	require("plugins.todo-comments"),
	require("plugins.vim-sleuth"),
	require("plugins.oil"),
	require("plugins.gitblame"),
	require("plugins.flash"),
	require("plugins.markdown"),
	require("plugins.smearcursor"),
	require("plugins.trouble"),
	require("plugins.avante"),
})

require("plugins.terminal")
