require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "clangd",
    "html",
    "asm_lsp",
    "pyright",
    "cmake",
    "volar",
    "csharp_ls",
    "cssls",
    "bashls",
    "jsonld",
    "java_language_server",
    "tsserver",
    "eslint",
    "yamlls",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}

require("lspconfig").rust_analyzer.setup{
  capabilities = capabilities,
}

require("lspconfig").html.setup{
  capabilities = capabilities,
}

require("lspconfig").asm_lsp.setup{
  capabilities = capabilities,
}

require("lspconfig").pyright.setup{
  capabilities = capabilities,
}

require("lspconfig").cmake.setup{
  capabilities = capabilities,
}

require("lspconfig").volar.setup{
  capabilities = capabilities,
}

require("lspconfig").csharp_ls.setup{
  capabilities = capabilities,
}

require("lspconfig").cssls.setup{
  capabilities = capabilities,
}

require("lspconfig").bashls.setup{
  capabilities = capabilities,
}

require("lspconfig").jsonld.setup{
  capabilities = capabilities,
}

require("lspconfig").java_language_server.setup{
  capabilities = capabilities,
}

require("lspconfig").tsserver.setup{
  capabilities = capabilities,
}

require("lspconfig").eslint.setup{
  capabilities = capabilities,
}

require("lspconfig").yamlls.setup{
  capabilities = capabilities,
}
