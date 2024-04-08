vim.g.mapleader = ' ' -- Set mapleader to space

-- Install lazy if not installed
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require('lazy').setup({
  -- Telescope
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'nvim-telescope/telescope.nvim' },
  { 'nvim-telescope/telescope-fzf-native.nvim' },

  -- Copilot
  { 'CopilotC-Nvim/CopilotChat.nvim' },
  { 'github/copilot.vim' },

  -- Lsp
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'neovim/nvim-lspconfig' },

  { 'machakann/vim-highlightedyank' },
  {
    'mrcjkb/rustaceanvim',
    version = '^4',
    ft = { 'rust' },
  },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-vsnip' },
  { 'hrsh7th/vim-vsnip' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-buffer' },
  { 'nvimdev/dashboard-nvim', event = 'VimEnter' },
  { 'rcarriga/nvim-notify' },
  { 'MunifTanjim/nui.nvim' },
  { 'nvim-tree/nvim-web-devicons' },
  { 'akinsho/bufferline.nvim' },
  { 'andweeb/presence.nvim' },
  { 'folke/noice.nvim', event = 'VeryLazy' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'catppuccin/nvim' },
  { 'mattn/emmet-vim' },
  { 'jiangmiao/auto-pairs' },
  { 'j-hui/fidget.nvim' },
  { 'folke/which-key.nvim', event = 'VeryLazy' },
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  { 'stevearc/conform.nvim' },
  { 'hrsh7th/nvim-compe' },
  { 'lewis6991/gitsigns.nvim' },
  { 'christoomey/vim-tmux-navigator' },
}, {})

-- Configurations
require 'themes'
require 'config'
require 'plugins'
require 'lsp'
