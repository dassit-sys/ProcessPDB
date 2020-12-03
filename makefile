vpath %.h include
vpath %.c src

SRC = src
OBJECTIVES = main.o io.o util.o
CFLAGS = -I include
CC = gcc
PROG = Assign_4
DEST = ~/.local/bin

#rules
$(PROG): $(OBJECTIVES)
	$(CC) -o Assign_4 $(OBJECTIVES)

main.o: main.c io.h util.h
	$(CC) -c $(SRC)/main.c $(CFLAGS)
io.o: io.c io.h
	$(CC) -c $(SRC)/io.c $(CFLAGS)
util.o: util.c util.h
	$(CC) -c $(SRC)/util.c $(CFLAGS)

.PHONY: clean
clean: 
	-rm -f *.o $(PROG)

.PHONY: install
install: $(PROG)
	-mkdir $(DEST)
	cp $(PROG) $(DEST)

.PHONY: uninstall
uninstall: 
	-rm $(DEST)/$(PROG)
