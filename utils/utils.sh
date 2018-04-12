#!/bin/bash
echo "Setting up terminal session..."

echo -n "  Aliasing commands..."
alias e="open ." # Opens explorer to current dir *** UPDATE to 'explorer .' for Windows users
alias x="exit" # Exits cli
alias ~="cd ~"
alias brc="clear; cat ~/.bashrc" # echo .bashrc file
alias brch="brc"
alias brce="cd ~ && e; cd -" # Open bashrc directory
alias cls="clear"
alias ll="ls -FGlAhp"
alias edit="${EDITOR:-nano}"
alias a.="edit ."
alias brco="edit ~/.bashrc" # Open bashrc
alias hosts="edit /private/etc/hosts" # Yay hosts file shortcut
alias clp="rm -rf node_modules/ src/precompile/statics/bower_components/ dist/ build/" # Remove automated dirs for clean install
alias pj="python -m json.tool"
alias prettyJson="pj"
alias pbj="pj | pbcopy"
echo "\033[32m ✔\033[0m"

echo -n "  Adding custom functions..."

cdl() { cd "$@" && ll; } # Change directory and short list its contents

mdd() { mkdir -p "$@" && cd "$@" ; } # Create a directory and make it the current working directory

killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill -9;}

ip() {
  INTERNAL_IP=$(ipconfig getifaddr ${1:-en0})
	EXTERNAL_IP=$(curl -s -4 http://whatismyip.akamai.com)
	echo -e "\e[32mLAN\e[0m $INTERNAL_IP\n\e[33mWAN\e[0m $EXTERNAL_IP"
}

interfaces() {
	ifconfig | expand | cut -c1-8 | sort | uniq -u | awk -F: '{print $1;}'
}

sshe() {
  PORT="${2:-22}"
  UNAME="${3:-root}"
  SSH_KEY="${4:-$HOME/.ssh/id_rsa}"

  if [ -z "$1" ]; then
    echo "No IP provided!"
    return 1
  fi

  ssh -i "$SSH_KEY" "${UNAME}@${1}" -p $PORT
}

is_online() {
  echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

  if [ $? -eq 0 ]; then
      echo "online OK"
      return 0
  else
      echo "offline"
      return 1
  fi
}

ssh-setup() {
  IS_ONLINE=$(is_online)

  if [ $? -eq 0 ]; then
    bash <(curl -sL https://goo.gl/wBwtFN)
  else
    echo "Not currently online. Cannot execute remote scripts.";
  fi
}

resrc() {
  LWD="$PWD"; source ~/.bashrc && cd "$LWD"
}
echo "\033[32m ✔\033[0m"

# Custom alieas

echo "Terminal session setup complete \033[32m✔\033[0m."

# Export defaults
export \
  NODE_ENV="development" \
  EDITOR="${EDITOR:-nano}" \
  ;


# ulimit -n 65536 65536 # prevent file table overflow bs
