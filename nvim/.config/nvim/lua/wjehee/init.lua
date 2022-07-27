require("wjehee.set")
require("wjehee.packer")

-- Autocommands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

wjehee = augroup("WJehee", {})
autocmd({"BufWritePre"}, {
    group = wjehee,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

autocmd({"BufWritePost"}, {
    group = wjehee,
    pattern = "*.tex",
    command = "silent! !pdflatex %"
})

