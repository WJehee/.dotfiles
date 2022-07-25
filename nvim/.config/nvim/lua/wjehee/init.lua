require("wjehee.set")
require("wjehee.packer")

-- Autocommands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

YEP = augroup("YEP", {})
autocmd({"BufWritePre"}, {
    group = YEP,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

