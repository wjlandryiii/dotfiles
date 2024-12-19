vim.opt.termguicolors = true
vim.cmd 'colorscheme desert'

-- always use fat cursor
vim.opt.guicursor = ""

-- show line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "80,100"
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.mouse = ""

vim.cmd("set noincsearch")



-- BEGIN lazy
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  "EdenEast/nightfox.nvim",
  "nvim-treesitter/nvim-treesitter",
  "folke/tokyonight.nvim",
  "ellisonleao/gruvbox.nvim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
})
-- END lazy



vim.o.background = "dark"
--vim.cmd([[colorscheme nightfox]])
vim.cmd([[colorscheme tokyonight]])

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "lua_ls",
    "pylsp",
    "rust_analyzer",
  },
})

local lspconfig = require("lspconfig")
lspconfig.clangd.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.pylsp.setup{}
lspconfig.lua_ls.setup{}

vim.cmd([[set signcolumn=yes:1]])


vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
vim.cmd([[match ExtraWhitespace /\s\+$/]])
vim.cmd([[autocmd BufWinEnter * match ExtraWhitespace /\s\+$/]])
vim.cmd([[autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/]])
vim.cmd([[autocmd InsertLeave * match ExtraWhitespace /\s\+$/]])
vim.cmd([[autocmd BufWinLeave * call clearmatches()]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2       -- Number of spaces for a tab
    vim.opt_local.shiftwidth = 2   -- Number of spaces for indentation
    vim.opt_local.expandtab = true -- Use spaces instead of tabs
  end,
})

