return {
	"goolord/alpha-nvim",
	enabled = true,
	event = "VimEnter",
	lazy = false,
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
    █████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ ██╗██████╗ 
   ██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗██║██╔══██╗
   ███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║██║██║  ██║
   ██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║██║██║  ██║
   ██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝██║██████╔╝
   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝╚═════╝ 
                                                      
          ██████╗ ███████╗███████╗██╗  ██╗███████╗         
         ██╔════╝ ██╔════╝██╔════╝██║ ██╔╝██╔════╝         
         ██║  ███╗█████╗  █████╗  █████╔╝ ███████╗         
         ██║   ██║██╔══╝  ██╔══╝  ██╔═██╗ ╚════██║         
         ╚██████╔╝███████╗███████╗██║  ██╗███████║         
          ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝         

                     [Code Editor RC2]
		   ]]

		dashboard.section.header.val = vim.split(logo, "\n")
		dashboard.section.buttons.val = {
			dashboard.button("ff", " " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("nf", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("rf", " " .. " Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("ft", " " .. " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("m", " " .. "Mason", ":Mason <CR>"),
			dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"
		dashboard.opts.layout[1].val = 8
		return dashboard
	end,
	config = function(_, dashboard)
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
