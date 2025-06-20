return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    {
		"folke/lazydev.nvim",
		ft="lua", -- only load lua files
		opts = {
		    library = {
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		    },
		},
	    }
	},
	config = function()
	    require("lspconfig").lua_ls.setup{}
	    require("lspconfig").jsonls.setup{}
	    require("lspconfig").angularls.setup{}
	    require("lspconfig").sqlls.setup{}

	end,
    }
}
