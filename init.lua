-- bootstrap lazy.nvim, LazyVim and your plugins


vim.api.print = function(str)
    vim.api.nvim_echo({
      { str },
    }, true, {})
end

require'lspconfig'.pyright.setup{}
-- require("lspconfig").clangd.setup({
--     cmd = {
--       "clangd",
--       "--query-driver=*arm-none-eabi*",
--       -- NOTE：在Windows下使用如下绝对路径时反而无效
--       -- "--query-driver=${path_to_compiler}\\gcc-arm-none-eabi\\12.2.rel1\\bin\\arm-none-eabi*",
--     },
--     filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
-- })
-- require("mappings")
require("config.lazy")
require("config.init")
