CC=gcc
LIB=-lncurses
TARGET=snake
SRC=$(wildcard *.c)
OBJ=$(patsubst %.c, %.o, $(SRC))

$(TARGET): $(OBJ)
	$(CC) $(LIB) -o $@ $^

$(OBJ): $(SRC)
	$(CC) -c $^

clean:
	rm *.o $(TARGET)
