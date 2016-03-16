source ~/config/alias
source ~/config/git-completion.bash
source ~/config/git-prompt.sh
PS1='[\t]\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# make sure EDITOR is set to path of vim
# prevent editor error in crontab -e
export EDITOR=`which vim`

export PATH=~/bin:$PATH
export PATH=~/perl5/bin:$PATH
