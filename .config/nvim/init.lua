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

--set guifont=Consolas:h18

vim.opt.termguicolors = true
vim.opt.background = "dark"
require("gruvbox").setup({
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  }
})

vim.cmd.colorscheme("gruvbox")


vim.lsp.config("rust-analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { 'rust' },
})
vim.lsp.enable("rust-analyzer")

vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
})
vim.lsp.enable("clangd")

vim.lsp.config("pylsp", {
  cmd = { "C:\\Users\\wjl\\AppData\\Local\\Python\\pythoncore-3.14-64\\python.exe", "-m", "pylsp" },
  filetypes = { "python" },
})
vim.lsp.enable("pylsp")

--vim.lsp.buf.references()
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
-- vim.keymap.set("n", "K", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)

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

vim.diagnostic.config({
  virtual_text = {prefix='●', spacing=2, source='if_many'},
  signs = true, underline = true, update_in_insert = false,
})

-- vim.api.nvim_set_keymap('n', 'K', ':Man <cword><CR>', { noremap = true, silent = true })

-- vim.cmd([[set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→]])
--vim.cmd([[set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶]])
vim.cmd([[set listchars=tab:>-,space:.,eol:¶]])
vim.opt.fileformat = "unix"
-- vim.cmd([[set statusline+=\ [%{&fileformat}] ]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "xml",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})

-- highlight CRLF endings
-- vim.fn.matchadd("ExtraWhitespace", "\\r$")
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "*",
  callback = function()
    vim.fn.matchadd("ExtraWhitespace", "\\r$")
  end,
})
