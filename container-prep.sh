#!/bin/bash

if [ ! $DNCVER ]; then
DNCVER=2.0
fi

if [ ! -d /opt/dotnet/${DNCVER} ]; then
echo $DNCVER is not a valid version. We support 1.1 and 2.0
fi

env DNCVER=$DNCVER
env

echo Using dotnet core version: $DNCVER


