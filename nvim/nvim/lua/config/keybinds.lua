-- Yank to clipboard
vim.keymap.set({ "v", "n" }, "<leader>y", [["*y]], { desc = "Yank to clipboard" })
vim.keymap.set({ "v", "n" }, "<leader>Y", [["*Y]], { desc = "Yank line to clipboard" })

-- Neotree setup
vim.keymap.set("n", "<leader>e", function() vim.cmd("Neotree toggle") end, { desc = "File explorer" })
vim.keymap.set("n", "<leader>E", function() vim.cmd("Neotree toggle current") end, { desc = "File explorer (full)" })

-- Telescope setup
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", telescope.git_files, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Help tags" })

-- For handling buffer stuff
vim.keymap.set("n", "L", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "H", vim.cmd.bprevious, { desc = "Go to previous buffer" })

vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>bw", vim.cmd("bw"), { desc = "Wipeout buffer" })
