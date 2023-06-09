return {
    {
        "rose-pine/neovim",
        lazy = true,
        name = 'rose-pine',
        config = function()
        require'rose-pine'.setup ({
            --- @usage 'auto'|'main'|'moon'|'dawn'
            variant = 'moon',
            --- @usage 'main'|'moon'|'dawn'
            dark_variant = 'moon',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = false,
            disable_float_background = false,
            disable_italics = false,

            --- @usage string hex value or named color from rosepinetheme.com/palette
            groups = {
                background = 'base',
                background_nc = '_experimental_nc',
                panel = 'surface',
                panel_nc = 'base',
                border = 'highlight_med',
                comment = 'muted',
                link = 'iris',
                punctuation = 'subtle',

                error = 'love',
                hint = 'iris',
                info = 'foam',
                warn = 'gold',

                headings = {
                    h1 = 'iris',
                    h2 = 'foam',
                    h3 = 'rose',
                    h4 = 'gold',
                    h5 = 'pine',
                    h6 = 'foam',
                }
                -- or set all headings at once
                -- headings = 'subtle'
            },

            -- Change specific vim highlight groups
            -- https://github.com/rose-pine/neovim/wiki/Recipes
            highlight_groups = {
                ColorColumn = { bg = 'rose' },

                -- Blend colours against the "base" background
                CursorLine = { bg = 'foam', blend = 10 },
                StatusLine = { fg = 'love', bg = 'love', blend = 10 },
            }
        })
        end,
    },

    {
        "nordtheme/vim",
        lazy = true,
        name = 'nordtheme',
        config = function()
        end,
    },

    {
        "catppuccin/nvim",
        lazy = true,
        name = 'catppuccin',
        config = function()
            require'catppuccin'.setup({
                integrations = {
                    cmp = true,
                    treesitter = true,
                    telescope = true,
                    neotree = true,
                    lsp_trouble = true,
                    which_key = true,
                    -- For more plugins integrations https://github.com/catppuccin/nvim#integrations
                    indent_blankline = {
                        enabled = true,
                        colored_indent_levels = false,
                    },
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                        },
                    },
                    dap = {
                        enabled = true,
                        enable_ui = true, -- enable nvim-dap-ui
                    },
                },
            })
        end,
    },
}
