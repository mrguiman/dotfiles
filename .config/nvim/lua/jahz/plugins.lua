local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin install
-- Config added here with there respective plugins when short enough,
-- otherwise found in ~/.config/nvim/after/plugin folder
require("lazy").setup({

    -- Browsing and searching
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
            vim.keymap.set('n', '<leader>gf', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)
        end
    },
    { "nvim-telescope/telescope-file-browser.nvim",  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
        config = function()
            vim.api.nvim_set_keymap("n", "<leader>b", ":Telescope file_browser<CR>", { noremap = true }) -- open file browser
            vim.api.nvim_set_keymap("n", "<leader>cb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true }) -- open file browser on the path of the current buffer
        end
    },

    -- Highlighting, colors, status line
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons"} },
    {
        "sainnhe/sonokai",
        config = function()
            vim.g.sonokai_style = 'maia'
            vim.g.sonokai_better_performance = 1
            vim.cmd('colorscheme sonokai')
            vim.cmd('highlight NormalNC guibg=none')
            vim.cmd('highlight EndOfBuffer guibg=none')
            vim.cmd('highlight NvimTreeNormal guibg=none')
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },

    -- Completion and snippets
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer", -- buffer completion
    "hrsh7th/cmp-path", -- path completion
    "hrsh7th/cmp-cmdline", -- command line completion
    "hrsh7th/nvim-cmp", -- completion plugin

    { "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" }}, -- snippet engine, required by nvim-cmp
    "saadparwaiz1/cmp_luasnip",


    -- LSP
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim"
}, opts)
