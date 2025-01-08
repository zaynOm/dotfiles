return {
  {
    "saghen/blink.cmp",
    --- @param opts blink.cmp.Config
    opts = function(_, opts)
      opts.keymap = {
        preset = "super-tab",
      }
    end,
    -- opts = {
    --   completion = {
    --     menu = {
    --       auto_show = false,
    --     },
    --     documentation = {
    --       auto_show = false,
    --     },
    --   },
    -- },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          -- mason = false,
          settings = {
            pylsp = {
              plugins = {
                -- rope_completion = { enabled = true }, -- fixes the auto completion order
                -- rope_autoimport = { enabled = true },
                pylsp_mypy = { enabled = true },
                pycodestyle = { enabled = false },
                flake8 = { enabled = false },
                pyflakes = { enabled = false },
                mccabe = { enabled = false },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- desabled by default
                pylint = { enabled = false },
              },
            },
          },
        },
        emmet_language_server = {
          --FIX: disable emmet outside jsx/tsx
          settings = {
            emmet = {
              filetypes = {
                "css",
                "html",
                "javascriptreact",
                "typescriptreact",
                "less",
                "sass",
                "scss",
                "svelte",
                "pug",
                "vue",
              },
              init_options = {
                -- jsx = true,
                html = {
                  options = {
                    -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                    ["bem.enabled"] = true,
                    ["jsx.enabled"] = true,
                  },
                },
                -- showSuggestionsAsSnippets = true,
              },
            },
          },
        },
        cssls = {},
      },
    },
  },
}
