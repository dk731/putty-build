# Usage

`docker run -it --rm -v PUTTY_SRC_FULL_PATH:/putty-src okee/putty-build:latest`

Example (windows build):
`docker run -it --rm -v $(pwd)/../putty-src:/putty-src okee/putty-build:latest`

Example (unix build):
`docker run -it --rm -v $(pwd)/../putty-src:/putty-src okee/putty-build:latest unix`


# Image Build
- Build the image: `docker build -t putty-build .`
- Add tag: `docker tag putty-build okee/putty-build:latest`
- Push to docker hub: `docker push okee/putty-build:latest`