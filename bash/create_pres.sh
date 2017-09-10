#!/bin/bash

echo 'What is the folder name?'
read folder_name

echo 'What is the new remote URL?'
read remote_url

git clone git@github.com:hakimel/reveal.js.git $folder_name
cd $folder_name
git remote remove origin
git remote add origin $remote_url
git push -u origin master