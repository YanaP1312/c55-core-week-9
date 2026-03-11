#!/bin/bash

id=$(cat task-1/id.txt)

curl -X DELETE http://localhost:3000/users/$id \
  -H "Content-Type: application/json; charset=UTF-8"