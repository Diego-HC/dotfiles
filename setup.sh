#!/usr/bin/env bash

# Clone dotfiles repo if not present
if [ ! -d "$HOME/dotfiles" ]; then
    echo "Cloning dotfiles repo to $HOME/dotfiles"
    git clone https://github.com/Diego-HC/dotfiles.git
fi

# Stow dotfiles
echo "Stowing dotfiles from $HOME/dotfiles"
cd "$HOME/dotfiles" || exit 1

# Loop over all non-hidden directories
for dir in */; do
    # Remove trailing slash
    dir="${dir%/}"
    
    # Skip if it's not a directory or starts with a dot
    [[ "$dir" == .* ]] && continue
    [[ ! -d "$dir" ]] && continue
    
    echo "Stowing $dir..."
    stow "$dir"
done
