return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "java",
                "typescript",
            },
            highlight = {
                enable = true,
                disable = { "vim" },
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
