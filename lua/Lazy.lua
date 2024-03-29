local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.opt.wrap = true
-- vim.cmd("colorscheme flexoki")
-- require("lazy").setup(plugins, opts)

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "lazyvim.plugins.extras.lang.docker" },
		{ import = "lazyvim.plugins.extras.util.project" },
		-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
		{ import = "user" },
	},
	install = { colorscheme = { "flexoki" } },
	defaults = { lazy = true },
	-- ui = { wrap = "true" },
	change_detection = {
		enabled = true,
		notify = true,
	},
	debug = false,
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip", -- Plugin for editing compressed files.
				"matchit", -- What is it?
				"matchparen", -- Plugin for showing matching parens
				"netrwPlugin", -- Handles file transfers and remote directory listing across a network
				"tarPlugin", -- Plugin for browsing tar files
				"tohtml", -- Converting a syntax highlighted file to HTML
				"tutor", -- Teaching?
				"zipPlugin", -- Handles browsing zipfiles
			},
		},
	},
})
