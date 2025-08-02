BIN_MAIN = bin/main
BIN_TEST = bin/test
SRC_C = $(wildcard src/*.cpp)
SRC_H = $(wildcard src/*.hpp)
OBJ = $(patsubst src/%.cpp, obj/%.o, $(SRC_C) )

all: test run

clean:
	rm -fr obj/* bin/*

run: $(BIN_MAIN) 
	$<

test: $(BIN_TEST) 
	$<

$(BIN_TEST): $(OBJ)
	@if [ ! -d bin ]; then mkdir bin; fi
	g++ $(filter-out $(wildcard **/*main*), $(OBJ) ) -o $@

$(BIN_MAIN): $(OBJ)
	@if [ ! -d bin ]; then mkdir bin; fi
	g++ $(filter-out $(wildcard **/*test*), $(OBJ) ) -o $@

obj/%.o: src/%.cpp src/%.hpp
	@if [ ! -d obj ]; then mkdir obj; fi
	g++ -c $< -o $@

