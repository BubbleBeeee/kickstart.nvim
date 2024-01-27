return {
	'mrcjkb/rustaceanvim',
	version = '^4',
	ft = { 'rust' },
	config = function()
		vim.g.rustaceanvim = {
			server = {
				on_attach = function(client, bufnr)
					require('lsp-inlayhints').on_attach(client, bufnr)
				end
			}
		}
	end
}
