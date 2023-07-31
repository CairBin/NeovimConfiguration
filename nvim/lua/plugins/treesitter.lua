require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "cmake","go","make","php","ruby","sql","vue","yaml","c", "lua", "vim","cpp","json","java","bash","python","c_sharp","html","css","javascript","rust","typescript","markdown","markdown_inline","tsx" },
  highlight = {enable=true},
  indent = {enable = true},

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
