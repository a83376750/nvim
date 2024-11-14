-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require'lspconfig'.pyright.setup{}  
require'lspconfig'.clangd.setup{
    cmd = {"clangd"},
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto","rs" }
}
require'fany.include'

vim.opt.expandtab = false   -- 使用实际的制表符（tab）
vim.opt.tabstop = 4         -- 设置 tab 键宽度为 4
vim.opt.shiftwidth = 4      -- 设置自动缩进的宽度为 4
vim.opt.softtabstop = 4     -- 设置编辑时表现为 4 个字符宽度
vim.opt.guifont = "FiraCode:h14"