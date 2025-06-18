# Diego's Dotfiles

A collection of configuration files and setup scripts for my Linux development environment. This repository uses [GNU Stow](https://www.gnu.org/software/stow/) for dotfile management and includes configurations for various tools and applications.

## 🛠️ Tools & Configurations Included

- **Bash** - Shell configuration with custom aliases and settings
- **Starship** - Cross-shell prompt configuration
- **Zellij** - Terminal multiplexer configuration
- **Nix** - Package manager and system configuration
- **Home Manager** - Declarative dotfile management for Nix
- **Desktop Launchers** - Custom application launchers

## 📋 Prerequisites

Before running the setup script, ensure you have the following installed:

- **Git** - For cloning the repository
- **GNU Stow** - For symlink management
- **Nix** (optional) - For Nix-based package management
- **Home Manager** (optional) - For declarative package and configuration management with Nix

### Installing Prerequisites

#### On Ubuntu/Debian:

```bash
sudo apt update
sudo apt install git stow
```

#### On Fedora/RHEL:

```bash
sudo dnf install git stow
```

#### On Arch Linux:

```bash
sudo pacman -S git stow
```

#### Installing Nix (optional):

```bash
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
```

#### Installing Home Manager (optional):

```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

## 🚀 Quick Setup

### Automatic Setup (Recommended)

The easiest way to set up these dotfiles is using the provided setup script:

```bash
# Download and run the setup script directly
curl -fsSL https://raw.githubusercontent.com/Diego-HC/dotfiles/main/setup.sh | bash

# Or clone manually and run
git clone https://github.com/Diego-HC/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x setup.sh
./setup.sh
```

### What the Setup Script Does

The `setup.sh` script performs the following actions:

1. **Dependency Check** - Verifies that `git` and `stow` are installed
2. **Repository Cloning** - Clones the dotfiles repository to `~/dotfiles` if not present
3. **Stow Configuration** - Uses GNU Stow to create symlinks for all configuration directories
4. **Home Manager Setup** - Runs `home-manager switch` if Home Manager is available

The script will automatically stow all configuration directories, creating the necessary symlinks in your home directory.

## 📁 Repository Structure

```
dotfiles/
├── README.md               # This file
├── setup.sh                # Automated setup script
├── bash/                   # Bash shell configuration
│   ├── .bashrc             # Main bash configuration
│   ├── .bash_aliases       # Custom aliases
│   └── .bash/              # Additional bash scripts
├── starship/               # Starship prompt configuration
│   └── .config/starship.toml
├── zellij/                 # Zellij terminal multiplexer config
│   └── .config/zellij/
├── home-manager/           # Home Manager configuration
│   └── .config/home-manager/
├── nixpkgs/                # Nixpkgs configuration
│   └── .config/nixpkgs/
└── desktop-launchers/      # Custom desktop application launchers
    └── .local/share/applications/
```

## 🔧 Manual Setup

If you prefer to set up manually or want more control over the process:

### 1. Clone the Repository

```bash
git clone https://github.com/Diego-HC/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Stow Individual Configurations

You can stow configurations selectively:

```bash
# Stow bash configuration
stow bash

# Stow starship configuration
stow starship

# Stow zellij configuration
stow zellij
```

### 3. Home Manager Setup (if using Nix)

If you have Home Manager installed:

```bash
home-manager switch
```

## 🎯 Customization

### Adding New Configurations

1. Create a new directory for your tool (e.g., `neovim/`)
2. Add your configuration files in the appropriate subdirectory structure
3. Run `stow neovim` to create symlinks

### Modifying Existing Configurations

- Edit files directly in the dotfiles repository
- Changes will be reflected immediately due to symlinks
- Commit and push changes to keep them synchronized

## 🔄 Updating

To update your dotfiles:

```bash
cd ~/dotfiles
git pull origin main

# Re-run home-manager if you use it
home-manager switch
```

## 🚨 Troubleshooting

### Stow Conflicts

If Stow encounters conflicts (existing files/directories), you can:

```bash
# Force stow (will overwrite existing files)
stow --adopt <package-name>

# Or backup and remove conflicting files manually
mv ~/.bashrc ~/.bashrc.backup
stow bash
```

### Permission Issues

Ensure the setup script is executable:

```bash
chmod +x setup.sh
```

### Missing Dependencies

If the setup script fails, install the required dependencies:

```bash
# Check if git and stow are installed
which git stow

# Install missing dependencies using your package manager
```

## 📝 Notes

- This configuration is tailored for Linux environments
- Some configurations may require additional software to be installed
- The setup script is idempotent - it's safe to run multiple times
- Backup your existing dotfiles before running the setup

---

_Happy coding! 🚀_
