return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust", "javascript", "typescript" },
                sync_install = false,
                auto_install = true,

                highlight = {
                    enable = true,
                    disable = { "c" },
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    }
}
