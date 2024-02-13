# Installing Neovim 

## Installing neovim on Arch
```
sudo pacman -S neovim
```

## Installing neovim manually on other distributions
### Build prerequisites
#### Ubuntu/Debian
```
sudo apt-get install ninja-build gettext cmake unzip curl
```

#### Fedora
```
sudo dnf -y install ninja-build cmake gcc make unzip gettext curl
```

#### Arch
```
sudo pacman -S base-devel cmake unzip ninja curl
```

### Clone neovim repo somewhere on system
```
git clone https://github.com/neovim/neovim
```
```
cd neovim && CMAKE_BUILD_TYPE=Release
```
```
git checkout stable
```
```
sudo make install
```

# Installing config

Remove existing neovim configs
```
rm -rf ~/.config/nvim 
rm -rf ~/.local/share/nvim
```

Install new config
```
git clone https://github.com/m1kkY8/nvimrc ~/.config/nvim && nvim
```

# Installing LSP

Make sure to hava npm and clang installed

On Arch
```
sudo pacman -S npm clang
```

Open nvim and ```:Mason``` select LSP and (i)nstall it

For clang LSP make sure to have clang and clangd installed
