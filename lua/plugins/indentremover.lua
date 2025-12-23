return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        indent = {
          enabled = false,
        },
        chuck = {
          enabled = true,
          char = "a",
        },
      },
    },
  },
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#ffffff" }),
}
