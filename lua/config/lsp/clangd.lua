local bin_name = "clangd"
local cmd = {
  bin_name,
  "--background-index",
  "--suggest-missing-includes",
  "--enable-config"
}

local config = vim.fs.find(".clangd", {
  upward = true,
  stop = vim.loop.os_homedir(),
  path = vim.fs.dirname(vim.api.nvim_buf_get_name(0)),
})

if next(config) then
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "c,cpp",
    callback = function()
      vim.lsp.start({
        name = "clangd",
        cmd = cmd,
        root_dir = config[1],
        settings = {
        },
      })
    end,
  })
end
