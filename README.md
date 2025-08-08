<div align="center">

# user_api.nvim

_A set of wrappers and utilities for Neovim configuration/plugin generation._

</div>

## Table Of Contents

1. [Installation](#installation)
    1. [`lazy.nvim`](#lazynvim)
    1. [`pckr.nvim`](#pckrnvim)

---

## Installation

### `lazy.nvim`

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

### `pckr.nvim`

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
