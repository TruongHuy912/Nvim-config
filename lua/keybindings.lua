vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

--Normal-Map
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<leader>j', '%', {noremap = true, silent = false})
map('n', '<leader>1', ':vsplit<CR>', {noremap = true, silent = false})
map('n', '<leader>2', ':split<CR>', {noremap = true, silent = false})
map('n', '<leader>t', '^', {noremap = true, silent = false})
map('n', '<leader>y', '$', {noremap = true, silent = false})

--Insert-Map
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

--NvimTree
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
map('n', '<leader>f', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

--Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<leader>fg', ':Telescope live_grep<CR>', {noremap = true, silent = true})
map('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true, silent = true})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {noremap = true, silent = true})

--Bufferline
map('n', '<leader>g', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('n', '<leader>h', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

--Visual-map
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})
map('v', 'jk', '<ESC>', {noremap = true, silent = false})


