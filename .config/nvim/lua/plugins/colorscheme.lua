return {
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      require("koda").setup({
        transparent = true,

        styles = {
          functions = {},
          keywords = {},
          comments = { italic = false },
          strings = {},
          constants = {},
        },

        on_highlights = function(hl, c)
          hl.Normal = { bg = "none" }
          hl.NormalFloat = { bg = "none" }
          hl.FloatBorder = { bg = "none" }
          hl.SignColumn = { bg = "none" }
          hl.LineNr = { bg = "none" }
          hl.CursorLineNr = { bg = "none" }
          hl.StatusLine = { bg = "none" }
          hl.StatusLineNC = { bg = "none" }
          hl.TabLine = { bg = "none" }
          hl.TabLineFill = { bg = "none" }
          hl.TabLineSel = { bg = "none" }
          hl.WinSeparator = { bg = "none" }
          hl.VertSplit = { bg = "none" }
          hl.Pmenu = { bg = "none" }
          hl.PmenuSel = { bg = "none" }

          hl.TelescopeNormal = { bg = "none" }
          hl.TelescopeBorder = { bg = "none" }

          hl.NvimTreeNormal = { bg = "none" }
          hl.NvimTreeNormalNC = { bg = "none" }
        end,
      })

      vim.cmd("colorscheme koda-dark")
    end,
  },
}
