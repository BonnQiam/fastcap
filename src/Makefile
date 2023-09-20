# Makefile for
#  fastcap - capacitance calculation program
#  busgen - bus crossing input file generator
#  capgen - || plate capacitor input file generator
#  cubegen - cubic capacitor input file generator
#  pipedgen - parallelepiped input file generator
#  pyragen - pyramid input file generator

include mk_syscfg.inc

SHELL = /bin/sh
RM = /bin/rm
BIN = ../bin
LIBS = -lm

OBJS = mulGlobal.o mulSetup.o mulMats.o mulDo.o mulDisplay.o \
  mulMulti.o mulLocal.o direct.o calcp.o fastcap.o blkDirect.o \
  uglyalloc.o resusage.c patran.o quickif.o electric.o input.o \
  psMatDisplay.o capsolve.o savemat_mod.o zbufInOut.o zbuf2fastcap.o \
  zbufProj.o zbufSort.o
OBJSB = busgen.o disrect.o epsilon.o
OBJSP = pltcapgen.o disrect.o epsilon.o
OBJSC = cubegen.o disrect.o epsilon.o
OBJST = teragen.o disrect.o distri.o epsilon.o
OBJSI = pipedgen.o disrect.o epsilon.o

fastcap: $(OBJS)
	$(CC) -o $(BIN)/fastcap $(CFLAGS) $(OBJS) $(LIBS)

busgen: $(OBJSB)
	$(CC) -o $(BIN)/busgen $(CFLAGS) $(OBJSB) $(LIBS)

capgen: $(OBJSP)
	$(CC) -o $(BIN)/capgen $(CFLAGS) $(OBJSP) $(LIBS)

cubegen: $(OBJSC)
	$(CC) -o $(BIN)/cubegen $(CFLAGS) $(OBJSC) $(LIBS)

pyragen: $(OBJST)
	$(CC) -o $(BIN)/pyragen $(CFLAGS) $(OBJST) $(LIBS)

pipedgen: $(OBJSI)
	$(CC) -o $(BIN)/pipedgen $(CFLAGS) $(OBJSI) $(LIBS)

all : fastcap busgen capgen cubegen pyragen pipedgen

clean:
	$(RM) -f *.o

