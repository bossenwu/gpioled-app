SRC:=gpioled-app.c
OBJ:=gpioled-app.o
PRG:=gpioled-app

LDFLAGS:=-lgpiod

all: $(OBJ)
	$(CC) $(OBJ) -o $(PRG) $(LDFLAGS)

$(OBJ):
	$(CC) -c $(SRC) -o $(OBJ)

clean:
	rm *.o $(PRG)
