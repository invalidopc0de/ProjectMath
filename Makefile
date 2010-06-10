TARGET_WIN32=${HOME}/IMCROSS/bin/i386-mingw32

all:
	make projectmath-win.exe
	make projectmath-linux

projectmath-linux: main.cpp mathhelper.h src/geometry.h src/geometry.cpp
	g++ -o $@ $^

projectmath-win.exe:  main.cpp mathhelper.h src/geometry.h src/geometry.cpp
	${TARGET_WIN32}-g++ -o $@ $^
	${TARGET_WIN32}-strip $@
 
