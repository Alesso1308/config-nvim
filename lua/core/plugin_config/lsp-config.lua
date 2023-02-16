require("mason").setup()
require("mason-lspconfig").setup({
		ensure_installed ={"lua_ls","rust_analyzer","emmet_ls","tsserver","pyright","sqlls","yamlls","vimls","jdtls"}
})

local on_attach = function()
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references,{})
  vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})

end


local capnilities = require('cmp_nvim_lsp').default_capabilities()



 require("lspconfig").lua_ls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").rust_analyzer.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").emmet_ls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").tsserver.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").pyright.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").sqlls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").yamlls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
 
 require("lspconfig").vimls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }


 require("lspconfig").jdtls.setup {
 on_attach=on_attach,
	capnilities = capnilities,
 }
