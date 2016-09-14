# SDL port by xerpi

TARGET_LIB = libSDL2_image.a
OBJS= IMG.o \
      IMG_bmp.o \
      IMG_gif.o \
      IMG_jpg.o \
      IMG_lbm.o \
      IMG_pcx.o \
      IMG_png.o \
      IMG_pnm.o \
      IMG_tga.o \
      IMG_tif.o \
      IMG_webp.o \
      IMG_xcf.o \
      IMG_xpm.o \
      IMG_xv.o \
      IMG_xxx.o \
      showimage.o 

PREFIX  = arm-vita-eabi
CC      = $(PREFIX)-gcc
AR      = $(PREFIX)-gcc-ar
CFLAGS  = -Wl,-q -Wall -O3 -Iinclude
ASFLAGS = $(CFLAGS)

LIBS +=  -lSDL2  

$(TARGET_LIB): $(OBJS)
	$(AR) rcs $@ $^ 

clean:
	@rm -rf $(TARGET_LIB) $(OBJS)

install: $(TARGET_LIB)
	@cp  $(TARGET_LIB) $(VITASDK)/arm-vita-eabi/lib
	@mkdir -p "$(VITASDK)/arm-vita-eabi/include/SDL2_image"
	@cp *.h "$(VITASDK)/arm-vita-eabi/include/SDL2_image"
	@echo "Installed!"

