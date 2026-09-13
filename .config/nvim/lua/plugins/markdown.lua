return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = {
      "markdown",
      "quarto",
    },

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      -- ============================================================
      -- GENERAL
      -- ============================================================

      enabled = true,

      render_modes = {
        "n",
        "c",
      },

      debounce = 100,

      -- ============================================================
      -- ANTI-CONCEAL
      -- ============================================================

      anti_conceal = {
        enabled = true,

        disabled_modes = false,

        above = 0,
        below = 0,

        ignore = {
          code_background = true,
          indent = true,
          sign = true,
          virtual_lines = true,
        },
      },

      -- ============================================================
      -- PADDING
      -- ============================================================

      padding = {
        highlight = "Normal",
      },

      -- ============================================================
      -- HEADINGS
      -- ============================================================

      heading = {
        enabled = true,

        render_modes = false,

        atx = true,
        setext = true,

        sign = true,

        icons = {
          "󰲡 ",
          "󰲣 ",
          "󰲥 ",
          "󰲧 ",
          "󰲩 ",
          "󰲫 ",
        },

        signs = {
          "󰫎 ",
        },

        position = "overlay",

        width = "full",

        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },

        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },

        custom = {},
      },

      -- ============================================================
      -- CODE BLOCKS
      -- ============================================================

      code = {
        enabled = true,

        render_modes = false,

        sign = true,

        style = "full",

        position = "left",

        language = true,

        language_icon = true,
        language_name = true,
        language_info = true,

        left_pad = 1,
        right_pad = 1,

        border = "thin",

        above = "▄",
        below = "▀",

        highlight = "RenderMarkdownCode",
      },

      -- ============================================================
      -- INLINE CODE
      -- ============================================================

      inline_highlight = {
        enabled = true,

        highlight = "RenderMarkdownCode",
      },

      -- ============================================================
      -- BULLETS
      -- ============================================================

      bullet = {
        enabled = true,

        render_modes = false,

        icons = {
          "●",
          "○",
          "◆",
          "◇",
        },

        left_pad = 0,
        right_pad = 1,

        highlight = {
          "RenderMarkdownBullet",
          "RenderMarkdownBullet",
          "RenderMarkdownBullet",
          "RenderMarkdownBullet",
        },
      },

      -- ============================================================
      -- CHECKBOXES
      -- ============================================================

      checkbox = {
        enabled = true,

        render_modes = false,

        bullet = false,

        left_pad = 0,
        right_pad = 1,

        unchecked = {
          icon = "󰄱 ",
          highlight = "RenderMarkdownUnchecked",
          scope_highlight = nil,
        },

        checked = {
          icon = "󰱒 ",
          highlight = "RenderMarkdownChecked",
          scope_highlight = nil,
        },

        custom = {
          todo = {
            raw = "[-]",
            rendered = "󰥔 ",
            highlight = "RenderMarkdownTodo",
            scope_highlight = nil,
          },

          cancelled = {
            raw = "[~]",
            rendered = "󰰱 ",
            highlight = "RenderMarkdownError",
            scope_highlight = nil,
          },
        },

        scope_priority = nil,
      },

      -- ============================================================
      -- QUOTES
      -- ============================================================

      quote = {
        enabled = true,

        render_modes = false,

        icon = "▋",

        repeat_linebreak = false,

        highlight = {
          "RenderMarkdownQuote1",
          "RenderMarkdownQuote2",
          "RenderMarkdownQuote3",
          "RenderMarkdownQuote4",
          "RenderMarkdownQuote5",
          "RenderMarkdownQuote6",
        },
      },

      -- ============================================================
      -- CALLOUTS
      -- ============================================================

      callout = {
        note = {
          raw = "[!NOTE]",
          rendered = "󰋽 Note",
          highlight = "RenderMarkdownInfo",
          category = "github",
        },

        tip = {
          raw = "[!TIP]",
          rendered = "󰌶 Tip",
          highlight = "RenderMarkdownSuccess",
          category = "github",
        },

        important = {
          raw = "[!IMPORTANT]",
          rendered = "󰅾 Important",
          highlight = "RenderMarkdownHint",
          category = "github",
        },

        warning = {
          raw = "[!WARNING]",
          rendered = "󰀪 Warning",
          highlight = "RenderMarkdownWarn",
          category = "github",
        },

        caution = {
          raw = "[!CAUTION]",
          rendered = "󰳦 Caution",
          highlight = "RenderMarkdownError",
          category = "github",
        },

        abstract = {
          raw = "[!ABSTRACT]",
          rendered = "󰨸 Abstract",
          highlight = "RenderMarkdownInfo",
          category = "obsidian",
        },

        summary = {
          raw = "[!SUMMARY]",
          rendered = "󰨸 Summary",
          highlight = "RenderMarkdownInfo",
          category = "obsidian",
        },

        tldr = {
          raw = "[!TLDR]",
          rendered = "󰨸 TLDR",
          highlight = "RenderMarkdownInfo",
          category = "obsidian",
        },
      },

      -- ============================================================
      -- TABLES
      -- ============================================================

      pipe_table = {
        enabled = true,

        render_modes = false,

        preset = "round",

        border = {
          "╭",
          "┬",
          "╮",
          "├",
          "┼",
          "┤",
          "╰",
          "┴",
          "╯",
          "│",
          "─",
        },

        border_enabled = true,

        border_virtual = false,

        alignment_indicator = "━",

        head = "RenderMarkdownTableHead",

        row = "RenderMarkdownTableRow",

        style = "full",
      },

      -- ============================================================
      -- HORIZONTAL RULES
      -- ============================================================

      dash = {
        enabled = true,

        render_modes = false,

        icon = "─",

        width = "full",

        highlight = "RenderMarkdownDash",
      },

      -- ============================================================
      -- LINKS
      -- ============================================================

      link = {
        enabled = true,

        render_modes = false,

        image = "󰥶 ",

        email = "󰇮 ",

        hyperlink = "󰌷 ",

        wiki = {
          icon = "󱗖 ",
        },

        footnote = {
          enabled = true,

          icon = "󰯔 ",

          superscript = true,
        },

        custom = {
          web = {
            pattern = "^https?://",

            icon = "󰖟 ",

            highlight = "RenderMarkdownLink",
          },

          github = {
            pattern = "github%.com",

            icon = "󰊤 ",

            highlight = "RenderMarkdownLink",
          },
        },
      },

      -- ============================================================
      -- LATEX
      -- ============================================================

      latex = {
        enabled = true,

        render_modes = false,

        converter = {
          "utftex",
          "latex2text",
        },

        inline = true,

        block = true,

        highlight = "RenderMarkdownMath",

        coq = {
          enabled = false,
        },

        lsp = {
          enabled = false,
        },
      },

      -- ============================================================
      -- INDENTATION
      -- ============================================================

      indent = {
        enabled = true,

        render_modes = false,

        per_level = 2,

        skip_level = 1,

        skip_heading = false,

        icon = "▎",

        highlight = "RenderMarkdownIndent",
      },

      -- ============================================================
      -- PARAGRAPHS
      -- ============================================================

      paragraph = {
        enabled = true,

        render_modes = false,

        left_margin = 0,

        indent = 0,

        min_width = 0,
      },

      -- ============================================================
      -- DOCUMENT
      -- ============================================================

      document = {
        enabled = true,

        render_modes = false,
      },

      -- ============================================================
      -- HTML
      -- ============================================================

      html = {
        enabled = true,

        render_modes = false,
      },

      -- ============================================================
      -- YAML
      -- ============================================================

      yaml = {
        enabled = true,

        render_modes = false,
      },

      -- ============================================================
      -- SIGNS
      -- ============================================================

      sign = {
        enabled = true,

        priority = 10,

        highlight = "RenderMarkdownSign",
      },

      -- ============================================================
      -- WINDOW OPTIONS
      -- ============================================================

      win_options = {
        conceallevel = {
          default = vim.o.conceallevel,
          rendered = 3,
        },

        concealcursor = {
          default = vim.o.concealcursor,
          rendered = "",
        },
      },

      -- ============================================================
      -- OVERRIDES
      -- ============================================================

      overrides = {
        buflisted = {},

        buftype = {
          nofile = {
            render_modes = true,

            padding = {
              highlight = "NormalFloat",
            },

            sign = {
              enabled = false,
            },

            code = {
              left_pad = 0,
              right_pad = 0,
            },
          },
        },

        filetype = {
          markdown = {
            enabled = true,
          },

          quarto = {
            enabled = true,
          },
        },

        preview = {
          render_modes = true,
        },
      },

      -- ============================================================
      -- COMPLETIONS
      -- ============================================================

      completions = {
        lsp = {
          enabled = true,
        },

        blink = {
          enabled = true,
        },
      },
    },

    config = function(_, opts)
      require("render-markdown").setup(opts)

      vim.keymap.set("n", "<leader>um", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle Markdown Rendering" })

      vim.keymap.set("n", "<leader>mp", "<cmd>RenderMarkdown preview<CR>", { desc = "Markdown Preview" })

      vim.keymap.set("n", "<leader>md", "<cmd>RenderMarkdown debug<CR>", { desc = "Markdown Debug" })
    end,
  },
}
