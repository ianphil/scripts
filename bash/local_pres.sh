#!/bin/bash

echo 'What is the folder name?'
read folder_name

docker build ./${folder_name} -t $folder_name --no-cache
docker run -itd --rm -p 80:80 --name local_pres $folder_name

docker ps

echo 'Local Build Complete'
