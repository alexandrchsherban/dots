require("gruvbox").setup({
    undercurl = false,
    underline = false,
    bold = false,
    italic = false,
    strikethrough = false,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, 
    contrast = "", -- can be "hard", "soft" or empty string
})
vim.cmd("colorscheme gruvbox")
