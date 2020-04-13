# /* For copyright information, see olden_v1.01/COPYRIGHT */

include ../../Makefile.defs

SRC_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/FIR
INSTALL_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/install/bin

vpath %.c $(SRC_DIR)
vpath %.cpp $(SRC_DIR)

programs = fir

.PHONY: all install

all: $(addsuffix $(EXTRA_SUFFIX),$(programs))

install: all 

DEFS    = 

SOURCES = fir.c

# test information
INFILE  = /dev/null
OUTFILE = $(programs)$(EXTRA_SUFFIX).out
ARGS    = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/FIR/input.pcm
COMPARE = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/FIR/outputFloat.pcm outputFloat.pcm

include /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Makefile.benchmark
include ../../Makefile.config
