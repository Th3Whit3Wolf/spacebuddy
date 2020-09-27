# Space-nvim

A spacemacs inspired dark and light colorscheme using [tjdevries/colorbuddy.vim](https://github.com/tjdevries/colorbuddy.vim)

This plugin is also an example of how easy it is to customize and make new colorschemes based on `colorbuddy`.

Check out [`lua/space-nvim.lua`](lua/space-nvim.lua)

## Screenshots

Dark theme

![dark theme](assets/dark.png)

Light theme

![light theme](assets/light.png)

*Font:* Jet Brains Mono
*Statusline:* [Spaceline](https://github.com/glepnir/spaceline.vim)
*RGB Highlightin:* [nvim-colorizer.](https://github.com/norcalli/nvim-colorizer.lua)

### Getting Started

You have to make sure you install [tjdevries/colorbuddy.vim](https://github.com/tjdevries/colorbuddy.vim) Only termguicolors are supported and that will not change.

#### Vim Plug

```vim
Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/space-nvim-theme'

" And then somewhere in your init.vim, to set the colorscheme
lua require('colorbuddy').colorscheme('space-nvim')
```

#### Minpac

```vim
call minpac#add('tjdevries/colorbuddy.vim')
call minpac#add('Th3Whit3Wolf/space-nvim-theme')

" And then somewhere in your init.vim, to set the colorscheme
lua require('colorbuddy').colorscheme('space-nvim')
```

#### Vim Packages

In the terminal execute this command.

```sh
cd ~/.local/share/nvim/site/pack/start/
git clone https://github.com/tjdevries/colorbuddy.nvim
git clone https://github.com/Th3Whit3Wolf/space-nvim-theme
```

In your `init.vim` add the following

```vim
packadd! space-nvim-theme
```

```vim
lua require('colorbuddy').colorscheme('space-nvim')
```

or

```vim
colorscheme space-nvim
```

### NOTE

- Vim is not supported because the theme is written in lua.
- If you feel like a language should be highlighted differently please open an issue.

### TODO

- [ ] Better LSP Highlighting
- [ ] Better Diagnostic Highlighting
- [ ] Better Tree Sitter Highlighting
