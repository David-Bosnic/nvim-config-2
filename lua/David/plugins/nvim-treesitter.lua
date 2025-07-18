return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")
			-- configure treesitter
			treesitter.setup({
				-- enable syntax highlighting
				highlight = {
					enable = true,
					-- Disable additional vim syntax highlighting
					additional_vim_regex_highlighting = false,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = {
					enable = true,
				},
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"go",
					"tsx",
					"yaml",
					"html",
					"css",
					"svelte",
					"python",
					"bash",
				},
				-- Skip parsers that are already in Neovim runtime
				skip_installation = { "lua", "vim", "vimdoc", "markdown", "markdown_inline" },
			})
		end,
	},
}
