return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    -- statusline
    use 'nvim-lualine/lualine.nvim'

    -- icons
    use 'kyazdani42/nvim-web-devicons'
    
    -- colorscheme
    use 'ellisonleao/gruvbox.nvim'

    -- file explorer
    use 'kyazdani42/nvim-tree.lua'

    -- telescope
    use 'nvim-telescope/telescope.nvim'

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- nvim-comment
    use 'terrortylor/nvim-comment'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
