local nnoremap = require("wjehee.keymap").nnoremap
local saga = require('lspsaga')
saga.setup({})

-- Load flutter extension for telescope
require('telescope').load_extension('flutter')

nnoremap("<leader>ff", require('telescope.builtin').find_files)
nnoremap("<leader>fg", require('telescope.builtin').live_grep)
nnoremap("<leader>fb", require('telescope.builtin').buffers)
nnoremap("<leader>ft", require('telescope').extensions.flutter.commands)

-- Still have to figure out how to use lua here instead of <cmd>
nnoremap("<leader>ca", "<cmd>Lspsaga code_action<CR>")
nnoremap("<leader>rn", "<cmd>Lspsaga rename<CR>")
nnoremap("<leader>gd", "<cmd>Lspsaga peek_definition<CR>")
nnoremap("<leader>hd", "<cmd>Lspsaga hover_doc<CR>")

