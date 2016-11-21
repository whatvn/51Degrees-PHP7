
CPP             = g++
RM              = rm -f
CPP_FLAGS       = -Wall -c -I. -O2 -std=c++11

PREFIX                  = /usr
#Edit these lines to correspond with your own directories
LIBRARY_DIR             = $(shell php-config --extension-dir)
PHP_CONFIG_DIR  = /etc/php5/cli/conf.d

LD              = g++
LD_FLAGS        = -Wall -shared -O2
RESULT          = 51Degree-PHP7.so

PHPINIFILE              = 51Degrees-PHP7.ini

SOURCES                 = $(wildcard *.cpp)
OBJECTS         = $(SOURCES:%.cpp=%.o)

all:    ${OBJECTS} ${RESULT} ${install}

${RESULT}: ${OBJECTS}
	${LD} ${LD_FLAGS} -o $@ 51Degree-PHP7.o 51Degrees.o Pattern_Profiles.o Threading.o Pattern_Match.o Pattern_Provider.o City_Hash.o json11.o -lrt -lm  -lphpcpp
	cp -f ${RESULT} ${LIBRARY_DIR}

clean:
	${RM} *.obj *.o *~* ${OBJECTS} ${RESULT}

${OBJECTS}:
	${CPP} -ggdb ${CPP_FLAGS} -fpic -o $@ ${@:%.o=%.cpp}
	${CPP} ${CPP_FLAGS} -fpic -o Pattern_Match.o ./deviceDetection/pattern/Match.cpp
	${CPP} ${CPP_FLAGS} -fpic -o Pattern_Provider.o ./deviceDetection/pattern/Provider.cpp
	${CPP} ${CPP_FLAGS} -fpic -o Pattern_Profiles.o ./deviceDetection/pattern/Profiles.cpp
	${CPP} ${CPP_FLAGS} -fpic -o City_Hash.o deviceDetection/cityhash/city.c
	${CPP} ${CPP_FLAGS} -fpic -o Threading.o ./deviceDetection/threading.c 
	${CPP} ${CPP_FLAGS} -fpic -o 51Degrees.o ./deviceDetection/pattern/51Degrees.c 
	${CPP} ${CPP_FLAGS} -fpic -o json11.o ./json11/json11.cpp 

install:
	cp -f ${RESULT} ${LIBRARY_DIR}
	cp -f ${PHPINIFILE}     ${PHP_CONFIG_DIR}
