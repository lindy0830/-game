CC = gcc
CFLAGS = -I SDL_devel/include/SDL2 -I SDL_image/include/SDL2 -I SDL_ttf/include/SDL2 -I open_bag
LDFLAGS = -L SDL_devel/lib -L SDL_image/lib -L SDL_ttf/lib
LIBS = -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_ttf

packbag: packbag.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

packbag.o: packbag.c item_boundary.h
	$(CC) $(CFLAGS) -c -o $@ $<

# mingw32-make
# ./packbag.exe

# main: main.o myIO.o myConv.o myCalc.o 
# 	gcc -o a main.o myIO.o myConv.o myCalc.o

# main.o:main.c myIO.h myConv.h myCalc.h basic.h
# 	gcc -c main.c
	 
# myIO.o: myIO.c myIO.h basic.h
# 	gcc -c myIO.c
	 
# myConv.o: myConv.c myConv.h myIO.h myCalc.h basic.h
# 	gcc -c myConv.c
	 
# myCalc.o: myCalc.c myCalc.h myConv.h myIO.h basic.h
# 	gcc -c myCalc.c

# justify: justify.o word.o line.o
# 	gcc -o justify justify.o word.o line.o
	 
# justify.o: justify.c word.h line.h
# 	gcc -c justify.c
	 
# word.o: word.c word.h
# 	gcc -c word.c
	 
# line.o: line.c line.h
# 	gcc -c line.c
