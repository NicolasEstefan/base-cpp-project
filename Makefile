CXX = g++
CXXFLAGS = -Wall

BIN_NAME = main
BIN_DIR = .
SRC_DIR = src
OBJ_DIR = obj
INLCUDE_DIR = include

$(shell mkdir -p $(OBJ_DIR))
$(shell mkdir -p $(INLCUDE_DIR))

CPP_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(CPP_FILES))

$(BIN_NAME): $(OBJ_FILES)
	$(CXX) -o $(BIN_DIR)/$(BIN_NAME) $(CXXFLAGS) $(OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<



.PHONY:
clean:
	rm -f $(OBJ_FILES)
