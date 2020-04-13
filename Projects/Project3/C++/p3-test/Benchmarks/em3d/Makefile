# /* For copyright information, see olden_v1.01/COPYRIGHT */

include ../../Makefile.defs

SRC_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/em3d
INSTALL_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/install/bin

vpath %.c $(SRC_DIR)
vpath %.cpp $(SRC_DIR)

programs = em3d

.PHONY: all install

all: $(addsuffix $(EXTRA_SUFFIX),$(programs)) 

install: all 

DEFS    = -U__GNUC__ -D_NO_LONGLONG -DPLAIN -DOLDEN

SOURCES = em3d.c main.c make_graph.c util.c args.c

# test information
INFILE  = /dev/null
OUTFILE = $(programs)$(EXTRA_SUFFIX).out
ARGS    = 160000 15 88
COMPARE = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/em3d/output.em3d $(OUTFILE)

include /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Makefile.benchmark
include ../../Makefile.config
