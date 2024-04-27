return {
    "nvim-treesitter/playground",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>TSHighlightCapturesUnderCursor<CR>", opts)
    end
}
