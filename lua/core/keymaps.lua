vim.g.mapleader = " "
vim.g.maploclleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local base_opts = { noremap = true, silent = true }

local function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", base_opts, { desc = desc }))
end

-- Save and quit
map("n", "<leader>ww", "<cmd> wa <CR>", "Save file")
map("n", "<leader>qq", "<cmd> wqa <CR>", "Save all and quit")

-- Editing enhancements
map("n", "x", '"_x', "Delete character without yanking")
map("n", "<C-d>", "<C-d>zz", "Scroll down and center")
map("n", "<C-u>", "<C-u>zz", "Scroll up and center")
map("n", "n", "nzzzv", "Next search result centered")
map("n", "N", "Nzzzv", "Previous search result centered")
map("n", "G", "Gzzzv", "End of file centered")
map("n", "d;", "d$", "Delete until end of line")
map("n", "<leader>nl", "o<Esc>k", "Enter newline below")
map("n", "<leader>NL", "O<Esc>j", "Enter newline above")
map("n", "<leader>A", "<cmd>Alpha<CR>", "Launch alpha")
map("n", "<leader>a", "ggVG", "Select all lines")

-- Window resizing
map("n", "<Up>", ":resize -2<CR>", "Resize window up")
map("n", "<Down>", ":resize +2<CR>", "Resize window down")
map("n", "<Left>", ":vertical resize -2<CR>", "Resize window left")
map("n", "<Right>", ":vertical resize +2<CR>", "Resize window right")

-- Indentation in visual mode
map("v", "<", "<gv", "Indent left and stay selected")
map("v", ">", ">gv", "Indent right and stay selected")
map("v", "p", '"_dP', "Paste without overwriting register")

-- LSP hover
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", "LSP Hover")

-- Window management
map("n", "<leader>v", "<C-w>v", "Split window vertically")
map("n", "<leader>h", "<C-w>s", "Split window horizontally")
map("n", "<leader>se", "<C-w>=", "Make splits equal size")
map("n", "<leader>xs", ":close<CR>", "Close current split")
map("n", "<C-k>", ":wincmd k<CR>", "Move to window above")
map("n", "<C-j>", ":wincmd j<CR>", "Move to window below")
map("n", "<C-h>", ":wincmd h<CR>", "Move to window left")
map("n", "<C-l>", ":wincmd l<CR>", "Move to window right")

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")
