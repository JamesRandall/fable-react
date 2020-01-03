#!/bin/bash

OS=${OS:-"unknown"}

echo $OSTYPE
if [ "$OS" != "Windows_NT" ]
then
  # Allows NETFramework like net45 to be built using dotnet core tooling with mono
  export FrameworkPathOverride=$(dirname $(which mono))/../lib/mono/4.5/
fi
echo "Restoring for build"
dotnet restore build.proj
echo "Building"
dotnet fake $@
