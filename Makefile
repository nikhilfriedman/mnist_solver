CC = gcc
CFLAGS = -Wall -pedantic -O3 -m64
LDFLAGS = -lSDL2main -lSDL2 -lSDL2_ttf
MINGW = -lmingw32
INCLUDES = -I./SDL2/include -I./src/compilation -I./src/files -I./src/graphics
LIBS = -L./SDL2/lib
SRC_DIR = src

SRC = $(wildcard $(SRC_DIR)/*.c) \
      $(wildcard $(SRC_DIR)/files/*.c) \
      $(wildcard $(SRC_DIR)/graphics/*.c)

OUTPUT_WIN = mnist_solver.exe
OUTPUT_LIN = mnist_solver

$(OUTPUT_WIN):
	$(CC) $(CFLAGS) $(SRC) $(INCLUDES) $(LIBS) $(MINGW) $(LDFLAGS) -o $(OUTPUT_WIN)

windows: $(OUTPUT_WIN)

$(OUTPUT_LIN):
	$(CC) $(CFLAGS) $(SRC) $(INCLUDES) $(LDFLAGS) -o $(OUTPUT_LIN)

linux: $(OUTPUT_LIN)

# clean:
# 	rm -f $(OUTPUT_WIN)