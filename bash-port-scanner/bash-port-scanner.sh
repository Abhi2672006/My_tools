#!/bin/bash

if [[ -z "$BASH_VERSION" ]]; then
    echo "Please run this script using bash!"
    exit1
fi 

target=$1

if [[ -z $target ]]
then
    echo "Usage: $0 <target>"
    exit 1
fi
echo "Scanning running for $target (ports 1-1024)"

    for i in {1..1024}
    do
        timeout 0.5 bash -c "echo > /dev/tcp/$target/$i" 2>/dev/null && echo "port $i is open"
    
    done


