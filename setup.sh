#!/bin/bash

#################### config #########################
# Source the config file
source config.sh
#################### config #########################

######################################## start #############################################

echo "Hello world!"

if conda info --envs | grep -q "/$env_name$"; then
  echo "Environment '$env_name' already exists"
else
  echo "Environment '$env_name' does not exist"
  conda create -n $env_name python=3.9 -y
fi

eval "$(conda shell.bash hook)"
conda activate $env_name
echo "Active Conda environment: $CONDA_DEFAULT_ENV"

#################### generate-avatar-animations #########################
repo_url="https://github.com/AmberLien/generate-avatar-animations.git"
repo_dir="generate-avatar-animations"

if [ -d "$repo_dir" ]; then
  # Repository exists, pull updates
  echo "Repository '$repo_dir' exists, pulling updates..."
  cd "$repo_dir"
  git pull
else
  # Repository does not exist, clone it
  echo "Repository '$repo_dir' does not exist, cloning..."
  git clone "$repo_url" "$repo_dir"
  cd "$repo_dir"
fi
pip install -e .
cd ..

#################### generate-avatar-animations #########################

#################### interactive-talking-avatar #########################
repo_url="https://github.com/AmberLien/interactive-talking-avatar.git"
repo_dir="interactive-talking-avatar"

if [ -d "$repo_dir" ]; then
  # Repository exists, pull updates
  echo "Repository '$repo_dir' exists, pulling updates..."
  cd "$repo_dir"
  git pull
  cd ..
else
  # Repository does not exist, clone it
  echo "Repository '$repo_dir' does not exist, cloning..."
  git clone "$repo_url" "$repo_dir"
fi

cd "$repo_dir"
npm install
cd ..
#################### interactive-talking-avatar #########################

#################### docker #########################
echo "To run the code you will need Docker properly installed and functioning on your PC... If you want to find out how to install Docker, please visit https://docs.docker.com/get-docker/"
#################### docker #########################
