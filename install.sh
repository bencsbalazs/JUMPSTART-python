#!/bin/sh

dockerInstall() {
	echo "Installing Docker CLI..."
}

# 1. Check, environment is installed correctly
#	1.1 Discover the environment
platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'win32' ]]; then
   platform='freebsd'
fi
echo $platform

#	1.2 Install/Update docker
if [[ "$platform" == "linux" ]]; then
	docker=`docker -v`
	if [[ "$docker" != *"Docker"*  ]]; then
		echo "Docker is not installed."
	else
		dockerInstall
	fi
fi
#	1.3 Install github cli
#	1.4 Install git cli

# 2. Create project
#	2.1 Read the project's name
[[ -z "$1" ]] && { echo 'No project name is given.'; exit 1; }
packagename="$1"
if [ -z "$2" ]; then
  now="$(date +'%Y-%m-%d')"
else
  now=$2
fi

echo "Which repo should be installed?"
echo "	1. Python (standard)"
echo "	2. Python (framework)"
echo "	3. Node"
read whichRepo
#	2.2 Clone the repo from JUMPSTART-XXXXX

#	2.3 Set the repo as upstream
#	2.4 Add new origin
#	2.5 Create the repo on github

# 3. Install the project
