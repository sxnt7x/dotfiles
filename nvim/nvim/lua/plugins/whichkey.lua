return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "helix",
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Local Keymaps",
        },
        {
            "<leader>b",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffers"
        },
        {
            "<leader>h",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Harpoon",
        },
        {
            "<leader>f",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Telescope",
        },
        {
            "<leader>g",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Git"
        },
    },
}
