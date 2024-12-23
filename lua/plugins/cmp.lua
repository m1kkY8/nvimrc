return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = 'rafamadriz/friendly-snippets',

  -- use a release tag to download pre-built binaries
  version = '*',
  opts = {
    keymap = {
      preset = 'enter',
      ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
      ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' }
    },

    completion = {
      list = { selection = "manual" },
      -- Displays a preview of the selected item on the current line
      ghost_text = { enabled = true }
    },

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
