BIN = bin/main
SRC_C = $(wildcard src/*.cpp)
SRC_H = $(wildcard src/*.hpp)
OBJ = $(patsubst src/%.cpp, obj/%.o, $(SRC_C) )

all: run

clean:
	rm -fr obj/* bin/*

run: $(BIN) 
	$<

$(BIN): $(OBJ)
	if [ ! -d bin ]; then mkdir bin; fi
	g++ $^ -o $@

obj/%.o: src/%.cpp src/%.hpp
	if [ ! -d obj ]; then mkdir obj; fi
	g++ -c $< -o $@

