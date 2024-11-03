## GloryVim

### Description

## Installation

### Requirements
Before installation, make sure you have the following components installed:

1.Neovim: version 0.5 or higher.

2.Node.js: required for some plugins to work.

3.Python 3: To support Python development.

4.Git: for cloning a repository.

5.Packer: package manager for Neovim (will be installed automatically).

### Installation steps
## 1.Neovim
If you don't already have Neovim installed, run the following commands in a terminal:
Ubuntu/Debian:
```bash
sudo apt update
sudo apt install neovim
```
Arch Linux:
```
sudo dnf install neovim
```
Fedora:
```
sudo pacman -S neovim
```
For macOS using Homebrew:
```
brew install neovim
```
## 2.Installing Node.js
Make sure Node.js is installed. To install, you can use nvm (Node Version Manager):
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install node
```
## 3. Install Python
Make sure Python 3 is installed. To install use:
For Ubuntu/Debian:
```
sudo apt install python3 python3-pip
```
Fedora:
```
sudo dnf install python3 python3-pip
```
For macOS using Homebrew:
```
brew install python
```
## 4. Cloning the GloryVim repository
Open a terminal and run the following command to clone the repository:
```bash
git clone https://github.com/GitW1n/GloryVim.git ~/.config/nvim
```
## 5. Packer installation
If Packer is not installed, you can install it like this:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
For Windows:
```powershell
git clone --depth 1 https://github.com/wbthomason/packer.nvim `
  $HOME\AppData\Local\nvim\site\pack\packer\start\packer.nvim
```
## 6. Installing plugins
Open Neovim and run the following command to install the plugins:
```vim
:PackerInstall
```
## 7. Setting up dependencies
If you have specific dependencies for some plugins, follow the instructions in each plugin's documentation section.
## Completing the installation
After completing all the steps you should have a fully working GloryVim configuration. Launch Neovim and check that all plugins and settings are working correctly.
## Additional information
To familiarize yourself with the basic Neovim commands, you can run the ```:help``` command in the editor itself.
To get repository updates, use the ```git pull``` command in the ```~/.config/nvim``` folder.
