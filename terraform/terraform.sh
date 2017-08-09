#!/bin/bash

echo "Setting up Terraform..."

echo -n "  Adding terraform binary to PATH..."
export PATH=$PATH:~/terraform

echo " \033[32m✔\033[0m."

echo -n "  Setting environment variables..."
ENV_LOADER_SCRIPT="/Users/n8/code/sbi/infrastructure-terraform/load-env.sh"
[ -f "$ENV_LOADER_SCRIPT" ] && . "$ENV_LOADER_SCRIPT" -q
echo "\033[32m ✔\033[0m"

echo "Terraform setup complete \033[32m✔\033[0m."
