`docker build -t putty-build:latest .` - build

`docker run -d --name putty-build --volume /Users/demid/Desktop/putty-src:/putty-src putty-build:latest` - run

`apt install`:
- `cmake`
- `mingw-w64`



# Build windows:

- `cmake -DCMAKE_TOOLCHAIN_FILE=Toolchain-Windows.cmake .`
- `cmake --build .`