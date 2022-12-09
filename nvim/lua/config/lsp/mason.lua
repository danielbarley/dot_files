local servers = {
	"zls",
	"clangd",
	"fortls",
	"ltex",
	"pylsp",
}

local setings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "I",
			package_pending = "P",
			package_uninstalled = "U",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("config.lsp.handlers").on_attach,
		capabilities = require("config.lsp.handlers").capabilities,
	}
	server = vim.split(server, "@")[1]
	local has_specops, specops = pcall(require, "config.lsp.settings." .. server)
	if has_specops then
		opts = vim.tbl_deep_extend("force", specops, opts)
	end
	lspconfig[server].setup(opts)
end
