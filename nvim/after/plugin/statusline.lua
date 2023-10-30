local statusline = require("lualine")
statusline.setup {
    options = {
        globalstatus = true,
    },
}

local tabline = require("tabline")
tabline.setup {
    options = {
        show_tabs_always = true
    }
}
