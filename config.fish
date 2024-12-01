

set -g fish_greeting



# Functions
function StartMounted
    Weclome
end

function Weclome
    figlet "Weclome Posh" | lolcat -f
    figlet -f smslant "By : LiuLei" | lolcat -f
    figlet -f small "Just Like Do This!" | lolcat -f | boxes -d unicornthink
end

# Alias
# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree


# Abbr

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'
# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# If


# StartMounted
StartMounted
