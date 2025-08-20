 --[[

we will use vim.keymap.set API for mapping keys here.    
Let's first understand the syntax to write keymaps.
---------------------------------------------------

vim.keymap.set({mode}, {left}, {right}, {opts})

-> for mode, we can choose any one among "n" - Normal Mode,
"i" - insert mode, "v" - visual mode
-> left means our desired key shortcut
-> right means which Neovim's inbuilt command will execute when left's clicked
-> opts is extra option like noremap, silent etc

Example : see the line 32

-> map("n", "<leader>w", ":w<CR>", opts)
-> here, n is normal mode and <CR> is notation for Enter key
-> <leader>w means space+w key will execute the inbuilt save command (:w)

--]]


-- instead of writing vim.keymap.set repeatedly, we can declare it as a local variable
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- setting space key as my Leader key
vim.g.mapleader = " "

-- now we can customize shortcuts
map("n", "<leader>w", ":w<CR>", opts)        -- save
map("n", "<leader>q", ":q<CR>", opts)        -- quit

-- for window navigation
-- <C-h> is ctrl + h
-- <C-w> is built-in Neovim cmd to switch btw split windows
-- h, j, k, l is for left, down, up, right respectively
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)   
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- to clear highlights after search
map("n", "<leader>c", ":nohlsearch<CR>", opts)

-- file explorer shortcut
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- niruRun's shortcut
local run = require("niruRun").niruRun
map("n", "<leader>rr", run, opts)

