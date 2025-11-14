# Variáveis
CC = gcc
CXX = g++
CFLAGS = -Wall -g    # Flags para o compilador C (ex: ativar todos os avisos e gerar debug)
CXXFLAGS = -Wall -g  # Flags para o compilador C++ (semelhante ao C)

# Diretórios
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Arquivos de saída
CC_EXEC = $(BIN_DIR)/cc-hello
#CXX_EXEC = $(BIN_DIR)/cpp-hello

# Regras
all: $(CC_EXEC) $(CXX_EXEC)

# Compilação do programa C
$(CC_EXEC): $(SRC_DIR)/cc-hello.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -o $(CC_EXEC) $(SRC_DIR)/cc-hello.c

# Compilação do programa C++
#$(CXX_EXEC): $(SRC_DIR)/cpp-hello.cpp | $(BIN_DIR)
#	$(CXX) $(CXXFLAGS) -o $(CXX_EXEC) $(SRC_DIR)/cpp-hello.cpp

# Limpar arquivos gerados
clean:
	rm -f $(BIN_DIR)/*

# Gerar os diretórios, se não existirem
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

