local options = {
    number = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    backup = false,
    splitright = true,
    splitbelow = true,
    writebackup = false,
    swapfile = false,
    mouse = "a",
    pumheight = 10,
    updatetime = 300,
    signcolumn = "yes",
    scrolloff = 8,
    sidescrolloff = 8,
    hlsearch = false,
    incsearch = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
