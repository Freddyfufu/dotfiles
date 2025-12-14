return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            variant = "light",
            transparent = true,
            saturation = 1,
            italic_comments = false,
            hide_fillchars = false,
            borderless_pickers = false,
            terminal_colors = true,
            cache = false,
            highlights = {
                Comment = { fg = "#696969", bg = "NONE", italic = true },
            },
        })
    end,
}

