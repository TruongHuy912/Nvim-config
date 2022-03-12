local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end

local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save & Quit"},
  --w = {":w<cr>", "Save"},
  d = {":d<cr>", "Delete Line"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/AppData/Local/nvim/init.vim<cr>", "Edit config"},
  t = {
    t = {":ToggleTerm<cr>", "Split Below"},
    f = {toggle_float, "Floating Terminal"},
    l = {toggle_lazygit, "LazyGit"}
}}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
