<img halign="center" src="https://cdn.rawgit.com/n8io/hosted-assets/1961ae6e/img/cli-utils/hoff.png" style="max-width: 100%; text-align: center;" />

# cli-utils
Tired of the cli hassling the Hoff? Here are some helper scripts for making the cli a little more friendly.

Table of Content
* [Preface](#preface)
* [Scripts](#scripts)
	* [Node](#nodesh)
	* [NPM](#npmsh)
	* [Yarn](#yarnsh)
	* [Git](#gitsh)
	* [Docker](#docker)
		* [Docker](#dockersh)
		* [Docker Compose](#docker-composesh)
		* [Docker Machine](#docker-machinesh)
	* [Mongo](#mongosh)
	* [RVM](#rvmsh)
  * [Terraform](#terraformsh)

## Preface
This collection of scripts provide a lot of shortcuts to commonly used functionality. The typical way to consume these is to `source` the `~/[subject]/index.sh` in your `~/.bashrc`. See below.

````
# A sample ~/.bashrc implementation...

source /Users/n8/code/n8io/cli-utils/node/index.sh
source /Users/n8/code/n8io/cli-utils/npm/index.sh
source /Users/n8/code/n8io/cli-utils/yarn/index.sh
source /Users/n8/code/n8io/cli-utils/mongo/index.sh
source /Users/n8/code/n8io/cli-utils/git/index.sh
source /Users/n8/code/n8io/cli-utils/docker/index.sh
source /Users/n8/code/n8io/cli-utils/rvm/index.sh
````

Each script is formatted similarly into the following sections:

1. Custom config
2. Environment variables
3. Aliases
4. Functions
5. Custom functionality

As a bonus to the usual aliases I have included some common typo aliases to ease fat fingering. E.g. `git stauts`, `git sttaus`, `git sattus` all resolve to `git status`.

## Scripts

### `node.sh`
Script for all node related settings

#### Env variables
* NODE_ENV

#### Aliases
* *nodev* `node --version`
* *nodenv* `env | grep NODE_`
* [View all](node/node.sh) or run `nodealias` after adding to bash

### `npm.sh`
Script for all npm related settings

#### Aliases
* *ni* `npm install`
* *ns* `npm start`
* *nb* `npm run build`
* *ng* `npm run gulp`
* *nis* `npm install -S`
* *nid* `npm install -D`
* *nig* `npm install -g`
* [View all](npm/npm.sh) or run `npmalias` after adding to bash

### `yarn.sh`
Script for all Yarn related settings

#### Aliases
* *yi* `yarn install`
* *ys* `yarn run start`
* *yb* `yarn run build`
* *yd* `yarn run dev`
* *ya* `yarn add`
* *yad* `yarn add -D`
* *yag* `yarn add -g`
* [View all](yarn/yarn.sh) or run `yarnalias` after adding to bash

### `git.sh`
Script for all git related settings

#### Aliases
* *gs* `git status`
* *gf* `git fetch`
* *gba* `git branch -a`
* *grv* `git remote -v`
* *gpf* `git push -f`
* [View all](git/git.sh) or run `gitalias` after adding to bash

### Docker
Scripts for all docker related settings

#### `docker.sh`

##### Aliases
* *dk* `docker`
* *dki* `docker images`
* *dkk* `docker kill`
* *dkr* `docker run`
* *dkps* `docker ps`
* *dkenv* `env | grep DOCKER_`
* [View all](docker/docker.sh) or run `dockeralias` after adding to bash

#### `docker-compose.sh`

##### Aliases
* *dc* `docker-compose`
* *dcu* `docker-compose up`
* *dcud* `docker-compose up -d`
* *dcrm* `docker-compose rm`
* *dcps* `docker-compose ps`
* *dcstop* `docker-compose stop`
* [View all](docker/docker-compose.sh) or run `composealias` after adding to bash

#### `docker-machine.sh`

##### Aliases
* *dm* `docker-machine`
* *dma* `docker-machine active`
* *dmc* `docker-machine create`
* *dmip* `docker-machine ip`
* *dmstart* `docker-machine start`
* *dmstop* `docker-machine stop`
* [View all](docker/docker-machine.sh) or run `machinealias` after adding to bash

### `mongo.sh`
Script for all mongo related settings

_Right now this is just a place holder for adding the `m` (mongo version manager) binary to $PATH_. [View all](mongo/mongo.sh) or run `mongoalias` after adding to bash

### `rvm.sh`
Script for all rvm related settings. [View all](rvm/rvm.sh) or run `rvmalias` after adding to bash

_Right now this is just a place holder for adding the `rvm` binary to $PATH_

### `terraform.sh`
Script for all Terraform related settings. [View all](terraform/terraform.sh)
