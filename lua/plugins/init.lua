return {
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = true, -- neo-tree will lazily load itself
	},
}
