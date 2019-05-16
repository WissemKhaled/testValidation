#!/usr/bin/env bash

read -p "Login: " login
#read -sp "Password: " password
read -p "Email: " email
read -p "Repository name: " remote_name
read -p "Branch name: " branch_name
#read -p "Name of your Account Git: " you


echo "GIT INIT"
git init
git config user.name "$login"
git config user.email $email
echo "GIT ADD --ALL"
git add --all
echo "COMMIT -M"
read -p "Message for you commit ?" message
git commit -m"$message"
echo "REMOTE ADD"
git remote add ${remote_name} https://github.com/$login/$remote_name.git
#echo "GIT PULL --REBASE"
#git pull --rebase ${remote_name} ${branch_name}
echo "GIT PUSH"
git push ${remote_name} ${branch_name}