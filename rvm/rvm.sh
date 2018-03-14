#!/bin/bash
type rvm >/dev/null
if [ $? -ne 0 ]; then
	echo "\033[31mRuby setup failed! Ruby version manager is not installed.\033[0m"

	return 1
fi

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up rvm..."

echo -n "  Aliasing commands..."

alias brails="bin/rails"
alias br="brails"
alias brailss="br s"
alias brc="br console"
alias brcon="brc"
alias brdbm="br db:migrate"
alias brdbr="br db:rollback"
alias brdbrbs1="brdbr"
alias brdbrbs2="brdbr STEP=2"
alias brdbrbs3="brdbr STEP=3"
alias brdbrbs4="brdbr STEP=4"
alias brdbmr="br db:migrate:redo"
alias brdbmr1="brdbmr"
alias brdbmr2="br db:migrate:redo STEP=2"
alias brdbmr3="br db:migrate:redo STEP=3"
alias brdbmr4="br db:migrate:redo STEP=4"
alias brrte="br routes"
alias brsd="brailss -e development"
alias rvn="rvm"

echo " \033[32m✔\033[0m."

echo -n "  Adding binaries to PATH..."
export PATH="$PATH:$HOME/.rvm/bin" # Add heroku toolbelt to PATH
echo " \033[32m✔\033[0m."

echo "RVM setup complete \033[32m✔\033[0m."
