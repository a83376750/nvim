return {
    "smjonas/live-command.nvim",
    enabled = false, --禁用
    -- live-command supports semantic versioning via Git tags
    -- tag = "2.*",
    config = function()
      require("live-command").setup()
    end,
}