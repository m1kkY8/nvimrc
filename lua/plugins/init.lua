return {
  {
    'eandrju/cellular-automaton.nvim',
  },
  {
    'fei6409/log-highlight.nvim',
    config = function()
      require('log-highlight').setup {}
    end,
  },
  {
    'ThePrimeagen/vim-be-good'
  },
  { 'j-hui/fidget.nvim', opts = {} },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
}
