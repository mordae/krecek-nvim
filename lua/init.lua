-- Work around https://github.com/neovim/neovim/issues/21856
vim.api.nvim_create_autocmd({ "VimLeave" }, {
  callback = function()
    vim.fn.jobstart('/bin/true', {detach=true})
  end,
})

require("fidget").setup {
  progress = {
    display = {
      progress_icon = {
        pattern = "dots",
        period = 1,
      },
    },
  },
}

require("fzf-lua").setup {
  previewers = {
    builtin = {
      extensions = {
        ["png"] = { "chafa" },
        ["jpg"] = { "chafa" },
        ["jpeg"] = { "chafa" },
        ["gif"] = { "chafa" },
      },
    },
  },
}

vim.keymap.set('n', '<C-p>', '<cmd>lua require("fzf-lua").files()<CR>', { silent = true })
vim.keymap.set('n', '<C-g>', '<cmd>lua require("fzf-lua").git_status()<CR>', { silent = true })
vim.keymap.set('n', '<C-/>', '<cmd>lua require("fzf-lua").live_grep()<CR>', { silent = true })
vim.keymap.set('n', '<C-\\>', '<cmd>lua require("fzf-lua").buffers()<CR>', { silent = true })
vim.keymap.set('n', '<C-b>', '<cmd>lua require("fzf-lua").builtin()<CR>', { silent = true })

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
}

require("config.init")
