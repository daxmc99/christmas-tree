# Menorah 
ASCII menorah with animations for 256 colored terminals (inspired by apolukhin/christmas-tree):

![Sample](https://raw.githubusercontent.com/daxmc99/menorah/master/docs/menorah.png)

(light are glowing in the terminal!)

# How to build and run:
In terminal run `g++-7 -O2 tree.cpp -std=c++17 -pthread && ./a.out menorah.txt`

# Or with Docker (it also works for linux/arm64, linux/arm/v7 & linux/arm/v6):
docker run -it daxl/menorah

# Build it with Buildx!
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 --tag ${DOCKERHUB_ID}/menorah:latest --push .



