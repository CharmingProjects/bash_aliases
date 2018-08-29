# Files
alias sl="ls"
alias ll="ls -lah"						  # Show hidden files with human readable sizes
alias l.="ls -d .*"                       # Show hidden files and dirs only
alias lf="ls -p | grep -v /"              # Show files only
alias ld="ls -d */"                       # Show dirs only
alias lt="ls -lhart"                      # Sort by time
alias lz="ls -AFlSr"                      # Sort by size
alias t="touch"
alias ff="find . -type f -iname"		  # Find file in current dir by name
alias catc='clear && grep -v -e "^$" -e"^ *#"' # Show file content without comments and linebreaks

# Directories
alias md="mkdir -pv"
alias fd='find . -type d -name'			  # Find directory in current dir by name
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias g="cd /"
alias w="cd /var/www"
alias bscript="cd /usr/local/sbin && ls"   # Show my bash scripts
alias ngsa="cd /etc/nginx/sites-enabled && ls" # Show list of sites enabled in nginx
cds () { cd /var/www/"$1"/www && ls -a; }  # Move to site directory (cds meliorem.ru)

# Archives
alias tarc="tar czvf"                      # Create archive
alias tarx="tar xzvf"                      # Extraxt archive
alias tart="tar tzvf"                      # Show file list of an archive

# Confirmation required
alias mv="mv -iv"
alias cp="cp -iv"
alias ln="sudo ln -iv"
alias rm="sudo rm -riv"
alias rmf="sudo rm -rfiv"                  # Forced removing

# Bash files update
alias bau=". ~/.bash_aliases"
alias bpu=". ~/.bash_profile"
alias bru=". ~/.bashrc"

# Apt package manager (Ubuntu)
alias ag="sudo apt-get"
alias agi="sudo apt-get install"
alias agyi="sudo apt-get -y install"
alias agu="sudo apt-get update"
alias agr="sudo apt-get remove"
alias acs="apt-cache search"

# Yum package manager (CentOS)
alias yum="sudo yum"
alias yi="sudo yum install"
alias yyi="sudo yum -y install"
alias yu="sudo yum update"
alias yr="sudo yum remove"
alias ys="yum search"
alias yp="yum provides"

# Vi/Vim Editor
alias vim="sudo vim"
alias vi="sudo vi"
alias vimalias="sudo vim ~/.bash_aliases && . ~/.bash_aliases" 
alias vimbashrc="sudo vim ~/.bashrc && . ~/.bashrc"
alias vimprofile="sudo vim ~/.bash_profile && . ~/.bash_profile"
alias vimphp="sudo vim /etc/php/7.0/fpm/php.ini"               # ! Find your php.ini first !
alias vimnginx="sudo vim /etc/nginx/nginx.conf && nginx -t"
alias vimhttpd="sudo vim /etc/httpd/conf/httpd.conf && systemctl httpd configtest"
alias vimmy="sudo vim /etc/my.cnf"

# Systemctl
alias sc="systemctl"
alias scsts="clear && systemctl status"            # (scsts nginx)
alias scstt="systemctl start"
alias screl="systemctl reload"
alias scrst="systemctl restart"
alias scstp="systemctl stop"
alias scen="systemctl enable"
alias scisen="systemctl is-enabled"
alias scdis="systemctl disable"
alias sclist="systemctl list-unit-files | less"    # List of services

# System info
alias df="df -hPT | column -t"                     # Physical memory
alias free="free -mth"                             # RAM
alias path="echo $PATH | tr ':' '\n' | nl"         # Nice $PATH output    

# Network
alias ping="ping -c4"
alias ports="netstat -tulanp"                      # Show open ports
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host" # Show your public IP address and hostname

# Shortcuts
alias q="exit"
alias s="sudo"
alias a="clear && alias | less"                    # Show list of all aliases
alias ag="alias | grep"                            # Use this if you remember only a part of alias name

# Extra
alias ax="chmod a+x"                               # Make file executable
alias upload="sftp username@server.com:/path/to/upload/directory"

# Update this file in your ~/.bash_aliases
alias baload="wget -P ~ 'https://raw.githubusercontent.com/CharmingProjects/bash_aliases/master/.bash_aliases_deb' -O ~/.bash_aliases && . ~/.bash_aliases"

# FUNCTIONS
cls () { cd $@ && ls -a; }                         
mcd () { sudo mkdir -p "$1"; cd "$1";} 			   # Create dir and enter it (mcd ~/music/classic)
backup () { sudo cp "$1"{,.backup};}			   # Create backup copy of file in current directory
newbs () { cd /usr/local/sbin && sudo touch "$1" && sudo chmod a+x "$1" && sudo vim "$1"; } # New Bash script
psgrep () {
if [ ! -z $1 ] ; then
echo "Grepping for processes matching $1..."
ps aux | grep $1 | grep -v grep
else
echo "!! Need name to grep for"
fi
}

# JUST FOR FUN :-)
alias hacker='cat /dev/urandom | hexdump -C | grep "ca fe"'       # Make yourserf look like a hacker to noobies
