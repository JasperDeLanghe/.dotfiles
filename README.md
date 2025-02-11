# .dotfiles

## Table of Contents

- [.dotfiles](#dotfiles)
  - [Table of Contents](#table-of-contents)
  - [macOS](#macos)
  - [Linux](#linux)

## macOS

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:JasperDeLanghe/.dotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/JasperDeLanghe/.dotfiles.git ~/.dotfiles
```

3. Install oh-my-zsh.

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. Install the following applications:

   1. [Wezterm](https://wezterm.org/)
   2. [Starship](http://starship.rs/)

5. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config ~/.config
```

**Todo: add Brewfile from my macbook**

5. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

## Linux

1. Clone repo.

```zsh
# Use SSH (if set up)...
git clone git@github.com:JasperDeLanghe/.dotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/JasperDeLanghe/.dotfiles.git ~/.dotfiles
```

2. Install oh-my-zsh.

```zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Install the following applications:

   1. [Wezterm](https://wezterm.org/)
   2. [Starship](http://starship.rs/)

4. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config ~/.config
```
