#!/bin/bash

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up npm..."

echo -n "  Aliasing commands..."
alias npmi="npm install"
alias ni="npmi" # ^^^

alias npmig="npmi -g"
alias nig="npmig" # ^^^

alias npmis="npmi --save"
alias nis="npmis" # ^^^

alias npmisd="npmi --save-dev"
alias nisd="npmisd" # ^^^
alias nid="npmisd" # ^^^

alias npmiis="npm install --ignore-scripts"
alias niis="npmiis" # ^^^

alias npmr="npm run"
alias nr="npmr" # ^^^

alias npmrt="npmr test"
alias nrt="npmrt" # ^^^

alias npmrs="npmr start"
alias npms="npmrs" # ^^^
alias ns="npmrs" # ^^^

alias npmrb="npmr build"
alias nrb="npmrb" # ^^^

alias npmrg="npmr gulp"
alias nrg="npmrg" # ^^^

alias npmrd="npmr dev"
alias nrd="npmrd" # ^^^

alias npmri="npmr reindex"
alias nri="npmri" # ^^^

alias npmup="npm update"
alias nup="npmup" # ^^^

alias npmun="npm uninstall"
alias nrm="npmun" # ^^^
alias nun="npmun" # ^^^

alias npmung="npmun -g"
alias nung="npmung" # ^^^
alias nug="npmung" # ^^^

alias npmuns="npmun --save"
alias nuns="npmuns" # ^^^

alias npmunsd="npmun --save-dev"
alias nunsd="npmunsd" # ^^^

alias npmrmrf="rm -rf node_modules && npm cache clear"
alias nrmrf="npmrmrf" # ^^^
alias nrimraf="npmrmrf" # ^^^

alias npmv="npm --version"
alias nvs="npmv" # ^^^

alias nodenv="env | grep NODE_"
alias npmalias="alias | egrep (\"^ni\"|\"^np\"|\"^nr\"|\"^ns\"|\"^nu\"|\"^nv\") | sort"
echo " \033[32m✔\033[0m."

echo "NPM setup complete \033[32m✔\033[0m."
