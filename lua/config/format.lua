require('nvim-format-buffer').setup({
  verbose = false,
  format_rules = {
    { pattern = { '*.c', '*.h' }, command = 'clang-format' },
  },
})
