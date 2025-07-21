return {
    "mason-org/mason.nvim",
    dependencies = {
        "mason-org/mason-lspconfig.nvim",
    },
    config = function()
        -- Make the icons nicer
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "",
                    package_pending = "",
                    package_uninstalled = ""
                }
            }
        })

        -- LSP configuration
        require("mason-lspconfig").setup({
            automatic_instalation = true,
            ensure_installed = {
                "cssls",
                "eslint",
                "jsonls",
                "pyright",
                "lua_ls",
                "rust_analyzer",
            }
        })
    end
}
