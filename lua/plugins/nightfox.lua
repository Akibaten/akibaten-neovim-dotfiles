return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  config = function()
    require("nightfox").setup({
      palettes = {
        -- Custom carbonfox with black background
        carbonfox = {
          bg1 = "#111111", -- Black background
          bg0 = "#262626", -- Alt backgrounds (floats, statusline, ...)
          bg3 = "#29394f", -- 55% darkened from stock
          sel0 = "#2b3b51", -- 55% darkened from stock
          variable = "#dfdfe0",
          builtin0 = "#c94f6d",
          builtin1 = "#7ad4d6",
          comment = "#a6a6a6",
          const = "#dbc074",
          func = "#86abdc",
          keyword = "#9d79d6",
          type = "#dbc074",
          string = "#dc8ed9",
        },
      },

      options = {
        transparent = true,
        styles = {},
      },
    })
    vim.cmd("colorscheme carbonfox")
  end,
}
