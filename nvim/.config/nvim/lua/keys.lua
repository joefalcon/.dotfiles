--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap key used to leave insert mode
map('i', 'jk', '<Esc>', {})

