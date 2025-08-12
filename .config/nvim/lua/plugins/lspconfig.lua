return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    "VonHeikemen/lsp-zero.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
 -- example calling setup directly for each LSP
  config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
      }
    })
    require("lsp-zero")
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig["lua_ls"].setup({ capabilities = capabilities })
    lspconfig["clangd"].setup({ capabilities = capabilities })
  end
}
