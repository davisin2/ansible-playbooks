#!/bin/bash

if [[ ! -f "target/remote_user" ]]; then
    echo "Creating SSH Keys for target machines"
    cd target/
    ssh-keygen -t rsa -b 4096 -f remote_user
    cd ..
fi

echo "---------- Building Docker Images ------------"
docker-compose build
echo "---------- Building Docker Images Complete ---"



echo "---------- Starting Docker containers --------"
docker-compose up -d
echo "---------- Docker containers Started ---------"

