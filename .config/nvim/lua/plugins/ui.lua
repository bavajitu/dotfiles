return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        always_show_bufferline = false,
        color_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  -- filename
  {
    "kylechui/nvim-surround",
    version = "*", -- latest stable
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        enabled = true,
        win = {
          position = "float", -- floating popup
          border = "rounded",
        },
      },
      indent = {
        enabled = false,
      },
      dashboard = {
        enabled = true,

        preset = {
          header = [[
                                                                      
             ████ ██████           █████      ██                     
            ███████████             █████                             
            █████████ ███████████████████ ███   ███████████   
           █████████  ███    █████████████ █████ ██████████████   
          █████████ ██████████ █████████ █████ █████ ████ █████   
        ███████████ ███    ███ █████████ █████ █████ ████ █████  
       ██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],

          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":Telescope find_files" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
            { icon = " ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },

    keys = {
      {
        "<leader>t",
        function()
          require("snacks").terminal.toggle()
        end,
        desc = "Toggle Snacks Terminal",
      },
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional (icons)
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",

          section_separators = {
            left = "",
            right = "",
          },
          component_separators = {
            left = "",
            right = "",
          },

          -- Remove the separators, if you want to
          -- section_separators = {
          --   left = "",
          --   right = "",
          -- },
          -- component_separators = {
          --   left = "|",
          --   right = "|",
          -- },
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = {
            {
              "filename",
              file_status = true,
              path = 0,
            },
          },
          lualine_x = {
            {
              "diagnostics",
              sources = { "nvim_diagnostic" },
              symbols = { error = " ", warn = " ", info = " ", hint = " " },
            },
            "encoding",
            "filetype",
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },

        inactive_sessions = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {
            {
              "filename",
              file_status = true, -- displays file status
              path = 1, -- shows relative file path
            },
          },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },

  -- animation
  {
    "nvim-mini/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
}
