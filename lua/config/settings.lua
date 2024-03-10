-- Line number
vim.wo.relativenumber = true
vim.wo.number = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Disable automatic commenting on newlines
vim.cmd 'autocmd BufEnter * set formatoptions-=cro'
vim.cmd 'autocmd BufEnter * setlocal formatoptions-=cro'

-- Other options
vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.o.scrolloff = 3
vim.o.completeopt = 'menuone,noinsert'
vim.g.highlightedyank_highlight_duration = 150
