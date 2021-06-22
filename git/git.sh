#!/bin/bash

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

echo "Setting up Git..."

echo -n "  Aliasing commands..."
alias gaa="git add ."
alias gbc="git branch | grep '^\*' | cut -d' ' -f2 | tr -d '\n'"
alias gs="git s" # git status
alias gpf="git pusf"
alias gpul="git pul"
alias gpus="git pus"
alias gk="git ck" # git checkout
alias gkb="git ck -b" # git checkout -b
alias gkm="git ck master" # git checkout master
alias gkn="git ck next" # git checkout next
alias gkd="git ck dev" # git checkout dev
alias gc="git co"
alias gco="git co"
alias gbdmr="git branch --merged | egrep -v \"^\*|master|main|next|dev|develop|development|stg\" | xargs -n 1 git branch -D" # Delete local branches that have been merged and are not master, next, dev, etc
alias ga="git a"
alias gi="git ig"
alias gf="git f"
alias gfp="git fpr && git pull --rebase --autostash"
alias gfpr="git fpr"
alias gfu="gf upstream"
alias giu="git igu"
alias ggo="git go"
alias ggr="git go"
alias gb="git b"
alias gba="git ba"
alias gbd="git bd"
alias gbde="git bde"
alias gbl="git bl"
alias gd="git diff"
alias gl="git log --graph --pretty=oneline --abbrev-commit"
alias gmffo="git mffo" # git merge --ff--only
alias gpo="git plo"
alias gpoh="git poh"
alias gpuo="git puo"
alias gra="git ra"
alias grh="git rh"
alias grv="git rv"
alias grre="git rre"
alias grrm="git rrm"
alias grv="git rv"
alias gst="git sth"
alias gsts="git sths"
alias gstp="git sthp"
alias gstl="git sthl"
alias gcg="git config --global"
alias gitalias="alias | egrep \"^g\" | sort"

gbdm() {
  # Delete local branches that have been merged and are not master, next, dev, etc
  git branch --merged | egrep -v '^\*|master|main|next|dev|develop|development|stg' | xargs -n 1 git branch -D

  # Delete local branches whose upstream branches have been deleted
  git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}

gcbn() {
  gbc | pbcopy
  echo "👍 Copied branch to clipboard"
}

glcp() {
  prepend() { while read line; do echo "${1}${line}"; done; }

  BRANCH=$(git rev-parse --abbrev-ref HEAD)
  COMMIT=$(git show-branch -a 2>/dev/null | grep '\*' | grep -v "$BRANCH" | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//' | xargs git rev-parse)
  RAW=$(git log --pretty=oneline --abbrev-commit --reverse ${COMMIT}.. | prepend "- ")
  echo $RAW | pbcopy
  echo "👍 Copied commits to clipboard"
}

update_git_global_aliases() {
  GIT_CONFIG="${HOME}/.gitconfig"
  DAYS_STALE=30
  if [ -z "$(find "$GIT_CONFIG" -newermt "-${DAYS_STALE} days")" ]; then
    gcg alias.a "add -A"
    gcg alias.b "branch"
    gcg alias.ba "branch -a"
    gcg alias.bl "branch -l"
    gcg alias.bd "branch -d"
    gcg alias.bde "branch -D"
    gcg alias.ck "checkout"
    gcg alias.co "commit -am"
    gcg alias.d "diff"
    gcg alias.dc "diff --cached"
    gcg alias.f "fetch"
    gcg alias.fpr "fetch -p"
    gcg alias.ig "update-index --assume-unchanged "
    gcg alias.igu "update-index --no-assume-unchanged "
    gcg alias.go "log --graph --pretty=oneline --abbrev-commit"
    gcg alias.gr "log --graph"
    gcg alias.lc "log ORIG_HEAD.. --stat --no-merges"
    gcg alias.lp "log --patch-with-stat"
    gcg alias.mnf "merge --no-ff"
    gcg alias.mnff "merge --no-ff"
    gcg alias.mffo "merge --ff-only"
    gcg alias.mt "mergetool"
    gcg alias.pul "pull"
    gcg alias.plu "pull"
    gcg alias.plul "pull"
    gcg alias.plo "pull origin"
    gcg alias.psh "push"
    gcg alias.psuh "push"
    gcg alias.poh "push -u origin HEAD"
    gcg alias.pus "push"
    gcg alias.pusf "push --force-with-lease"
    gcg alias.puo "push -u origin"
    gcg alias.ra "remote add"
    gcg alias.rre "remote rename"
    gcg alias.rrm "remote remove"
    gcg alias.rv "remote -v"
    gcg alias.rh "reset --hard"
    gcg alias.s "status"
    gcg alias.st "status"
    gcg alias.sttaus "status"
    gcg alias.sattus "status"
    gcg alias.stauts "status"
    gcg alias.staus "status"
    gcg alias.sttus "status"
    gcg alias.stm "status --untracked=no"
    gcg alias.stfu "status --untracked=no"
    gcg alias.sth "stash"
    gcg alias.sths "stash save"
    gcg alias.sthp "stash pop"
    gcg alias.sthl "stash list"
  fi
}

update_git_global_aliases

if [[ ! -z $(command -v git-mob) ]]; then
  alias gm="git mob"
  alias gms="git solo"
fi

echo " \033[32m✔\033[0m."

echo "Git setup complete \033[32m✔\033[0m."
