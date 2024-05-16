FROM ubuntu:latest

# Install required packages for the build
RUN apt-get update && apt-get install -y \
    cmake \
    mingw-w64 \
    git \
    && rm -rf /var/lib/apt/lists/*  

# Copy build script into the image
COPY build.sh /usr/local/bin/build-putty.sh

# Ensure the script is executable
RUN chmod +x /usr/local/bin/build-putty.sh

# Set the ENTRYPOINT to build script
ENTRYPOINT ["build-putty.sh"]