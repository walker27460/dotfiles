local statusline = require("lualine")
statusline.setup {
    tabline = {
        lualine_a = { "filename" }
    }
}
