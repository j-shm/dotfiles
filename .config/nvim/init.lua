vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = false

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '✍️', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🤔', texthl = 'red', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🙅', texthl = 'red', linehl = '', numhl = '' })
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
