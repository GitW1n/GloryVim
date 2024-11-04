## GloryVim

### Description
GloryVim is a minimalistic and powerful configuration of NeoVim, focused on development in Python, Lua. This project aims to create a user-friendly development environment with a focus on performance and extensibility.

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
sudo pacman -S neovim
```
Fedora:
```
sudo dnf install neovim
```
For macOS using Homebrew:
```
brew install neovim
```
Windows:
Step 1: Download Neovim
1. Visit the [Neovim Releases](https://github.com/neovim/neovim/releases) page.
2. Download the latest release in `.zip` format for Windows (look for a file named like `nvim-win64.zip`).

Step 2: Extract Neovim
1. Create a directory where you want to install Neovim. A common location is `C:\Program Files\Neovim`.
2. Extract the contents of the downloaded `.zip` file into the newly created directory.

Step 3: Add Neovim to the System PATH
1. Right-click on "This PC" or "My Computer" and select "Properties".
2. Click on "Advanced system settings".
3. In the System Properties window, click on the "Environment Variables" button.
4. In the Environment Variables window, find the `Path` variable in the "System variables" section and select it, then click "Edit".
5. In the Edit Environment Variable window, click "New" and add the path to the Neovim `bin` folder. This is usually `C:\Program Files\Neovim\bin`.
6. Click "OK" to close all dialog boxes.

Step 4: Verify Installation
1. Open PowerShell or Command Prompt.
2. Type `nvim` and press Enter. If Neovim starts, the installation was successful!

## 2.Installing Node.js
Make sure Node.js is installed. To install, you can use nvm (Node Version Manager):
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install node
```
For Windows, you can download the installer from the Node.js website(https://nodejs.org/en/download/package-manager) and follow the instructions.
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
Windows:
(https://www.python.org/)
Download the latest Python release from the Python website.
Run the installer and make sure to check "Add Python to PATH".
## 4. Cloning the GloryVim repository
Open a terminal and run the following command to clone the repository:
```bash
git clone https://github.com/GitW1n/GloryVim.git ~/.config/nvim
```
For Windows
### Step 1: Open PowerShell or Command Prompt
1. Press `Win + X` and select "Windows PowerShell" or "Command Prompt".

### Step 2: Clone the GloryVim Repository
1. Navigate to your desired configuration directory for Neovim (for example, `C:\Users\<YourUsername>\AppData\Local\nvim`). You can use the following command:
   ```powershell
   cd $HOME\AppData\Local\nvim
   
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
## 7. Installing Treesitter Dependencies
Treesitter is required for improved syntax highlighting and other code features. Make sure you have ```gcc``` or ```clang``` compiler installed, as Treesitter uses them to build parsers.
# Installing the compiler
For Ubuntu/Debian:
```
sudo apt install build-essential
```
Fedora:
```
sudo dnf install gcc gcc-c++
```
For macOS using Homebrew:
```
brew install gcc
```
Windows:
1. Make sure you have ```nvim-treesitter``` installed: Make sure the ```nvim-treesitter``` plugin is added to your ```plugins.lua``` file:
```
use 'nvim-treesitter/nvim-treesitter'
```
2. Opening Neovim: Launch Neovim and run the command to install the plugins:
```
:PackerInstall
```

3. Installing parsers: To install missing parsers, open Neovim and run the following command:
```
:TSInstall <language>
```
4. Replace <language> with your preferred language (eg ```python```, ```lua```, ```javascript```,```html, css```). To install all parsers use:
```
:TSInstall all
```
5. Verifying installation: Verify that the parsers are successfully installed by running the command:
```
:TSList
```
This command will show a list of installed parsers.
5. Additional dependencies: Some languages ​​may require you to install additional dependencies, such as tree-sitter-cli. You can install it via npm:
```
npm install -g tree-sitter-cli
```

## 8. Setting up dependencies
If you have specific dependencies for some plugins, follow the instructions in each plugin's documentation section.
## Completing the installation
After completing all the steps you should have a fully working GloryVim configuration. Launch Neovim and check that all plugins and settings are working correctly.
## Additional information
To familiarize yourself with the basic Neovim commands, you can run the ```:help``` command in the editor itself.
To get repository updates, use the ```git pull``` command in the ```~/.config/nvim``` folder.

## Troubleshooting
In development.
