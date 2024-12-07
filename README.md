# A Neovim Plugin Template

| <!-- -->     | <!-- -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Build Status | [![unittests](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/test.yml?branch=main&style=for-the-badge&label=Unittests)](https://github.com/ColinKennedy/mega.logging/actions/workflows/test.yml)  [![documentation](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/documentation.yml?branch=main&style=for-the-badge&label=Documentation)](https://github.com/ColinKennedy/mega.logging/actions/workflows/documentation.yml)  [![luacheck](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/luacheck.yml?branch=main&style=for-the-badge&label=Luacheck)](https://github.com/ColinKennedy/mega.logging/actions/workflows/luacheck.yml) [![llscheck](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/llscheck.yml?branch=main&style=for-the-badge&label=llscheck)](https://github.com/ColinKennedy/mega.logging/actions/workflows/llscheck.yml) [![stylua](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/stylua.yml?branch=main&style=for-the-badge&label=Stylua)](https://github.com/ColinKennedy/mega.logging/actions/workflows/stylua.yml)  [![urlchecker](https://img.shields.io/github/actions/workflow/status/ColinKennedy/mega.logging/urlchecker.yml?branch=main&style=for-the-badge&label=URLChecker)](https://github.com/ColinKennedy/mega.logging/actions/workflows/urlchecker.yml)  |
| License      | [![License-MIT](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](https://github.com/ColinKennedy/mega.logging/blob/main/LICENSE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Social       | [![RSS](https://img.shields.io/badge/rss-F88900?style=for-the-badge&logo=rss&logoColor=white)](https://github.com/ColinKennedy/mega.logging/commits/main/doc/news.txt.atom)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |

A template repository used to create Neovim plugins.


# Features
- Follows [nvim-best-practices](https://github.com/nvim-neorocks/nvim-best-practices)
- Fast start-up (~1 ms)
- Auto-release to [luarocks](https://luarocks.org) & [GitHub](https://github.com/ColinKennedy/mega.logging/releases)
- Automated user documentation (using [panvimdoc](https://github.com/kdheepak/panvimdoc))
- Automated API documentation (using [mini.doc](https://github.com/echasnovski/mini.doc))
- Vimtags generation
- Built-in Vim commands
- A high quality command mode parser
- Auto-completes your commands at any cursor position
- No external dependencies[*](https://github.com/ColinKennedy/mega.logging/wiki/External-Dependencies-Disclaimer)
- [LuaCATS](https://luals.github.io/wiki/annotations/) annotations and type-hints, everywhere
- [RSS feed support](https://github.com/ColinKennedy/mega.logging/commits/main/doc/news.txt.atom)
- Built-in logging to stdout / files
- Unittests use the full power of native [busted](https://github.com/lunarmodules/busted)
- Automated testing matrix supports 6 Neovim/OS combinations
    - neovim: `[v0.10.0, stable, nightly]`
    - os: `[ubuntu-latest, macos-latest]`
- 100% Lua
- Uses [Semantic Versioning](https://semver.org)
- Integrations
    - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    - `:checkhealth`
- Github actions for:
    - [StyLua](https://github.com/JohnnyMorganz/StyLua) - Auto-formats Lua code
    - [llscheck](https://github.com/jeffzi/llscheck) - Checks for Lua type mismatches
    - [luacheck](https://github.com/mpeterv/luacheck) - Checks for Lua code issues
    - [luarocks](https://luarocks.org) auto-release ([LUAROCKS_API_KEY secret](https://github.com/nvim-neorocks/sample-luarocks-plugin?tab=readme-ov-file#publishing-to-luarocks) configuration required)
    - [GitHub](https://github.com/ColinKennedy/mega.logging/releases) auto-release ([PERSONAL_ACCESS_TOKEN secret](https://github.com/nvim-neorocks/sample-luarocks-plugin?tab=readme-ov-file#installing-release-please-recommended) configuration required)
    - [mini.doc](https://github.com/echasnovski/mini.doc) - API documentation auto-generator
    - [panvimdoc](https://github.com/kdheepak/panvimdoc) - User documentation auto-generator
    - [urlchecker](https://github.com/urlstechie/urlchecker-action) - Checks for broken URL links
    - PR reviews - Reminds users to update `doc/news.txt`


# Using This Template
1. Follow the [Wiki instructions](https://github.com/ColinKennedy/mega.logging/wiki/Using-This-Template)
2. Once you're done, remove this section (the rest of this README.md file should be kept / customized to your needs)


# Installation
<!-- TODO: (you) - Adjust and add your dependencies as needed here -->
- [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "ColinKennedy/mega.logging",
    -- TODO: (you) - Make sure your first release matches v1.0.0 so it auto-releases!
    version = "v1.*",
}
```


# Configuration
(These are default values)

- [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "ColinKennedy/mega.logging",
    config = function()
        vim.g.mega_logging_configuration = {
            logging = {
                level = "info",
                use_console = false,
                use_file = false,
            },
        }
    end
}
```


# Tests
## Initialization
Run this line once before calling any `busted` command

```sh
eval $(luarocks path --lua-version 5.1 --bin)
```


## Running
Run all tests
```sh
luarocks test --test-type busted
# Or manually
busted --helper spec/minimal_init.lua .
# Or with Make
make test
```

Run test based on tags
```sh
busted --helper spec/minimal_init.lua . --tags=simple
```

# Tracking Updates
See [doc/news.txt](doc/news.txt) for updates.

You can watch this plugin for changes by adding this URL to your RSS feed:
```
https://github.com/ColinKennedy/mega.logging/commits/main/doc/news.txt.atom
```

# Other Plugins
This template is full of various features. But if your plugin is only meant to
be a simple plugin and you don't want the bells and whistles that this template
provides, consider instead using
[nvim-plugin-template](https://github.com/ellisonleao/nvim-plugin-template)
