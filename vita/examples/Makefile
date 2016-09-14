# Makefile for showimage

CC = arm-vita-eabi-gcc
CFLAGS =  -Wall -O
LIBS = -lSDL2 -lSDL2_image -lvita2d \
	     -lSceKernel_stub -lSceGxm_stub -lSceDisplay_stub -lSceCtrl_stub -lSceAudio_stub \
		 -lSceSysmodule_stub  -lfreetype -lpng -ljpeg -lz -lm -lc
EXE = showimage

all: $(EXE)

showimage: showimage.c Makefile
	$(CC) -o $@ $@.c $(CFLAGS) $(LIBS)

clean:
	-rm *.o $(EXE)
