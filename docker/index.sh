#!/bin/bash
CWD="$(cd "$(dirname "$0")" && pwd -P)"

source ${CWD}/docker.sh
source ${CWD}/docker-compose.sh
# source ${CWD}/docker-machine.sh
