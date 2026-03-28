#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

id=$(cat "$SCRIPT_DIR/id.txt")

curl -X GET http://localhost:3000/users/$id \
  -H "Content-Type: application/json; charset=UTF-8" \