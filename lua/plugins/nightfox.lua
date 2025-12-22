return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  config = function()
    require("nightfox").setup({
      palettes = {
        carbonfox = {
          -- Base palette colors (using Shade variants from your Helix theme)
          black = { base = "#393b44", bright = "#4a4c55", dim = "#2e3038" },
          red = { base = "#c94f6d", bright = "#d66083", dim = "#b3466a" },
          green = { base = "#81b29a", bright = "#92c3ab", dim = "#70a189" },
          yellow = { base = "#dbc074", bright = "#e0c989", dim = "#d2b165" },
          blue = { base = "#719cd6", bright = "#86abdc", dim = "#5c8dc5" },
          magenta = { base = "#9d79d6", bright = "#baa1e2", dim = "#8a6cc3" },
          cyan = { base = "#63cdcf", bright = "#7ad4d6", dim = "#52bec0" },
          white = { base = "#dfdfe0", bright = "#efefef", dim = "#d0d0d1" },
          orange = { base = "#f4a261", bright = "#f6b079", dim = "#e2934e" },
          pink = { base = "#d67ad2", bright = "#dc8ed9", dim = "#ca6bc9" },

          -- Comment color
          comment = "#a6a6a6",
          -- Background shades
          bg0 = "#262626", -- Dark bg (status line and float)
          bg1 = "#111111", -- Default bg
          bg2 = "#212e3f", -- Lighter bg (colorcolm folds)
          bg3 = "#29394f", -- Lighter bg (cursor line)
          bg4 = "#39506d", -- Conceal, border fg
          -- Foreground shades
          fg0 = "#d6d6d7", -- Lighter fg
          fg1 = "#cdcecf", -- Default fg
          fg2 = "#aeafb0", -- Darker fg (status line)
          fg3 = "#7e7e7e", -- Darker fg (line numbers, fold columns)
          -- Selection colors
          sel0 = "#2b3b51", -- Popup bg, visual selection bg
          sel1 = "#3c5372", -- Popup sel bg, search bg
        },
      },
      specs = {
        carbonfox = {
          syntax = {
            bracket = "fg2", -- Brackets and Punctuation
            builtin0 = "red", -- Builtin variable
            builtin1 = "cyan.bright", -- Builtin type
            builtin2 = "orange", -- Builtin const
            builtin3 = "red", -- Not used
            comment = "comment", -- Comment
            conditional = "magenta.bright", -- Conditional and loop
            const = "yellow", -- Constants, imports and booleans
            dep = "fg3", -- Deprecated
            field = "fg2", -- Field
            func = "blue.bright", -- Functions and Titles
            ident = "white", -- Identifiers
            keyword = "magenta", -- Keywords
            number = "yellow", -- Numbers
            operator = "fg2", -- Operators
            preproc = "pink.bright", -- PreProc
            regex = "yellow.bright", -- Regex
            statement = "magenta", -- Statements
            string = "pink.bright", -- Strings
            type = "yellow", -- Types
            variable = "white", -- Variables
          },
          git = {
            add = "green",
            removed = "red",
            changed = "blue",
          },
          diag = {
            error = "red",
            warn = "yellow",
            info = "blue",
            hint = "green",
          },
        },
      },
      groups = {
        carbonfox = {
          LazyH1 = { fg = "palette.red.base", style = "bold" },
          LazyButton = { bg = "palette.bg3", fg = "palette.fg2" },
          LazyButtonActive = { bg = "palette.sel1", fg = "palette.fg1", style = "bold" },
        },
      },
      options = {
        transparent = false, -- Set to true if you want transparent background
        terminal_colors = true,
        dim_inactive = false,
        styles = {
          comments = "NONE",
          conditionals = "NONE",
          constants = "NONE",
          functions = "NONE",
          keywords = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
          variables = "NONE",
        },
      },
    })
    vim.cmd("colorscheme carbonfox")
  end,
}
