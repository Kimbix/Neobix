return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    local wk = require("which-key")
    wk.register({
      g = {
        name = "Git",

        p = { "<CMD>Gitsigns preview_hunk<CR>", "Preview Hunk" },
        P = { "<CMD>Gitsigns preview_hunk_inline<CR>", "Preview Hunk" },
      },
    }, {
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = false,
    })
  end,
}
