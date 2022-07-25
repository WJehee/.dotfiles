local nnoremap = require("wjehee.keymap").nnoremap

nnoremap("<leader>ff", require('telescope.builtin').find_files)
nnoremap("<leader>fg", require('telescope.builtin').live_grep)
nnoremap("<leader>fb", require('telescope.builtin').buffers)

