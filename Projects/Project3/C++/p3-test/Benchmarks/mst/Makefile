# /* For copyright information, see olden_v1.01/COPYRIGHT */

include ../../Makefile.defs

SRC_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/mst
INSTALL_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/install/bin

vpath %.c $(SRC_DIR)
vpath %.cpp $(SRC_DIR)

programs = mst

.PHONY: all install

all: $(addsuffix $(EXTRA_SUFFIX),$(programs))

install: all 

DEFS    = -U__GNUC__ -D_NO_LONGLONG 

SOURCES = main.c makegraph.c hash.c args.c

# test information
INFILE  = /dev/null
OUTFILE = $(programs)$(EXTRA_SUFFIX).out
ARGS    = 2048
COMPARE = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/mst/mst.out
include ../../../wolfbench/Makefile.benchmark
include ../../Makefile.config
