#!/bin/bash

echo 'What is the folder name?'
read folder_name

repo_name=tripdubroot/$folder_name
res_group=presentations
container_name=$(echo $folder_name | tr '_' '-')

docker build ./${folder_name} -t $folder_name
docker login -u USERNAME -p PASSWORD
docker tag $folder_name $repo_name
docker push $repo_name
az container create --name $container_name --image $repo_name --cpu 1 --memory 1 --ip-address public -g $res_group --output json

echo 'Az complete'
