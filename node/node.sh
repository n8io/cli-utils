#!/bin/bash
NODE_ENV="${${NODE_ENV}:-development}"

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up node..."

echo -n "  Exporting env variables..."
export \
  NODE_ENV="${NODE_ENV}" \
  ;
echo " \033[32m✔\033[0m."
# env | grep NODE_

echo -n "  Aliasing commands..."
alias nodev="node --version"
alias nodenv="env | grep NODE_"
alias nodeenv="nodenv"
alias nodealias="alias | grep \"^node\" | sort"
echo " \033[32m✔\033[0m."

echo "Node setup complete \033[32m✔\033[0m."
