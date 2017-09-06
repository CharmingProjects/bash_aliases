# Files
alias sl="ls"
alias la="ls -ah"
alias ll="ls -lah"
alias l.="ls -d .*"                       # Show hidden files and dirs only
alias lf="ls -p | grep -v /"              # Show files only
alias ld="ls -d */"                       # Show dirs only
alias lt="ls -lhart"                      # Sort by time
alias lz="ls -AFlSr"                      # Sort by size
alias t="touch"
alias ff="find . -type f -iname"
alias catc='clear && grep -v -e "^$" -e"^ *#"' # Show file content without comments and linebreaks

# Directories
alias md="mkdir -pv"
alias fd='find . -type d -name'
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias g="cd /"

# Move to popular direcrtories
alias bscript="cd /usr/local/sbin && ls"   # Show my bash scripts
alias w="cd /var/www"
cds () { cd /var/www/$1/html && ls -a; }   # Move to site directory

# tar.gz
alias tarc="tar czvf"                      # Create archive
alias tarx="tar xzvf"                      # Extraxt archive
alias tart="tar tzvf"                      # Show file list of archive

# Confirmation required
alias mv="mv -iv"
alias cp="cp -iv"
alias ln="ln -iv"
alias rm="rm -riv"
alias rmf="rm -rfiv"                       # Forced removing

# Bash update
alias bau=". ~/.bash_aliases"
alias bpu=". ~/.bash_profile"

# Yum
alias yum="sudo yum"
alias yi="sudo yum install"
alias yyi="sudo yum -y install"
alias yu="sudo yum update"
alias yr="sudo yum remove"
alias ys="yum search"
alias yp="yum provides"

# Editor
alias vim="sudo vim"
alias vi="sudo vi"

alias vimalias="sudo vim ~/.bash_aliases && . ~/.bash_aliases"
alias vimbashrc="sudo vim ~/.bashrc && . ~/.bashrc"
alias vimprofile="sudo vim ~/.bash_profile && . ~/.bash_profile"

alias vimphp="sudo vim /etc/php.ini"               # Find your php.ini first
alias vimnginx="sudo vim /etc/nginx/nginx.conf"
alias vimmy="sudo vim /etc/my.cnf"

# Systemctl
alias sc="systemctl"
alias scsts="clear && systemctl status"
alias scstt="clear && systemctl start"
alias screl="clear && systemctl reload"
alias scrst="clear && systemctl restart"
alias scstp="clear && systemctl stop"
alias scen="clear && systemctl enable"
alias scdis="clear && systemctl disable"
alias sclist="clear && systemctl list-unit-files"  # List of services

# Systeminfo
alias df="df -hPT | column -t"                     # Physical memory
alias free="free -mth"                             # RAM
alias path="echo -e ${PATH//:/\\n}"                # Nice $PATH output    

# Network
alias ping="ping -c4"
alias ports="netstat -tulanp"                      # Show open ports
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host" # Show your public IP address and hostname

# Shortcuts
alias q="exit"
alias s="sudo"
alias r="reset"
alias a="clear && alias | more"

# Extra
alias ax="chmod a+x"                               # Make file executable
alias upload="sftp username@server.com:/path/to/upload/directory"

# FUNCTIONS
cls () { cd $@ && ls -a; }                         
mcd () { mkdir -p "$1"; cd "$1";} 
backup () { cp "$1"{,.bcup};}

psgrep () {
if [ ! -z $1 ] ; then
echo "Grepping for processes matching $1..."
ps aux | grep $1 | grep -v grep
else
echo "!! Need name to grep for"
fi
}

# JUST FOR FUN :-)
alias hacker='cat /dev/urandom | hexdump -C | grep "ca fe"'       # Make yourserf look like a hacker
