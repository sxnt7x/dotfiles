-- Make tabs spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Relative numbers :)
vim.opt.nu = true
vim.opt.relativenumber = true

-- I think its needed for bufferline.nvim
vim.opt.termguicolors = true

-- Some other nice stuff
vim.opt.scrolloff = 8

-- It loads lazy.nvim then the keybinds to keybinds.lua can have keybinds for plugin stuff
require("config.lazy")
require("config.keybinds")

vim.diagnostic.config({ virtual_text = true })

-- So 'notify' doesn't complain
require("notify").setup({
    background_colour = "#000000",
})
