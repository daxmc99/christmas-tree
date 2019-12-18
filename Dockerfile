FROM alpine:latest as builder

# taken from https://devblogs.microsoft.com/cppblog/using-multi-stage-containers-for-c-development/

RUN apk update && apk add --no-cache \ 
    autoconf build-base binutils cmake curl file gcc g++ git libgcc libtool linux-headers make musl-dev ninja tar unzip wget

WORKDIR /app 

COPY . .


RUN g++ -O2 tree.cpp -std=c++17 -pthread

FROM alpine:latest as prod

RUN apk update && apk add --no-cache \ 
    libstdc++

COPY --from=builder /app/a.out ~/a.out
COPY --from=builder /app/menorah.txt ~/menorah.txt
CMD ["~/a.out", "~/menorah.txt"]
