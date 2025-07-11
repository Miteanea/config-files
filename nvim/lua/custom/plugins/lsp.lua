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
	    require("lspconfig").bashls.setup{}

	    require('lspconfig').yamlls.setup {
	      settings = {
		yaml = {
		  schemas = {
		    -- Example: link to community-inferred schema or your own file
		    ["https://raw.githubusercontent.com/alexharv074/cloud-init-schema/main/cloud-init-schema.json"] = {
		      "cloud-config.yaml",
		      "cloud-init.yaml",
		      "*.cloud-init.yaml",
		      "user-data",
		    },
		  },
		  validate = true,
		  completion = true,
		  hover = true,
		},
	      },
	    }

	end,
    }
}
