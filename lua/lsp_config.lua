require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "pyright","rust_analyzer"},
})


require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").rust_analyzer.setup{}
