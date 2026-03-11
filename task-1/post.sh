#!/bin/bash

response=$(curl -X POST http://localhost:3000/users \
  -H "Content-Type: application/json; charset=UTF-8" \
  -d '{"name":"John Doe", "email": "john.doe@example.com", "password": "secret123", "role": "user", "active": true, "department": "Engineering"}')

  echo "$response"

  id_line=$(echo "$response" | grep '"id"') 
  
  id=$(echo "$id_line" | tr -cd '0-9') 
  
  echo "$id" > task-1/id.txt 

