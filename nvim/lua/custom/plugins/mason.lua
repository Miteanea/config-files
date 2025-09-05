return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
             ensure_installed = { "lua_ls" , "roslyn" },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                     registries = {
                        'github:Crashdummyy/mason-registry',
                        'github:mason-org/mason-registry',
                      },
                }
            },
            "neovim/nvim-lspconfig",
        },
    }
}
