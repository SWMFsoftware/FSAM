#^CFG COPYRIGHT UM

SHELL =/bin/sh

include ../Makefile.def
include ../Makefile.conf
-include Makefile.DEPEND

# Configurable objects

OBJECTS = \
	CZ_wrapper.o

SEARCHDIR = -I${SHAREDIR} -I${COUPLERDIR} -I${LIBRARYDIR} -I../src 

DEPEND:
	@perl ${SCRIPTDIR}/depend.pl ${SEARCHDIR} ${OBJECTS}

#
#	Making executables and libraries
#
MY_LIB = ${LIBDIR}/libCZ.a

LIB:	DEPEND
	make ${MY_LIB}
	@echo
	@echo ${MY_LIB} has been brought up to date.
	@echo

FSAM_LIB = ../src/libFSAM.a 

${MY_LIB}: ${FSAM_LIB} ${OBJECTS}
	cp -f ${FSAM_LIB} ${MY_LIB}
	${AR} ${MY_LIB} ${OBJECTS} *.o

clean: cleanfiles

distclean: clean
