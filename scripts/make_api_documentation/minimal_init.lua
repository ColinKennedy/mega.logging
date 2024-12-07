-- local root = vim.fn.fnamemodify("./.repro", ":p")
local root = vim.fs.dirname(vim.fn.tempname())

-- set stdpaths to use `root`
for _, name in ipairs({ "config", "data", "state", "cache" }) do
    vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
end

-- bootstrap lazy
local lazypath = root .. "/plugins/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end

vim.opt.runtimepath:prepend(lazypath)

local plugins =
    { load(vim.fn.system("curl -s https://raw.githubusercontent.com/ColinKennedy/mega.vimdoc/main/bootstrap.lua"))() }

require("lazy").setup(plugins, {
    root = root .. "/plugins",
})
