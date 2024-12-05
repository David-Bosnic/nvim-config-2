return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			on_colors = function(colors)
				colors.Function = colors.Orange
			end,
		})
		vim.opt.termguicolors = true
		vim.cmd("colorscheme tokyonight")
	end,
}
