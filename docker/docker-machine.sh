#!/bin/bash
DOCKER_DEFAULT_MACHINE_NAME="default"

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up Docker machine..."

echo -n "  Exporting env variables..."
export \
  DOCKER_DEFAULT_MACHINE_NAME="${DOCKER_DEFAULT_MACHINE_NAME}" \
  ;
echo " \033[32m✔\033[0m."
# env | grep "DOCKER_" # or try dkenv

echo -n "  Aliasing Docker Machine commands..."
alias dm="docker-machine"
alias dma="dm active"
alias dmactive="dma"
alias dmc="dm create"
alias dmcreate="dmc"
alias dmco="dm config"
alias dmcf="dmco"
alias dmcfg="dmco"
alias dmconfig="dmco"
alias dme="dm env"
alias dmenv="dme"
alias dmi="dm inspect"
alias dminspect="dmi"
alias dmip="dm ip"
alias dmk="dm kill"
alias dmkill="dmk"
alias dml="dm ls"
alias dmls="dml"
alias dmps="dml"
alias dmr="dm restart"
alias dmrestart="dmr"
alias dmrc="dm regenerate-certs"
alias dmcert="dmrc"
alias dmregen="dmrc"
alias dmrm="dm rm"
alias dmd="dmrm"
alias dmdel="dmrm"
alias dmdelete="dmrm"
alias dmrem="dmrm"
alias dmremove="dmrm"
alias dmrs="dmr"
alias dmscp="dm scp"
alias dmssh="dm ssh"
alias dmstat="dm status"
alias dmstatus="dmstat"
alias dms="dm start"
alias dmstart="dms"
alias dmgo="dms"
alias dmup="dms"
alias dmhalt="dm stop"
alias dmstop="dmhalt"
alias dmug="dm upgrade"
alias dmupgrade="dmug"
alias dmu="dm url"
alias dmur="dmu"
alias dmurl="dmu"
alias dmdns="dmu"
alias dmh="dm help"
alias dmhelp="dmh"
alias dockermachinealias="alias | egrep \"^dm\" | sort"
echo " \033[32m✔\033[0m."

echo -n "  Adding custom functions..."
dmse() { eval "$(docker-machine env $1)"; } # Docker machine register env vars
echo " \033[32m✔\033[0m."

echo -n "  Registering default machine env vars..."
dmse $DOCKER_DEFAULT_MACHINE_NAME >/dev/null;
echo " \033[32m✔\033[0m."

echo "Docker machine setup complete \033[32m✔\033[0m."
