# /* For copyright information, see olden_v1.01/COPYRIGHT */

include ../../Makefile.defs

SRC_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/dijkstra
INSTALL_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/install/bin

vpath %.c $(SRC_DIR)
vpath %.cpp $(SRC_DIR)

programs = dijkstra

.PHONY: all install

all: $(addsuffix $(EXTRA_SUFFIX),$(programs)) 

install: all 

DEFS    = 

SOURCES = dijkstra_large.c

# test information
INFILE  = /dev/null
OUTFILE = output_large$(EXTRA_SUFFIX).out
ARGS    = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/dijkstra/input.dat
COMPARE = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/dijkstra/output_large.txt $(OUTFILE)

include /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Makefile.benchmark
include ../../Makefile.config
