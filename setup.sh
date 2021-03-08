#!/bin/bash

VERSION="7.11.1" HOSTCERTSDIR="$PWD/certs" ESCERTSDIR="/usr/share/elasticsearch/config" KIBCERTSDIR="/usr/share/kibana/config" FLUCERTSDIR="/etc/ssl/certs" docker-compose up
