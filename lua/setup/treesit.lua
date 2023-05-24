local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup ({
	ensure_installed = { "bash", "c", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust", "java", "yaml", "markdown_inline", "latex", "vim", "vimdoc" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	autopairs = {
		enable = true
	},
	indent = {enable = true},
})
