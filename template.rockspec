-- A template that will be replaced by the .github/workflows/relase-luarocks.yml file
--
-- Reference:
--     Example template https://github.com/nvim-neorocks/luarocks-tag-release/blob/master/resources/rockspec.template
--

local git_ref = "$git_ref"
local modrev = "$modrev"
local specrev = "$specrev"

local repo_url = "$repo_url"

rockspec_format = "3.0"
package = "mega.logging"
version = modrev .. "-" .. specrev

local user = "ColinKennedy"

description = {
    homepage = "https://github.com/" .. user .. "/" .. package,
    labels = { "neovim", "neovim-plugin" },
    license = "MIT",
    summary = "A Neovim plugin for logging to Neovim or to disk",
}

test_dependencies = {
    "busted >= 2.0, < 3.0",
    "lua >= 5.1, < 6.0",
    "nlua >= 0.2, < 1.0",
}

-- Reference: https://github.com/luarocks/luarocks/wiki/test#test-types
test = { type = "busted" }

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "$repo_name-" .. "$archive_dir_suffix",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git"),
    }
end

build = {
    type = "builtin",
    copy_directories = $copy_directories,
}
