# check and load #aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi 

# User Defined Environment
PLATFORM=`uname -s`

# Configurations for Mac OS X
if [ $PLATFORM == "Darwin" ]; then
	# Shell Color
	export CLICOLOR=1
	export LSCOLORS=exfxaxdxcxegedabagacad

	# for solving gnu-tar configuration error
	export FORCE_UNSAFE_CONFIGURE=1

	# To Solve ppc compile problem
	export ARCHFLAGS="-arch i386 -arch x86_64"
fi
