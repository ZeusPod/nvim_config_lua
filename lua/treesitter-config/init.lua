
require('nvim-treesitter.install').compilers = {"clang"}
require'nvim-treesitter.configs'.setup {
 
  ensure_installed = { "python", "lua"},

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
