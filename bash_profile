# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo " [${BRANCH}]"
	else
		echo ""
	fi
}

export PS1="\[\033[38;5;2m\]\u@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w$(parse_git_branch)\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export EDITOR=nvim
alias vi=nvim
alias vim=nvim
