local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = function(k)
            if cmp.visible() then
                cmp.select_next_item()
            else
                k()
            end
        end,
        ['<S-Tab>'] = function() cmp.select_prev_item() end,
        --['<Tab>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.clangd.setup{
    capabilities = capabilities,
	cmd = { "clangd", "--background-index", "--completion-style=bundled" },
}
require'lspconfig'.rust_analyzer.setup{
	capabilities = capabilities,
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy"
			},
		}
	},
}
require'lspconfig'.hls.setup{
	capabilities = capabilities,
    single_file_support=true,
}
