#!/bin/sh
alias j='z'
alias f='zi'
alias g='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='nvim ~/.config/nvim/'
alias yay="paru"

# alias lvim='nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim"'

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Remarkable
alias remarkable_ssh='ssh root@10.11.99.1'
alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

alias mach_java_mode="export SDKMAN_DIR="$HOME/.sdkman" && [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh""


if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

if command -v bat &> /dev/null; then
  alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
  alias catt="bat --theme \"Visual Studio Dark+\"" 
  alias nv="nvim"
  alias v="vim"
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac


ryzom()
{
	chmod +x /home/nico/Jeux/Ryzom/ryzom_live/ryzom_client
	~/Jeux/Ryzom/ryzom_live/ryzom_client_dev nicodragneel Uxt4uGbt5JTKR8l atys
	
}

tyrroar(){
	cd ~/Jeux/Ryzom2/ryzom_live
	chmod +x ryzom_client
	./ryzom_client meubli Message69918020 atys 1
}
armoiro_dev(){
	chmod +x /home/nico/Jeux/Ryzom/ryzom_live/ryzom_client_dev
	~/Jeux/Ryzom/ryzom_live/ryzom_client_dev mobilier Message69918020 atys
}
armoiro(){
	cd ~/Jeux/Ryzom2/ryzom_live
	chmod +x ryzom_client
	./ryzom_client mobilier Message69918020 atys 0
}
meubli(){

	chmod +x /home/nico/Jeux/Ryzom/ryzom_live/ryzom_client
	~/Jeux/Ryzom/ryzom_live/ryzom_client nicodragneel Uxt4uGbt5JTKR8l atys 0
}
scooby(){
	chmod +x /home/nico/Jeux/Ryzom/ryzom_live/ryzom_client
	~/Jeux/Ryzom/ryzom_live/ryzom_client dorma pompi3465 atys 1
}

forage(){
    chmod +x /home/nico/Jeux/Ryzom/Macro/forageArmoiro.sh
    ~/Jeux/Ryzom/Macro/forageArmoiro.sh $1 $2

}

ryzom2()
{

	cd ~/Jeux/Ryzom2/ryzom_live
	chmod +x ryzom_client
	./ryzom_client
}
kipeecraft()
{
	wine /home/nico/Logiciels/Kipeecraft/kc.exe
}

mkcdir()
{
	mkdir -p -- "$1" &&
     	cd -P -- "$1"
}

extract()
{
    if [ -f $1 ];then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar e $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *)
                echo "'$1' can not be extracted with this function" ;;
        esac
    else
        echo "'$1' is not valid"
    fi

}

