-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require'lspconfig'.pyright.setup{}  
require'lspconfig'.clangd.setup{
    cmd = {"clangd"},
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
}