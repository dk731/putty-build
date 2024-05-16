# Usage

`docker run -it --rm -v PUTTY_SRC_FULL_PATH:/putty-src putty-build:latest`

Example (windows build):
`docker run -it --rm -v $(pwd)/../putty-src:/putty-src putty-build:latest`

Example (unix build):
`docker run -it --rm -v $(pwd)/../putty-src:/putty-src putty-build:latest unix`