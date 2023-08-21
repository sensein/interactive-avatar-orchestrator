#!/bin/bash

#################### config #########################
# Source the config file
source config.sh
#################### config #########################

######################################## env #############################################
echo "Hello world!"

eval "$(conda shell.bash hook)"
conda activate $env_name
echo "Active Conda environment: $CONDA_DEFAULT_ENV"
######################################## env #############################################

#################### docker-check #########################

# Check if Docker is installed
if ! [ -x "$(command -v docker)" ]; then
    echo "Docker is not installed."
    exit 1
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "Docker is installed but not running."
    exit 1
fi
#################### docker-check #########################

#################### generate-avatar-animations #########################
repo_dir="generate-avatar-animations"
cd "$repo_dir"
cd torchserve
docker pull qingweihe/docker_torchserve:latest
docker run -d --name docker_torchserve -p 8080:8080 -p 8081:8081 qingweihe/docker_torchserve:latest &
sleep 10  # Placeholder for your script's tasks
curl http://localhost:8080/ping
echo "Okaaaaaay lets'go!"
cd ../..
#################### generate-avatar-animations #########################

#################### interactive-talking-avatar #########################
repo_dir="interactive-talking-avatar"
cd "$repo_dir"
npm start &
#################### interactive-talking-avatar #########################