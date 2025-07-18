return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
            mode = "buffers",
            diagnostics = "nvim_lsp",
            show_buffer_close_icons = "true",
            separator_style = "thin"
        }
    },
}
