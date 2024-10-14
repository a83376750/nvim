-- other config https://github.com/olrtg/emmet-language-server
require("lspconfig").emmet_language_server.setup({})
return {
  -- lsp servers
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
    --  set lsp language
    servers = {
      lua_ls = {},
      clangd = {}
    },
    setup = {
      rust_analyzer = function()
        return true
      end,
    },
  },
}