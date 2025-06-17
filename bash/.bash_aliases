# Source bash files under aliases folder
for file in "$HOME/.bash/aliases/"*.bash; do
  [ -r "$file" ] && source "$file"
done

alias ls='eza --icons'
alias cd='z'
alias cat='bat'
alias l='ls'
alias c='code'
alias open='xdg-open'
alias ns='nix-shell -p'
alias top='btop'
alias winmnt='sudo mount /dev/nvme0n1p3 /mnt/win/'

