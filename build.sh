#!/bin/bash

source_base="/putty-src"

build_base="$source_base/docker-build"
windows_build="$build_base/windows"
unix_build="$build_base/unix"

if [ ! -d "$build_base" ]; then
  echo "Initializing build folder..."
  mkdir "$build_base"
else
  echo "Build folder already exists."
fi

echo "Starting cmake configuration..."

# Check if the first argument is provided and equals "unix"
if [[ "$1" == "unix" ]]; then
  echo "Executing cmake configuration for Unix"
  if [ ! -d "$unix_build" ]; then
    echo "Initializing unix build folder..."
    mkdir "$unix_build"
  else
    echo "Unix build folder already exists."
  fi

  cd "$unix_build"
  cmake "$source_base"
else
  echo "Executing cmake configuration for Windows"

  if [ ! -d "$windows_build" ]; then
    echo "Initializing windows build folder..."
    mkdir "$windows_build"
  else
    echo "Windows build folder already exists."
  fi

  cd "$windows_build"
  cmake -DCMAKE_TOOLCHAIN_FILE="$source_base/cmake/toolchain-mingw.cmake" "$source_base"
fi


echo "Cmake configuration completed."

echo "Starting build..."
cmake --build .