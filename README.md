# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# LSP on NixOS

By default, for most languages, LSP is disabled. So remember to put a corresponding `.lazy.lua` file into your project root:

```lua
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    cmd = { "clangd" },
                },
            },
        },
    },
}
```

