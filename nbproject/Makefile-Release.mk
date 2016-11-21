#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/ad299da8/51Degree-PHP7.o \
	${OBJECTDIR}/_ext/98b06f4f/json11.o \
	${OBJECTDIR}/deviceDetection/cityhash/city.o \
	${OBJECTDIR}/deviceDetection/console/Console.o \
	${OBJECTDIR}/deviceDetection/console/Console.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees_PHP.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees_csharp.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees_node.o \
	${OBJECTDIR}/deviceDetection/pattern/51Degrees_perl.o \
	${OBJECTDIR}/deviceDetection/pattern/Match.o \
	${OBJECTDIR}/deviceDetection/pattern/PerfPat.o \
	${OBJECTDIR}/deviceDetection/pattern/ProcPat.o \
	${OBJECTDIR}/deviceDetection/pattern/Profiles.o \
	${OBJECTDIR}/deviceDetection/pattern/Provider.o \
	${OBJECTDIR}/deviceDetection/threading.o \
	${OBJECTDIR}/deviceDetection/trie/51Degrees.o \
	${OBJECTDIR}/deviceDetection/trie/51Degrees.o \
	${OBJECTDIR}/deviceDetection/trie/Match.o \
	${OBJECTDIR}/deviceDetection/trie/PerfTrie.o \
	${OBJECTDIR}/deviceDetection/trie/ProcTrie.o \
	${OBJECTDIR}/deviceDetection/trie/Provider.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lib51Degree-PHP7.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lib51Degree-PHP7.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lib51Degree-PHP7.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared -fPIC

${OBJECTDIR}/_ext/ad299da8/51Degree-PHP7.o: /Users/Hung/NetBeansProjects/51Degree-PHP7/51Degree-PHP7.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/ad299da8
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ad299da8/51Degree-PHP7.o /Users/Hung/NetBeansProjects/51Degree-PHP7/51Degree-PHP7.cpp

${OBJECTDIR}/_ext/98b06f4f/json11.o: /Users/Hung/NetBeansProjects/51Degree-PHP7/json11/json11.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/98b06f4f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/98b06f4f/json11.o /Users/Hung/NetBeansProjects/51Degree-PHP7/json11/json11.cpp

${OBJECTDIR}/deviceDetection/cityhash/city.o: deviceDetection/cityhash/city.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/cityhash
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/cityhash/city.o deviceDetection/cityhash/city.c

${OBJECTDIR}/deviceDetection/console/Console.o: deviceDetection/console/Console.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/console
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/console/Console.o deviceDetection/console/Console.c

${OBJECTDIR}/deviceDetection/console/Console.o: deviceDetection/console/Console.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/console
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/console/Console.o deviceDetection/console/Console.cpp

${OBJECTDIR}/deviceDetection/pattern/51Degrees.o: deviceDetection/pattern/51Degrees.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees.o deviceDetection/pattern/51Degrees.c

${OBJECTDIR}/deviceDetection/pattern/51Degrees.o: deviceDetection/pattern/51Degrees.i 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees.o deviceDetection/pattern/51Degrees.i

${OBJECTDIR}/deviceDetection/pattern/51Degrees_PHP.o: deviceDetection/pattern/51Degrees_PHP.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees_PHP.o deviceDetection/pattern/51Degrees_PHP.cpp

${OBJECTDIR}/deviceDetection/pattern/51Degrees_csharp.o: deviceDetection/pattern/51Degrees_csharp.cxx 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees_csharp.o deviceDetection/pattern/51Degrees_csharp.cxx

${OBJECTDIR}/deviceDetection/pattern/51Degrees_node.o: deviceDetection/pattern/51Degrees_node.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees_node.o deviceDetection/pattern/51Degrees_node.cpp

${OBJECTDIR}/deviceDetection/pattern/51Degrees_perl.o: deviceDetection/pattern/51Degrees_perl.cxx 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/51Degrees_perl.o deviceDetection/pattern/51Degrees_perl.cxx

${OBJECTDIR}/deviceDetection/pattern/Match.o: deviceDetection/pattern/Match.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/Match.o deviceDetection/pattern/Match.cpp

${OBJECTDIR}/deviceDetection/pattern/PerfPat.o: deviceDetection/pattern/PerfPat.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/PerfPat.o deviceDetection/pattern/PerfPat.c

${OBJECTDIR}/deviceDetection/pattern/ProcPat.o: deviceDetection/pattern/ProcPat.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/ProcPat.o deviceDetection/pattern/ProcPat.c

${OBJECTDIR}/deviceDetection/pattern/Profiles.o: deviceDetection/pattern/Profiles.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/Profiles.o deviceDetection/pattern/Profiles.cpp

${OBJECTDIR}/deviceDetection/pattern/Provider.o: deviceDetection/pattern/Provider.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/pattern
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/pattern/Provider.o deviceDetection/pattern/Provider.cpp

${OBJECTDIR}/deviceDetection/threading.o: deviceDetection/threading.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/threading.o deviceDetection/threading.c

${OBJECTDIR}/deviceDetection/trie/51Degrees.o: deviceDetection/trie/51Degrees.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/51Degrees.o deviceDetection/trie/51Degrees.c

${OBJECTDIR}/deviceDetection/trie/51Degrees.o: deviceDetection/trie/51Degrees.i 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/51Degrees.o deviceDetection/trie/51Degrees.i

${OBJECTDIR}/deviceDetection/trie/Match.o: deviceDetection/trie/Match.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/Match.o deviceDetection/trie/Match.cpp

${OBJECTDIR}/deviceDetection/trie/PerfTrie.o: deviceDetection/trie/PerfTrie.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/PerfTrie.o deviceDetection/trie/PerfTrie.c

${OBJECTDIR}/deviceDetection/trie/ProcTrie.o: deviceDetection/trie/ProcTrie.c 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.c) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/ProcTrie.o deviceDetection/trie/ProcTrie.c

${OBJECTDIR}/deviceDetection/trie/Provider.o: deviceDetection/trie/Provider.cpp 
	${MKDIR} -p ${OBJECTDIR}/deviceDetection/trie
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/deviceDetection/trie/Provider.o deviceDetection/trie/Provider.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
