# NeovimConfiguration
## Description
This is my neovim configuration file.
Before use, please ensure that `gcc` and `git` are installed.Your terminal needs to support `Nerd Font`.
And then can execute the following command to import the configuration file.

```shell
cp -r nvim/* ~/.config/nvim/
```

## Keymap
Some cases are mapped in `lua/core/keymap.lua`.Only cases modified by individuals are shown here.Please refer to the repository documentation for plugin cases.

|Key|Mode|Description|
|-|-|-|
|Space| |Leader key|
|Shift + j|View|Move the selected rows up|
|Shift + k|View|Move the selected rows down|
|Space + sv|Normal|Add a new window horizontally(Add a vertical window)|
|Space + sh|Normal|Add a new window vertically(Add a horizontal window)|
|Space + nh|Normal|Cancel the highlight when searching|
|Space + e|Normal|Open or close the directory tree|
|Space + ff|Normal|Retrieve file names matching keywords|
|Space + fg|Normal|Retrieve contents matching keywords|
|Shift + h|Normal|Switch to the left tag|
|Shift + l|Normal|Switch to the right tag|
## Plugins

### Theme

* [folke/tokyonight](https://github.com/folke/tokyonight.nvim)

Default choose is tokyonight-storm.
You can change `lua/core/options.lua` to switch themes.

### Highlight

* [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) -- Brackets color

You must install `nvim-treesitter`,if you use `nvim-ts-rainbow`.

### Status Bar 

* [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
* [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) -- Icons (require)

### Directory Tree

* [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
* [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) -- Icons (require)
* [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### LSP
* [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
* [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
* [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

### Automatic Imperfection

* [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
* [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) -- Snippet engine
* [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
* [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
* [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
* [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
* [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)

### Other

* [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) -- Buffer split line
* [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) -- Git tips
* [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) -- Fuzzy finder


## Reference

This configuration file is referenced from [dansoncut/Neovim-Configuration-Tutorial](https://github.com/dansoncut/Neovim-Configuration-Tutorial)
