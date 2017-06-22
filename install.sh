#!/bin/sh

add_git_hook () {
	x="$(eval echo $(git config --global --get init.templatedir))"

	if [ -z "$x" ]; then
		x="/usr/share/git-core/templates"
	fi

	mkdir -p $x/hooks

	if [ -e "$x/hooks/post-checkout" ]; then
		echo "A post checkout hook already exists. Exiting...">&2
		exit 1
	fi

	cp post-checkout $x/hooks

	echo "Git hook added succesfully."
	echo "It will work out if the box for new repos."
	echo "for old repos please do git init to add the hook."
}

if which git >/dev/null; then
	add_git_hook
fi
