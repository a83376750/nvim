if vim.fn.has("nvim-0.9.0") == 0 then
  vim.api.nvim_echo({
    { "LazyVim requires Neovim >= 0.9.0\n", "ErrorMsg" },
    { "Press any key to exit", "MoreMsg" },
  }, true, {})
  vim.fn.getchar()
  vim.cmd([[quit]])
  return {}
end

local conf = require("lazyvim.config")
conf.init()

local pluginTab = {
  "neoclide/coc.nvim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  -- Lspconfig
  "neovim/nvim-lspconfig",
  "ray-x/lsp_signature.nvim",
  -- cmake
  "Shatur/neovim-cmake",
  -- 补全引擎
  "hrsh7th/nvim-cmp",
  -- 补全源
  "hrsh7th/vim-vsnip",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-nvim-lsp",                -- { name = nvim_lsp }
  "hrsh7th/cmp-buffer",                  -- { name = 'buffer' },
  "hrsh7th/cmp-path",                    -- { name = 'path' }
  "hrsh7th/cmp-cmdline",                 -- { name = 'cmdline' }
  "hrsh7th/cmp-nvim-lsp-signature-help", -- { name = 'nvim_lsp_signature_help' }
  -- 常见编程语言代码段
  "rafamadriz/friendly-snippets",
  -- UI 增强
  "onsails/lspkind-nvim",
  "glepnir/lspsaga.nvim",
  -- 代码格式化
  "mhartington/formatter.nvim",
}

local tab = {
  { "folke/lazy.nvim", version = "*" },
  { "LazyVim/LazyVim", priority = 10000, lazy = false, opts = {}, cond = true, version = "*" },

}

for k, v in pairs(pluginTab) do
  table.insert(tab, {v, version = "*"})
end

return tab
