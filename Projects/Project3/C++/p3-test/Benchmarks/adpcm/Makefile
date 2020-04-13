# /* For copyright information, see olden_v1.01/COPYRIGHT */

include ../../Makefile.defs

SRC_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/adpcm
INSTALL_DIR=/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/install/bin

vpath %.c $(SRC_DIR)
vpath %.cpp $(SRC_DIR)

programs = adpcm

.PHONY: all install

all: $(addsuffix $(EXTRA_SUFFIX),$(programs))

install: all

DEFS    = -U__GNUC__ -D_NO_LONGLONG -DPLAIN -DOLDEN

SOURCES = adpcm.c rawdaudio.c

# test information
INFILE  = /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/adpcm/large.pcm
OUTFILE = output_large.adpcm
ARGS    = 
COMPARE = `tar xzf /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/adpcm/output_large.adpcm.tgz; echo output_large.adpcm` $(OUTFILE)

include /afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Makefile.benchmark
include ../../Makefile.config
