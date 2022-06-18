# Enable colors and change prompt:
autoload -U colors && colors
PS1="%{$fg[green]%}%n%{$reset_color%}@%{$reset_color%}%M %{$fg[green]%}%~%{$reset_color%}> "

# Custom Variables
EDITOR=nvim

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory
unsetopt beep

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load aliases and shortcuts if existent.
[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

# Load plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null

# Aliases
alias ls="ls --color=auto"
alias rm=trash
alias hardrm="bleachbit --shred"
alias screenSwap="sh /home/kai/.dotfiles/scripts/screenSwap.sh"
alias hibernate="systemctl hibernate"
alias pac="paru"
alias bright="xrandr --output eDP-1 --brightness"
alias screenshot="flameshot launcher"
alias lf=lfub

# Path
export PATH=$PATH:/home/kai/.local/bin

# LF icons
export LF_ICONS="di=📁:\
fi=:\
tw=🤝:\
ow=📂:\
ln=:\
or=❌:\
ex=:⌖\
*.txt=:\
*.mom=:\
*.me=:\
*.ms=:\
*.png=:\
*.webp=:\
*.ico=:\
*.jpg=:\
*.jpe=:\
*.jpeg=:\
*.gif=:\
*.svg=:\
*.tif=:\
*.tiff=:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=:\
*.djvu=:\
*.epub=:\
*.csv=:\
*.xlsx=:\
*.tex=📜:\
*.md=📜:\
*.r=📜:\
*.R=📜:\
*.rmd=📜:\
*.Rmd=📜:\
*.m=📜:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎵:\
*.wav=🎵:\
*.mkv=:\
*.mp4=🎵:\
*.webm=:\
*.mpeg=:\
*.avi=:\
*.mov=:\
*.mpg=:\
*.wmv=:\
*.m4b=:\
*.flv=:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=:\
*.jar=♨:\
*.java=♨:\
"
# LS colors theme

export LS_COLORS="di=34:fi=0:ln=36:pi=5:so=5:bd=5:cd=5:or=31:ex=32:*.png=35:*.jpg=35:*.gif=35:*.zip=31:*.tar=31:*.7zip=31:*.pdf=93"

sh ~/.dotfiles/scripts/tmuxStart.sh
