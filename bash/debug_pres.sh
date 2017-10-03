#!/bin/bash

echo 'What is the folder name?'
read folder_name

docker run -itd --rm -p 80:80 -v ~/pres/${folder_name}:/usr/share/nginx/html --name debug_pres nginx:1.11.10-alpine

docker ps

echo 'Local Build Complete'
