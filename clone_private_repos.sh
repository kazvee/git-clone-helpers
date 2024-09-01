#!/bin/bash

# Prompt for GitHub username
read -p "🙂 Enter your GitHub username: " GITHUB_USERNAME

# Prompt for Personal Access Token
read -s -p "🗝️ Enter your GitHub Personal Access Token: " GITHUB_TOKEN
echo

# Set Git configuration to use the provided token for authentication
git config --global credential.helper "store --file ~/.git-credentials"
echo "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials

# List all private repositories for the given username
REPO_LIST=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/user/repos?type=private&per_page=1000" | jq -r '.[].clone_url')

# Clone each private repository
for REPO in $REPO_LIST; do
    git clone $REPO
done