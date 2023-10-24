vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
	pattern = "*",
	desc = "Turn on relative numbers on entering insert mode",
	command = 'if &nu && mode() != "i" | set rnu   | endif',
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
	pattern = "*",
	desc = "Turn off relative numbers on entering insert mode",
	command = "if &nu | set nornu | endif",
})

-- Detect Ansible filetypes

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*/playbooks/*.yml",
	command = "set filetype=yaml.ansible",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*/roles/*.yml",
	command = "set filetype=yaml.ansible",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*/inventory/*.yml",
	command = "set filetype=yaml.ansible",
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = "~/.local/share/chezmoi/*",
	command = "chezmoi apply --source-path '%'",
})
