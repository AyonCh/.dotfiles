local opts = {
	guicursor = "",
	cursorline = true,
	scrolloff = 8,
	number = true,
	relativenumber = true,
	signcolumn = "yes",
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	smartindent = true,
	expandtab = true,
	autoindent = true,
	hlsearch = false,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	backup = false,
	writebackup = false,
	swapfile = false,
	ttimeoutlen = 10,
	wildmenu = true,
	wrap = false,
	termguicolors = true,
	splitbelow = true,
	splitright = true,
	updatetime = 50,
	cmdheight = 1,
	showmode = false,
	fillchars = "eob: ",
}

for option, value in pairs(opts) do
	vim.opt[option] = value
end

vim.g.mapleader = " "
