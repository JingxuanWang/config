# sync alias
source ~/config/alias

# make sure EDITOR is set to path of vim
# prevent editor error in crontab -e
export EDITOR=`which vim`

# ls result color: blue for directories
LS_COLORS="$LS_COLORS:di=00;34"

autoload -U colors && colors

# prompt setttings
setopt prompt_subst
. ~/config/git-prompt.sh
PS1='[%*]%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%} %{$fg[red]%}$(__git_ps1 "(%s)")%{$reset_color%}\$ '
RPROMPT="[%{$fg_no_bold[yellow]%}%/%{$reset_color%}]"

# User Defined Environment
PLATFORM=`uname -s`

# Configurations for Mac OS X
if [ $PLATFORM "==" "Darwin" ]; then
	# Shell Color
	export CLICOLOR=1
	export LSCOLORS=exfxaxdxcxegedabagacad

	# for solving gnu-tar configuration error
	export FORCE_UNSAFE_CONFIGURE=1

	# To Solve ppc compile problem
	export ARCHFLAGS="-arch x86_64"
fi
