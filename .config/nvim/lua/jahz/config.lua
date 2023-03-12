-- Move Highlighted Lines in normal and visual mode
vim.keymap.set("n", "J", ":m .+1<CR>==")
vim.keymap.set("n", "K", ":m .-2<CR>==")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.g.mapleader = " " -- Define leader key (for shortcuts using <leader>)
vim.opt.nu = true -- Display Line Numbers
vim.opt.relativenumber = true -- Display Relative Line Numbers (set to false if you want to improve your mental calculation skills)

vim.opt.tabstop = 4 -- Make tab char appears 4 cells wide
vim.opt.softtabstop = 4 -- Move cursor 4 cells for each tab
vim.opt.shiftwidth = 4 -- Use 4 spaces on auto-indent
vim.opt.expandtab = true -- Insert spaces instead of tabs

vim.opt.smartindent = true -- Automatically indent on new lines

vim.opt.wrap = false -- Line wrapping

vim.opt.termguicolors = true -- Enable 24-bit RGB color. Uses GUI attriutes for highlight instead of cterm
vim.opt.scrolloff = 8 -- Display Lines underneath / above cursor when scrolling
vim.opt.cmdheight = 0 -- Height of the cmd line. Setting to 0 will replace the statusline when entering a command
