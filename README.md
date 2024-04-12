# Introduction

This repository contains simple but effective configurations for `tmux` and `Neovim` (nvim). To seamlessly integrate these configurations into your environment, I recommend using symbolic links (symlinks). This approach allows you to keep your configurations version-controlled and easily update them.

Note:
The nvim config uses [nvim-kickstart](https://github.com/nvim-lua/kickstart.nvim) as a base.

# Setup Instructions

You'll need to download nvim/tmux as well as setup a nerdfont for your terminal. I use [Hack Nerd Font](https://www.nerdfonts.com/font-downloads). Otherwise there will be unrecognized symbols.

Ubuntu:

```bash
sudo apt update
sudo apt install neovim tmux
```

## Install External Dependencies (Kickstarter)

    NOTE Backup your previous configuration (if any exists)

### External Requirements:

    Basic utils: git, make, unzip, C Compiler (gcc)
    ripgrep
    A Nerd Font: optional, provides various icons
        if you have it set vim.g.have_nerd_font in init.lua to true
    Language Setup:
        If want to write Typescript, you need npm
        If want to write Golang, you will need go
        etc.



To use these configurations, you'll need to create symlinks from your system's configuration directories to the files/directories in this repository. Here's how to do it:

## Neovim Configuration

First, ensure that the `~/.config/nvim` directory does not already exist or is backed up if you have existing configurations. Then, run:

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```

This command creates a symlink that makes `nvim` use the configuration files located in `~/dotfiles/nvim`.

## Tmux Configuration

Similarly, for `tmux`, ensure you do not have an existing `~/.tmux.conf` or back it up if necessary. Then, run:
```bash
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

This creates a symlink so that `tmux` will read its configuration from the `tmux.conf` file in your dotfiles.

## Zsh Configuration

See:
https://github.com/romkatv/powerlevel10k
for p10k

```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

You'll also need to download the plugins
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/plugins/zsh-history-substring-search
```

