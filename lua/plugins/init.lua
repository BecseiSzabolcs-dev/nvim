return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                              , branch = '0.1.x',
	  dependencies = { 'nvim-lua/plenary.nvim' }
  }
}
