# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [[ -f ~/.bash_aliases ]]; then
    # shellcheck source=bash/.bash_aliases
    . ~/.bash_aliases
fi

for FILE in "${HOME}"/.bashrc.d/*; do
    . "${FILE}"
done
unset -v FILE
