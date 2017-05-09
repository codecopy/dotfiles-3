alias -g C='| wc -l'
alias -g G='| egrep'
alias -g X='| xclip'
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias :Q=' exit'
alias :q=' exit'
alias :x=' exit'
alias agentcurl='curl -H \"User-Agent: Mozilla/5.0 (Windows; U; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\"'
alias apps='thunar /usr/share/applications/'
alias archey='archey3'
alias aurf='yaourt --force --noconfirm'
alias aurpk='yaourt -G'
alias c='clear'
alias calc='speedcrunch'
alias cat='pygmentize -g'
alias cd..='cd ..'
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias cls='echo -ne "\033c"'
alias conn='netstat -Wat | grep ESTABLISHED'
alias copy='rsync -avh -progress'
alias copylast='fc -ln -1 | awk '\''{$1=$1}1'\'' | pbcopy'
alias count='ls -la | wc -l'
alias cp='acp -g'
alias cp='cp -i'
alias cplast='fc -ln -1 | awk '\''{$1=$1}1'\'' | pbcopy'
alias cpuz='inxi -F'
alias diff='git diff HEAD~1'
alias dirsize='du -hs *'
alias dirsizesort='du -hs * | sort -h'
alias dots='cd ~/Git/dotfiles'
alias dnet='sudo killall dhcpcd; sudo dhcpcd; ping 8.8.8.8'
alias dockerkill='docker stop $(docker ps -a -q)'
alias e='extract'
alias ea='vim ~/zsh/aliases.zsh'
alias eb='vim ~/.zshrc'
alias ef='vim ~/zsh/functions.zsh'
alias ep='vim ~/zsh/prompt.zsh'
alias error='sudo journalctl -p 0..3 -xn'
alias fa='echo "updatedb?" && locate -i '
alias failed='sudo systemctl --failed'
alias fastwget='aria2c -x 16'
alias fc-list='xlsfonts'
alias find='rg --files'
alias files='pacman -Ql' # find files containing to package
alias filescount='locate '' | sed "s|/[^/]*$|/|g" | sort | uniq -c | sort -n | tee filesperdirectory.txt | tail'
alias findall='locate -i'
alias fonts='xlsfonts'
alias gaa='git add .'
alias gb='git remote update origin --prune && git branch -a'
alias gba='git branch -a'
alias gc='git commit'
alias gco='git checkout'
alias gdob='git push origin --delete'
alias gitm='git commit -m'
alias glb='git branch -a'
alias glog='sudo gnome-logs'
alias gp='git pull'
alias gpsu='git push --set-upstream'
alias gpsuo='git push --set-upstream origin'
alias gr='git reset'
alias grep='/usr/bin/grep $GREP_OPTIONS'
alias gs='git status'
alias hash='md5sum'
# alias history='history 1'
alias history='echo use control r'
alias i='sudo pacman -S'
alias ifind='pagrep'
alias ii='s apt-get install -f'
alias inet='ping 8.8.8.8'
alias infile='pagrep'
alias infilefind='pagrep'
alias infilesearch='pagrep'
alias iomonitor='watch -n 0.1 iostat'
alias iowatch='iomonitor'
alias is='s apt-cache search'
alias isearch='pagrep'
alias journalctl='journalctl --no-pager -n 2000'
alias k='killall -9'
alias kernellog='dmesg'
alias killdocker='docker stop $(docker ps -a -q)'
alias l='ls -CF'
alias la='ls -A'
alias lasti='yaourt -Q --date'
alias lastinstalled='yaourt -Q --date'
alias lastp='yaourt -Q --date'
alias listdate='yaourt -Q --date'
alias listp='pacman -Qit | grep "Name\|Description\|Required By\|Depends On\|Build Date\|Install Date\|Install Reason\|^$"'
alias listpall='pacman -Qi | grep "Name\|Description\|Required By\|Depends On\|Build Date\|Install Date\|Install Reason\|^$"'
alias lit='cd /home/x/Git/MA_FabianBeuke/literature'
alias ll='ls -alF'
alias ln='ln -i'
alias log='journalctl'
alias logs='journalctl'
alias ls='ls --color=auto'
alias lssize='ls -fld *(OL)'
alias lsof='lsof -Pni'
alias m='mousepad'
alias mail='mutt'
alias mpacman='yaourt --m-arg "--skipchecksums --skippgpcheck" -Sb'
alias md5='md5sum'
alias mocp='mocp -T red_theme'
alias mount='sudo mount -o umask=0,uid=nobody,gid=nobody'
alias moveup='mv * .[^.]* ..'
alias mv='amv -g'
alias mv='mv -i'
alias nano='vim'
alias newfiles='ls -ld *(/om[1])'
alias p='echo "USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND" && ps aux | grep --color=auto'
alias paclog='plv'
alias parallel='parallel --no-notice'
alias pic='ristretto'
alias pip='pip install --user'
alias pkill='pkill -f'
alias ports='sudo lsof -Pni'
alias portscanme='nmap -vvv -A $(wget http://ipinfo.io/ip -qO -) -p 0-65535'
alias r='sudo pacman -R'
alias random='echo $RANDOM'
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias rdr='rake db:migrate:reset && rake db:seed'
alias rds='time rake db:seed'
alias removeorphans='sudo pacman -Rns $(pkg-list_true_orphans)'
alias rm=' timeout 3 rm -Iv --one-file-system'
alias rm='rm -i'
alias run='dmenu_run'
alias speed='wget -O /dev/null http://speedtest.tele2.net/1000GB.zip'
alias speedtest='wget -O /dev/null http://speedtest.tele2.net/1000GB.zip'
alias setdate='timedatectl'
alias settime='setdate'
alias shutdown='/usr/bin/systemctl poweroff'
alias smallfiles='sudo find / -xdev -type d -size +100k'
alias soundcontrol='pavucontrol'
alias sshx='ssh -XC -c blowfish-cbc,arcfour'
alias stackoverflow='howdoi -c -n 3'
alias stresstest='parallel -N0 pi $(echo 10^9 | bc) ::: {1..8}'
alias svim='sudo vim'
alias sysinfo='inxi -F'
alias syslog='cat /var/log/everything.log'
alias systemctl='sudo systemctl'
alias t='rspec -f d -c'
alias tests='rspec -f d -c'
alias tex='texnonstop'
alias tmux="tmux attach || tmux"
alias translate='t'
alias trash='cd ~/.local/share/Trash/files/'
alias tx="tmux attach || tmux"
alias u='sudo pacman -Syu'
alias v='vim --remote'
alias vim='vim'
alias vimt='vim -c "NERDTree"'
alias vlc='vlc'
alias vlcp='vlc *.mkv'
alias vote='aurvote'
alias vpn='sudo openvpn --config /etc/openvpn/norway.conf'
alias watchdir='watch -n 1 ls -lh'
alias weather='curl wttr.in'
alias web='python2 -m SimpleHTTPServer 23322'
alias webserver='web'
alias x='xrandr --display :0 --output DVI-I-3 --auto'
alias xclip='xclip -selection c'
alias ya='yaourt --noconfirm'
alias zshbench='repeat 10 time zsh -i -c exit'
