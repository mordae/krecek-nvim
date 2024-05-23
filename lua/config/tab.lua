local function check_back_space()
	local col = vim.fn.col('.') - 1
	return col <= 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end

function tab_complete()
	if check_back_space() then
		return vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
	end
	return vim.api.nvim_replace_termcodes('<C-p>', true, false, true)
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-n>', { noremap = true })
