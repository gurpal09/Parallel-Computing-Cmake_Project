SHELL = /bin/sh

IDIR =../include
ODIR=../obj
BDIR=../bin
BKPDIR=../bkp

PRG = wave
_PRG = $(PRG).exe
EXECUTABLE = $(_PRG:%=$(BDIR)/%)
NOW=$(shell date +"%d-%b-%y")
_TAR:= wave_$(NOW)
TAR=$(patsubst %,$(BKPDIR)/%,$(_TAR))

CC=gcc
DEBUG = -g
CFLAGS = -Wall -O2 -std=c99 $(DEBUG) -I$(IDIR)
LDFLAGS =
LIBS = -lm 
SOURCES = createMesh.c  initialize.c  main.c  \
          io.c  solveWave.c validate.c

_DEPS = parameter.h initialize.h createMesh.h \
       io.h solveWave.h validate.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))


_OBJ = $(SOURCES:.c=.o)
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 
	
$(EXECUTABLE): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(EXECUTABLE) core

.PHONY: tar
tar:
	tar -cvf $(TAR).tar $(SOURCES) $(DEPS) Makefile
	gzip $(TAR).tar
