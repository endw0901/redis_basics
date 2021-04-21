#!/bin/bash
set -u
set -e

# init
SCRIPT_DIR=$(cd $(dirname $0); pwd)
HOST=localhost
REDIS_CMD=redis-cli
JSON_DIR_NAME=json

# redis check
type -a ${REDIS_CMD} > /dev/null 2>&1 || (echo "redis client command not found" && exit 1)

${REDIS_CMD} -h ${HOST} GET '*' > /dev/null

# insert redis
# get json files
for json in ${SCRIPT_DIR}/${JSON_DIR_NAME}/*.json; do 
  redis_key=$(basename $json .json)
  ${REDIS_CMD} -x set $redis_key < $json
done

exit 0
