-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim",
        "--branch=main",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup("plugins")
