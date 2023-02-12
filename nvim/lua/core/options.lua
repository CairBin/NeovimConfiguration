local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Prevent wrapping
opt.wrap = false

-- Cursor line
opt.cursorline = true

-- Mouse
opt.mouse:append("a")

-- System clipboard
opt.clipboard:append("unnamedplus")

-- Default position of new window: right and bottom
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase= true

-- Terminal style
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-storm]]
