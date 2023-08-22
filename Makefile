# ----------------------- opition 0 ---------------------

PROG=objs
CC=gcc
CFLAGS=-Wpedantic -Wextra -Wall -Werror -std=c99
DEPS=astring.h

OBJ := asfromcstr.o
OBJ += aslen.o
OBJ += asgetc.o
OBJ += assetc.o
OBJ += asconcat.o
OBJ += fputas.o
OBJ += main.o

$(PROG): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

myProgram: main.o libastring.a
	gcc -lm -o myProgram main.o -L. -lastring

libastring.a: asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o
	ar rcs libastring.a asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o

lib: libastring.a

Debug: CFLAGS+=-g
Debug: objs

clean:
	rm -f *.o


# ------------------ opition 1 (erro) -----------------------------

#CC=gcc
# $(CC) = gcc
# CFLAGS=-Wpedantic -Wextra -Wall -Werror -std=c99

# # OBJ main.o asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o
# # 	gcc main.o asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o -o output 

# all: myProgram

# myProgram: main.o libastring.a
# 	gcc -lm -o myProgram main.o -L. -lastring

# main.o: main.c 
# 	gcc -c main.c astring.h

# asfromcstr.o: asfromcstr.c astring.h
# 	gcc -c asfromcstr.c

# aslen.o: aslen.c astring.h
# 	gcc -c aslen.c

# asgetc.o: asgetc.c astring.h
# 	gcc -c asgetc.c

# assetc.o: assetc.c astring.h
# 	gcc -c assetc.c

# asconcat.o: asconcat.c astring.h
# 	gcc -c asconcat.c

# fputas.o: fputas.c astring.h
# 	gcc -c fputas.c

# libastring.a: asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o
# 	ar rcs libastring.a asfromcstr.o aslen.o asgetc.o assetc.o asconcat.o fputas.o

# libs: libastring.a

# #ar rs libc.a atoi.o printf.o ... strtok.o

# # Debug: CFLAGS+=-g
# # Debug: wbs

# clean: 
# 	rm *.o output

# ------------------- opition 2 (erro) ----------------------------------------

# CFLAGS=-Wpedantic -Wextra -Wall -Werror -std=c99
# $(CC) = gcc

# ojbs: main.o asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o 
# 	$(CC)  main.o asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o -o final

# main.o: main.c astring.h
# 	$(CC) -c main.c 

# asfromcstr.o: asfromcstr.c astring.h
# 	$(CC) -c asfromcstr.c

# aslen.o: aslen.c astring.h
# 	$(CC) -c aslen.c

# asgetc.o: asgetc.c astring.h
# 	$(CC) -c asgetc.c

# assetc.o: assetc.c astring.h
# 	$(CC) -c assetc.c

# asconcat.o: asconcat.c astring.h
# 	$(CC) -c asconcat.c

# fputas.o: fputas.c astring.h
# 	$(CC) -c fputas.c

# CC -c asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o

# ar rs libastring.a asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o 

# ar: creating libastring.a
# 	CC -o sm main.c -L. -libastring

# clean:
# 	rm *.o objs

# -------------------- opiton 3 (erro) ----------------------------

# CC = gcc
# CFLAGS = -g -Wall -std=c99

# default: count

# count: main.o asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o
# 	$(CC) $(CFLAGS) -o count main.o asfromcstr.o asgetc.o aslen.o assetc.o asconcat.o fputas.o

# main.o: main.c astring.h
# 	$(CC)  -c main.c 

# asfromcstr.o: asfromcstr.c astring.h
# 	$(CC) $(CFLAGS) -c asfromcstr.c

# aslen.o: aslen.c astring.h
# 	$(CC) $(CFLAGS) -c aslen.c

# asgetc.o: asgetc.c astring.h
# 	$(CC) $(CFLAGS) -c asgetc.c

# assetc.o: assetc.c astring.h
# 	$(CC) $(CFLAGS) -c assetc.c

# asconcat.o: asconcat.c astring.h
# 	$(CC) $(CFLAGS) -c asconcat.c

# fputas.o: fputas.c astring.h
# 	$(CC) $(CFLAGS) -c fputas.c

# clean: 
# 	$(RM) count *.o *~

#---------------------------- opition 4 (Erro) ----------------------------
# CC = gcc
# CFLAGS = -g -Wall -std=c99

# INCLUDES = -I/tmp/6883_n62ecj0b/include  -I../include

# LFLAGS = -L/tmp/6883_n62ecj0b/lib  -L../lib

# LIBS = -llibastring.a -lm

# SRCS = main.c asfromcstr.c asgetc.c aslen.c assetc.c asconcat.c fputas.c

# OBJS = $(SRCS:.c=.o)

# MAIN = mycc
# .PHONY: depend clean

# all:	$(MAIN)

# $(MAIN): $(OBJS) 
# 	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

# .c.o:
# 	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

# clean: 
# 	$(RM) *.o *~ $(MAIN)

# depend: $(SRCS)
# 	makedepend $(INCLUDES) $^