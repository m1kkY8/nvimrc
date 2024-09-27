# Installing Neovim

## Installing neovim on Arch

```bash
sudo pacman -S neovim
```

## Installing neovim manually on other distributions

### Build prerequisites

#### Ubuntu/Debian

```bash
sudo apt-get install ninja-build gettext cmake unzip curl
```

#### Fedora

```bash
sudo dnf -y install ninja-build cmake gcc make unzip gettext curl
```

#### Arch

```bash
sudo pacman -S base-devel cmake unzip ninja curl
```

### Clone neovim repo somewhere on system

```bash
git clone https://github.com/neovim/neovim
```

```bash
cd neovim && CMAKE_BUILD_TYPE=Release
```

```bash
git checkout stable
```

```bash
sudo make install
```

# Installing config

Remove existing neovim configs

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

Install new config

```bash
git clone https://github.com/m1kkY8/nvimrc ~/.config/nvim && nvim
```

# Installing LSP

Make sure to hava npm and clang installed

On Arch

```bash
sudo pacman -S npm clang
```

Open nvim and `:Mason` select LSP and (i)nstall it

For clang LSP make sure to have clang and clangd installed
