# !/bin/bash

if [[ "$OSTYPE" == "linux"* ]]; then
        # Change VM linux
        sudo sysctl -w vm.max_map_count=262144
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Change VM MacOS
        docker-machine ssh
        sudo sysctl -w vm.max_map_count=262144
else
        exit 1
fi

VERSION="7.11.1" HOSTCERTSDIR="$PWD/certs" ESCERTSDIR="/usr/share/elasticsearch/config" \
KIBCERTSDIR="/usr/share/kibana/config" FLUCERTSDIR="/etc/ssl/certs" docker-compose up
