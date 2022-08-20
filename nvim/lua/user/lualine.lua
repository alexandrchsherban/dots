require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {"NvimTree"},
            winbar = {"NvimTree"},
        },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {''},
        lualine_c = {''},
        lualine_z = {''},
        lualine_y = {{'filetype', icon_only=true}},
        lualine_x = {{'diagnostics', sections = {'error', 'warn'}, always_visible = true}}
    },
    tabline = {
        lualine_a = {{'buffers', hide_filename_extension = false, symbols = {
        modified = ' ●',
        alternate_file = '',
        directory =  '',
      },
        filetype_names = {
        TelescopePrompt = 'Telescope',
        packer = 'Packer',
        NvimTree = 'NvimTree',
      },}}
    }
}
