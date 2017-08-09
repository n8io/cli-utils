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

echo -n "  Adding binaries to PATH..."
export PATH="$PATH:$HOME/.rvm/bin" # Add heroku toolbelt to PATH
echo " \033[32m✔\033[0m."

echo "RVM setup complete \033[32m✔\033[0m."
