<div align="center">

# user_api.nvim

_A set of wrappers and utilities for Neovim configuration/plugin generation._

</div>

## Table Of Contents

1. [Installation](#installation)
    1. [`lazy.nvim`](#lazy-nvim)
    1. [`pckr.nvim`](#pckr-nvim)

---

## Installation

<h3 id="lazy-nvim">

[`lazy.nvim`](https://github.com/folke/lazy.nvim)

</h3>

```lua
require('lazy').setup({
    spec = {
        {
            'DrKJeff16/user_api.nvim',
            main = 'user_api',
            lazy = false,
            priority = 1000,
            dependencies = {
                'folke/which-key.nvim',
                'rcarriga/nvim-notify',
                'nvim-lua/plenary.nvim',
            },
        },
    },
})
```

<h3 id="pckr-nvim">

[`pckr.nvim`](https://github.com/lewis6991/pckr.nvim)

</h3>

```lua
require('pckr').add({
    {
        'DrKJeff16/user_api.nvim',
        requires = {
            'folke/which-key.nvim',
            'rcarriga/nvim-notify',
            'nvim-lua/plenary.nvim',
        },
    },
})
```

