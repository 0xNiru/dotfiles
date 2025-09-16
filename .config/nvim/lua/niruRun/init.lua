-- this file contains shortcut to run code
-- we will identify the file type and simulate the respective output
-- add more languages as per your need

local m = {}

function m.niruRun()
  local ft = vim.bo.filetype   -- detect current filetype

  if ft == 'c' then                    -- c
    vim.cmd("!gcc % -o %:r && ./%:r")

  elseif ft == 'cpp' then              -- c++ 
    vim.cmd("!g++ % -o %:r && ./%:r")

  elseif ft == 'go' then               -- GOlang
    vim.cmd("!go run %")

  elseif ft == 'python' then           -- python 
    vim.cmd("!python3 %")

  elseif ft == 'javascript' then       -- javascript
    vim.cmd("!node %")

  elseif ft == 'rust' then             -- rust
    vim.cmd("!rustc % -o %:r && ./%:r")

  else
    print("❌ lang not supported currently, add it to ~/dotfiles/nvim/lua/niruRun/init.lua")
  end
end

return m 
-- now, we will add a keymap to lua/nirajcore/keymaps.lua
-- happy coding ;)
