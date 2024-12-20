# Eidolon.nvim colorscheme

<p align="center">
  <a
    href="https://github.com/Vallen217/eidolon.nvim/stargazers">
    <img src="https://img.shields.io/github/stars/Vallen217/eidolon.nvim?color=87bff7&style=for-the-badge&logo=starship&labelColor=12121f", alt="stars">
  </a>
  <a
    href="https://github.com/Vallen217/eidolon.nvim/issues">
    <img src="https://img.shields.io/github/issues/Vallen217/eidolon.nvim?color=bd4277&style=for-the-badge&logo=codecov&labelColor=12121f", alt="issues">
  </a>
  <a
    href="https://github.com/Vallen217/eidolon.nvim/network/members">
    <img src="https://img.shields.io/github/forks/Vallen217/eidolon.nvim?color=74d2b7&style=for-the-badge&logo=jfrog-bintray&labelColor=12121f", alt="forks">
  </a>
  <a
    href="https://github.com/Vallen217/eidolon.nvim/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/Vallen217/eidolon.nvim?color=aaecf8&style=for-the-badge&logo=jfrog-bintray&labelColor=12121f", alt="license"></a>
  </a>
</p>

## Eidolon-midnight

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/midnight_1.png?raw=true)

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/midnight_2.png?raw=true)

## Eidolon-twighlight

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/twilight_1.png?raw=true)

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/twilight_2.png?raw=true)

## Eidolon-dusk

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/dusk_1.png?raw=true)

![alt text](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/dusk_2.png?raw=true)

## Supported plugins

- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP](https://github.com/neovim/nvim-lspconfig)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [neogit](https://github.com/NeogitOrg/neogit)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Installation

Install the theme via your preferred package manager

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use("Vallen217/eidolon.nvim")
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "Vallen217/eidolon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd [[colorscheme eidolon]]
    end
},
```

## Usage

```lua
:colorscheme eidolon-midnight
:colorscheme eidolon-twilight
:colorscheme eidolon-dusk
```

```lua
vim.cmd [[colorscheme eidolon-midnight]]
vim.cmd [[colorscheme eidolon-twilight]]
vim.cmd [[colorscheme eidolon-dusk]]
```

### TODO
- Add support for:
    - [blink.cmp](https://github.com/Saghen/blink.cmp)
    - [mini.nvim](https://github.com/echasnovski/mini.nvim)
    - [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
    - [noice.nvim](https://github.com/folke/noice.nvim)
