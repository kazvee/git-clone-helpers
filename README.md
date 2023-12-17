# Git Clone Helpers

Helper scripts to clone remote repos to local machine after a reinstall

Used on **Linux** (Ubuntu 22.04) & **Windows 11 using WSL2** (with Ubuntu 22.04)

## Setup

### Prerequisites
* GitHub Personal Access Token (classic)
  * Generate a new PAT, ensuring it has at least `repo` scope
* Linux:
  * `jq` (command-line JSON processor)
  * `curl` (CLI tool & data transfer library)  

### 🌎 Clone Public Repos

1. Navigate to the directory where you want to clone all your repos

2. Add the `clone_public_repos.sh` script file to the directory

3. Add execute permissions to the file with `chmod +x clone_public_repos.sh`

4. Run the file with `./clone_public_repos.sh`

5. The terminal will prompt you to enter your GitHub username and Personal Access Token, and then cloning will begin

### 🤫 Clone Private Repos 

1. Navigate to the directory where you want to clone all your repos

2. Add the `clone_private_repos.sh` script file to the directory

3. Add execute permissions to the file with `chmod +x clone_private_repos.sh`

4. Run the file with `./clone_private_repos.sh`

5. The terminal will prompt you to enter your GitHub username and Personal Access Token, and then cloning will begin

### Optional: 

Once cloning is complete, use `ls -l | grep -c '^d'` to display the number of directories in the current directory