--
require('base')

--
require('autocmds')

-- configure options
require('options')

-- configure keymaps
require('keymaps')

-- configure colorscheme
require('colorscheme')
--vim.cmd.colorscheme('habamax')

-- configure packer
require('plugins')

-- share clipboard with os
vim.opt.clipboard:append('unnamedplus,unnamed')

-- call command to read nvim configuration file
vim.api.nvim_create_user_command(
	'InitLua',
	function()
		vim.cmd.edit(vim.fn.stdpath('config') .. '/init.lua')
	end,
	{ desc = 'Open init.lua' }
)

-- python3 virtual environment
vim.g.python3_host_prog = vim.fn.expand('~/.local/share/nvim/venv/bin/python3')

