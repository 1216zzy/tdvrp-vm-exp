CC = gcc
CFLAGS = -Wall -O2

SRC = code/main.c code/solver.c
OBJ = $(SRC:.c=.o)
TARGET = tdvrp

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
