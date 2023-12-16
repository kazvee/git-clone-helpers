#!/bin/bash

# Prompt for GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Prompt for Personal Access Token
read -s -p "Enter your GitHub Personal Access Token: " GITHUB_TOKEN
echo

# List all repositories for the given username
REPO_LIST=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/users/${GITHUB_USERNAME}/repos?per_page=1000" | jq -r '.[].clone_url')

# Clone each repository
for REPO in $REPO_LIST; do
    git clone $REPO
done