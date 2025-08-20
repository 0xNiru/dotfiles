-- we will first load a NeoVim's API (vim.opt) to change settings
local opt = vim.opt

opt.number = true                 -- to show line numbers
opt.relativenumber = true         -- to show relative number
opt.mouse = "a"                   -- enable mouse
opt.clipboard = "unnamedplus"     -- system clipboard
opt.swapfile = false              -- no swap files


-- Custom UI
opt.termguicolors = true         -- 24-bit colors
opt.cursorline = true            -- highlight current line
opt.signcolumn = "yes"           -- gutter for git signs
opt.scrolloff = 8                -- keep only 8 lines visible


-- Indentation
opt.tabstop = 4                   -- width of a tab character
opt.shiftwidth = 4                -- spaces in >> and <<
opt.expandtab = true              -- convert tabs into spaces
opt.smartindent = true            -- automatic indent after {


-- Search
opt.ignorecase = true             -- small vs CAPS ignore
opt.smartcase = true              -- 
opt.hlsearch = false              -- false
opt.incsearch = true              -- search as you type

