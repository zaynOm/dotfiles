return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          border = "rounded",
          winhighlight = "Normal:MyHighlight",
          winblend = 0,
        },
        documentation = {
          window = {
            border = "rounded",
            winhighlight = "Normal:MyHighlight",
            winblend = 0,
          },
        },
      },
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     opts.window = {
  --       completion = {
  --         border = "rounded",
  --         winhighlight = "Normal:MyHighlight",
  --         winblend = 0,
  --       },
  --       documentation = {
  --         border = "rounded",
  --         winhighlight = "Normal:MyHighlight",
  --         winblend = 0,
  --       },
  --     }
  --     -- local cmp = require("cmp")
  --     -- opts.mapping = vim.tbl_extend("force", opts.mapping, {
  --     --   ["<M-e>"] = cmp.mapping(function(fallback)
  --     --     if cmp.visible() then
  --     --       cmp.close()
  --     --     end
  --     --     fallback()
  --     --   end),
  --     -- })
  --   end,
  -- },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- TODO: fix the diagnostics popup bg color
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    "snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          header = [[
███████╗ █████╗ ██╗   ██╗███╗   ██╗ ██████╗ ███╗   ███╗
╚══███╔╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔═══██╗████╗ ████║
  ███╔╝ ███████║ ╚████╔╝ ██╔██╗ ██║██║   ██║██╔████╔██║
 ███╔╝  ██╔══██║  ╚██╔╝  ██║╚██╗██║██║   ██║██║╚██╔╝██║
███████╗██║  ██║   ██║   ██║ ╚████║╚██████╔╝██║ ╚═╝ ██║
╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝
          ]],
        },
      },
      notifier = {
        timeout = 5000,
        top_down = false,
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
      views = {
        mini = { win_options = { winblend = 0 } },
        hover = {
          win_options = {
            -- winblend = 10,
            winhighlight = "Normal:Normal",
          },
        },
      },
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
    },
  },
}
