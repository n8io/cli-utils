#!/bin/bash
# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up Docker..."

echo -n "  Aliasing Docker commands..."
alias dk="docker"
alias dka="dk attach"
alias dkattach="dka"
alias dkb="dk build"
alias dkbuild="dkb"
alias dkco="dk commit"
alias dkcommit="dkco"
alias dkc="dk create"
alias dkcreate="dkc"
alias dkdi="dk diff"
alias dkdiff="dkdi"
alias dkev="dk events"
alias dkevents="dkev"
alias dke="dk exec"
alias dkex="dke"
alias dkexec="dke"
alias dkx="dke"
alias dkexp="dk export"
alias dkexport="dkexp"
alias dkhi="dk history"
alias dkhistory="dkhi"
alias dki="dk images"
alias dkimg="dki"
alias dkimages="dki"
alias dkimp="dk import"
alias dkimports="dkimp"
alias dkinf="dk info"
alias dkinfo="dkinf"
alias dkins="dk inspect"
alias dkinspect="dkins"
alias dkk="dk kill"
alias dkkill="dk kill"
alias dkload="dk load"
alias dklogin="dk login"
alias dksignin="dklogin"
alias dklogout="dk logout"
alias dksignout="dklogpit"
alias dklog="dk log"
alias dkpause="dk pause"
alias dkport="dk port"
alias dkp="dk ps"
alias dkps="dkp"
alias dkpsa="dkp -a"
alias dkpull="dk pull"
alias dkpush="dk push"
alias dkrn="dk rename"
alias dkren="dkrn"
alias dkrename="dkrn"
alias dkrs="dk restart"
alias dkres="dkr"
alias dkrestart="dkr"
alias dkd="dk rm"
alias dkdel="dkd"
alias dkdelete="dkd"
alias dkrm="dkd"
alias dkrem="dkd"
alias dkremove="dkd"
alias dkrmi="dk rmi"
alias dkremimg="dkrmi"
alias dkr="dk run"
alias dkrun="dkr"
alias dksv="dk save"
alias dksave="dksv"
alias dksearch="dk search"
alias dkgo="dk start"
alias dkup="dkgo"
alias dkstart="dkgo"
alias dkstt="dk stats"
alias dkstat="dkst"
alias dkstats="dkst"
alias dkstop="dk stop"
alias dkhalt="dkstop"
alias dkta="dk tag"
alias dktg="dkta"
alias dktag="dkta"
alias dkto="dk top"
alias dktop="dkto"
alias dkun="dk unpause"
alias dkunp="dkun"
alias dkunpause="dkun"
alias dkv="dk version"
alias dkversion="dkv"
alias dkw="dk wait"
alias dkwait="dkw"

alias dockerm="dockerrm"
alias dockerps="dkps"
alias dockerpsa="dkpsa"

alias dkenv="env | grep DOCKER_"
echo " \033[32m✔\033[0m."

echo -n "  Adding custom functions..."
dkdangle() { docker rmi -f $(docker images -q --filter dangling=true) >/dev/null 2>&1; } # Delete dangling images
dkprune() { docker rm $(dkps -a -q) >/dev/null 2>&1; } # Delete containers that are no longer in use

dkreset() {
  scorch_earth() {
    echo "Force deleting docker containers..." \
    && docker rm -f $(dkps -a -q) >/dev/null 2>&1 || true \
    && echo "Force deleting docker images..." \
    && docker rmi -f $(docker images -q) >/dev/null 2>&1 || true \
    && echo "🔥 🌎 🚫 🐳 Success" \
    ;
  }

  read "yn?Are you sure you want to delete all your containers and images [yN]?"
  if [[ "$yn" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
    scorch_earth
  fi
} # Scorch Docker earth

dkfind() {
  docker ps --filter "name=${1}" --format "{{.ID}}"
}

dkid() {
  OK=$(docker ps --filter "name=${1}" --format "{{.ID}}" | wc -l)

  if [ $OK -eq 1 ]; then
    docker ps --filter "name=${1}" --format "{{.ID}}"
  elif [ $OK -lt 1 ]; then
    echo "No containers were found."
    return 1
  else
    echo "Name too general. Returned multiple results."
    docker ps --filter "name=${1}" --format "{{.Names}}"
    return 1
  fi
}

dkls() {
  OK=$(docker ps --filter "name=${1}" --format "{{.ID}}" | wc -l)

  if [ $OK -eq 1 ]; then
    dkx -it  $(dkid ${1}) ls -lFa ${2}
  elif [ $OK -lt 1 ]; then
    echo "No containers were found."
    return 1
  else
    echo "Name too general. Returned multiple results."
    dkps --filter "name=${1}" --format "{{.Names}}"
    return 1
  fi
}

dkcp() {
  OK=$(dkps --filter "name=${1}" --format "{{.ID}}" | wc -l)

  if [ $OK -eq 1 ]; then
    dk cp "${2}" $(dkid ${1}):"${3}"
  elif [ $OK -lt 1 ]; then
    echo "No containers were found."
    return 1
  else
    echo "Name too general. Returned multiple results."
    dkps --filter "name=${1}" --format "{{.Names}}"
    return 1
  fi
}

echo " \033[32m✔\033[0m."

alias dkclean="dkdangle; dkprune"

alias dockeralias="alias | egrep \"^dk\" | sort"

echo "Docker setup complete \033[32m✔\033[0m."
