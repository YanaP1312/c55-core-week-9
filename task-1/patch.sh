#!/bin/bash

id=$(cat task-1/id.txt)

curl -X PATCH http://localhost:3000/users/$id \
  -H "Content-Type: application/json; charset=UTF-8" \
  -d '{"email": "johndoe@example.com"}'
