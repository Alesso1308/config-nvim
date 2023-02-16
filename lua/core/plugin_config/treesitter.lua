require'nvim-treesitter.configs'.setup{
	ensure_installed = {"java","rust","html","css","lua","vim","yaml","javascript","typescript","go","c"},

	sync_install= false,
	auto_install=true,
	highlight={
		enable =true
	}
}
