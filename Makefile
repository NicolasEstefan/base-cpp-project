CC = g++
FLAGS = -Wall

BIN_NAME = main
BIN_DIR = .
SRC_DIR = src
OBJ_DIR = obj
INLCUDE_DIR = include

CPP_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(CPP_FILES))

all: $(OBJ_FILES)
	$(CC) -o $(BIN_DIR)/$(BIN_NAME) $(FLAGS) $(OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CC) $(FLAGS) -o $@ -c $<


.PHONY:
clean:
	rm -f $(OBJ_FILES)
