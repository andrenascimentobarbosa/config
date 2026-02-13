if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '   

count() {
    find "$1" -maxdepth 1 -type f | wc -l
}

export VISUAL=vim
export EDITOR=vim

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mp4='yt-dlp -k -o "%(title)s.%(ext)s" --recode-video mp4 --postprocessor-args "-vcodec libx264 -acodec aac"'
alias mp3='yt-dlp -x --audio-format mp3'
alias zs='vi ~/.bashrc'
alias sz='source ~/.bashrc'
alias txt='gnome-text-editor'
alias pdf='libreoffice --headless --convert-to pdf'
alias nokia='cd "/run/user/1000/gvfs/mtp:host=HMD_Global_QM215-QRD__SN%3ADCF5C48E_BE390B9LU/Internal Storage/music"'
