return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = 'rafamadriz/friendly-snippets',

  -- use a release tag to download pre-built binaries
  version = '*',
  opts = {
    keymap = {
      preset = 'enter',
    },
    -- Displays a preview of the selected item on the current line

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    signature = { enabled = true },

    sources = {
      default = { 'lsp', 'path', 'snippets' },
    },
  },
  opts_extend = { "sources.default" }
}
