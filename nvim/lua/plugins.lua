local P = {
    { "folke/lazy.nvim", branch = "stable" },
    {
        "ms-jpq/coq_nvim", 
        branch = "coq",
        dependencies = { "ms-jpq/coq.artifacts", branch = "artifacts" }
    },
    { "ms-jpq/chadtree", branch = "chad" },

    "folke/tokyonight.nvim",
    "nvim-treesitter/nvim-treesitter",
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "nvim-lualine/lualine.nvim",
    "kdheepak/tabline.nvim"
}

return P
