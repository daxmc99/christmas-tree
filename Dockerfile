FROM gcc:latest

COPY . .


RUN g++ -O2 tree.cpp -std=c++17 -pthread

CMD ["./a.out xtree.txt"]
