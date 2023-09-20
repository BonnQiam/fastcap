# Master makefile for fastcap and related programs and documentation.

SRC = src

default:
	@echo Specify what to make:
	@echo " fastcap - capacitance calculation program"
	@echo " cubegen - cubic capacitor input file generator"
	@echo " capgen - parallel plate capacitor input file generator"
	@echo " busgen - bus crossing input file generator"
	@echo " pipedgen - parallelepiped input file generator"
	@echo " pyragen - pyramid input file generator"
	@echo " all - all of the above"
	@echo " manual - run latex to produce the manual in .dvi format"
	@echo " clean - remove object files"

fastcap:
	cd $(SRC) ; $(MAKE) fastcap

cubegen:
	cd $(SRC) ; $(MAKE) cubegen

capgen:
	cd $(SRC) ; $(MAKE) capgen

busgen:
	cd $(SRC) ; $(MAKE) busgen

pipedgen:
	cd $(SRC) ; $(MAKE) pipedgen

pyragen:
	cd $(SRC) ; $(MAKE) pyragen

all: fastcap cubegen capgen busgen pipedgen pyragen

clean:
	cd $(SRC) ; $(MAKE) clean

distclean:
	$(MAKE) clean
	rm -f bin/fastcap bin/cubegen bin/capgen bin/busgen bin/pipedgen \
 bin/pyragen

