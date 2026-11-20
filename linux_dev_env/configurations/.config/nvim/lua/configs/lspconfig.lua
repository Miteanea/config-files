require("nvchad.configs.lspconfig").defaults()

local servers = {
  "angularls",
  "bashls",
  "html",
  "cssls",
  "jsonls",
  "ts_ls",
}
vim.lsp.enable(servers)

vim.lsp.config("roslyn", {})

-- read :h vim.lsp.config for changing options of lsp servers
