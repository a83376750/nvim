return {
    "rmagatti/goto-preview",
    enabled = false, --禁用
    event = "BufEnter",
    config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    keys = {
        {
          "<leader>pd",
          "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
          noremap = true,
          desc = "goto preview definition",
        },
        {
          "<leader>pD",
          "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
          noremap = true,
          desc = "goto preview declaration",
        },
        {
          "<leader>pi",
          "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
          noremap = true,
          desc = "goto preview implementation",
        },
        {
          "<leader>py",
          "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
          noremap = true,
          desc = "goto preview type definition",
        },
        {
          "<leader>pr",
          "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
          noremap = true,
          desc = "goto preview references",
        },
        {
          "<leader>P",
          "<cmd>lua require('goto-preview').close_all_win()<CR>",
          noremap = true,
          desc = "close all preview windows",
        },
      },
}