local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { 'gopls', 'rust_analyzer', 'pyright', 'html', 'hls', 'cssls', 'sumneko_lua', 'vimls', 'texlab' }
local cmp = require'cmp'
local luasnip = require("luasnip")

require("nvim-lsp-installer").setup {}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities
    }
end

--  require("nvim-treesitter.configs").setup {
--  highlight = {
--    enable = true,
--    disable = {},
--  },
--  indent = {
--    enable = false,
--    disable = {},
--  },
--  ensure_installed = {
--    "json",
--    "yaml",
--    "toml",
--    "python",
--    "rust",
--    "haskell",
--    "go",
--    "html",
--    "css",
--    "markdown",
--    "latex",
--    "bibtex",
--    "vim",
--    "lua"
--   },
-- }

require("luasnip.loaders.from_vscode").lazy_load()

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {},
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    })
})

require('nvim_comment').setup()
require('flutter-tools').setup{}

