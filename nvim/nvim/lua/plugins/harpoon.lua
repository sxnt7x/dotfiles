return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

--        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
--        vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
--        vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
--        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
--
--        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
--        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local function finder()
                local file_paths = {}
                for _, item in ipairs(harpoon_files.items) do
                    table.insert(file_paths, item.value)
                end

                return require("telescope.finders").new_table({
                    results = file_paths
                })
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = finder(),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
                attach_mappings = function(bufnr, map)
                    map(
                        "i",
                        "<C-d>",
                        function()
                            local state = require("telescope.actions.state")
                            local selected_entry = state.get_selected_entry()
                            local current_picker = state.get_current_picker(bufnr)

                            harpoon:list():remove_at(selected_entry.index)
                            current_picker:refresh(finder())
                        end
                    )
                    return true
                end
            }):find()
        end

        vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open Harpoon" })

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file into harpoon" })
    end
}
