#!/bin/bash

# ############################################################
# DO NOT MODIFY BELOW HERE UNLESS YOU KNOW WHAT YOUR ARE DOING
# ############################################################

type yarn >/dev/null
if [ $? -ne 0 ]; then
	echo "\033[31myarn setup failed! Yarn package manager is not installed. Install via: curl -o- -L https://yarnpkg.com/install.sh | bash\033[0m"

	return 1
fi

echo "Setting up Yarn..."

echo -n "  Exporting env variables..."
export \
  YARN_BIN="$(which yarn)" \
  ;
echo " \033[32m✔\033[0m."
# env | grep NODE_

echo -n "  Aliasing commands..."
alias y="yarn"

alias ya="y add"
alias yad="ya -D"
alias yadd="ya"
alias yadv="yad"
alias yadev="yad"

alias yac="y autoclean"
alias yauto="yac"
alias yautoclean="yac"

alias yb="yr build"

alias ybi="y bin"
alias ybn="ybi"
alias ybin="ybi"

alias yc="y config"
alias ycfg="yc"
alias yconfig="yc"
alias ycd="yc delete"
alias ycg="yc get"
alias ycl="yc list"
alias ycs="yc set"
alias ycl="yc list"

alias ych="y check"
alias ychi="ych --integrity"

alias yd="y dev"

alias yg="y global"
alias yga="yg add"
alias ygb="yg bin"
alias ygl="yg list"
alias ygr="yg remove"
alias ygu="yg upgrade"

alias yh="y help"
alias yim="y import"
alias yinf="y info"

alias yi="y"
alias yinj="yin --json"
alias yins="y"
alias yint="y init"
alias yiy="yint -y"

alias ylic="y licenses ls"
alias ylicence="ylic"
alias ylicense="ylic"
alias ylicences="ylic"
alias ylicg="ylic generate-disclaimer"
alias ylicgen="ylicg"
alias ylicgd="ylg"

alias ylin="y link"
alias ylink="ylin"
alias ylk="ylin"

alias yli="y login"
alias ylg="y login"
alias ylgi="yli"
alias ylogi="yli"
alias ylogin="yli"

alias ylo="y logout"
alias ylgo="ylo"
alias ylogo="ylo"
alias ylogout="ylo"

alias yls="y list"
alias ylsd="yls --depth"

alias ylod="y outdated"
alias yold="ylod"
alias yodl="ylod"
alias ystale="ylod"

alias yo="y owner"
alias yol="yo ls"
alias yols="yol"
alias yown="yo"
alias yoa="yo add"
alias yor="yo rm"

alias ypk="y pack"
alias ypack="ypk"
alias yz="ypk"
alias yzip="ypk"
alias ygz="ypk"

alias yp="y publish"
alias ypa="yp --access"
alias ypb="yp"
alias ypub="yp"
alias ypv="yp --new--version"
alias ypnv="ypv"
alias ypt="yp --tag"

alias yrm="y remove"
alias yrmp="yrm"
alias yrmg="yrm --global"

alias yr="y run"
alias yrs="yr -s"
alias yre="yr env"
alias yrls="yr"

alias ys="yr start"

alias ysu="y self-update"
alias ysup="ysu"

alias yt="y test"
alias ytets="yt"
alias ytest="yt"
alias ytst="yt"
alias ytset="yt"

alias ytg="y tag"
alias ytga="ytg add"
alias ytgr="ytg remove"
alias ytgrm="ytgr"
alias ytgl="ytg ls"
alias ytgls="ytgl"
alias ytaga="ytga"
alias ytagr="ytgr"
alias ytagrm="ytgr"
alias ytagl="ytgl"
alias ytagls="ytgl"
alias ytags="ytgl"

alias ytm="y team"
alias ytma="ytm add"
alias ytmc="ytm create"
alias ytmd="ytm destroy"
alias ytml="ytm ls"
alias ytmls="ytml"
alias ytmr="ytm rm"
alias ytmrm="ytmr"

alias yul="y unlink"
alias yun="yul"
alias yunl="yul"
alias yunlk="yul"
alias yunlk="yul"
alias yunlink="yul"

alias yu="y upgrade"
alias yup="yu"
alias yug="yu"
alias yupg="yu"
alias yupgrade="yu"
alias yupdate="yu"

alias yui="y upgrade-interactive"
alias yupi="yui"
alias yugi="yui"

alias yv="y version"
alias yvn="yv --new--version"
alias yvnew="yvn"
alias yvn="yv --no-git-tag-version"
alias yvno="yvn"

alias yvs="y versions"

alias yw="y why"
alias ywhy="yw"

alias yenv="env | grep YARN_"
alias yarnenv="yenv"
alias yalias="alias | grep \"^y\" | sort"
alias yarnalias="yalias"
echo " \033[32m✔\033[0m."

echo "Yarn setup complete \033[32m✔\033[0m."
