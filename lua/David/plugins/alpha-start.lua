return {
	"goolord/alpha-nvim",
	event = "VimEnter", -- load plugin after all configuration is set
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local randomQuote = math.random(3)

		local quotes = {
			"The mystery of life isn't a problem to solve, but a reality to experience. - Frank Herbert, Dune",
			"It is impossible to live in the past, difficult to live in the present and a waste to live in the future. Frank Herbert, Dune",
			"Survival is the ability to swim in strange water. - Frank Herbert, Dune",
		}
		math.randomseed(os.time())

		dashboard.section.header.val = {
			"                                                                  ",
			"                                                                  ",
			"                                                                  ",
			"                                                                  ",
			"                                                                  ",
			"                                                                  ",
			"███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ",
			"███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ",
			"███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ",
			"███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ",
			" ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ",
		}

		_Gopts = {
			position = "center",
			hl = "Type",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("c", "   Config", ":cd ~/.config/nvim/ | :Oil<CR>"),
			dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
			dashboard.button("m", "󱌣   Mason", ":Mason<CR>"),
			dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
			dashboard.button("q", "   Quit", ":q<CR>"),
		}
		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				dashboard.section.footer.val = {
					" ",
					" ",
					quotes[math.random(3)],
				}
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
