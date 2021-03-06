################################################
#
#	@(#).make	1.2 6/17/90
# Makefile from GUENI
################################################

## List of files to make the program :

SOURCES   =  create_list.c
USERLIBS  = 
SYSLIBS   = -lm 
PROGRAM   = create_list

## Options for compiler, linker:
CC        = gcc 
XINCLUDE  = 
CFLAGS    = -g -Wall $(XINCLUDE) -O3 
LDFLAGS   = 

#################################################

OBJS     = $(SOURCES:.c=.o) 

.KEEP_STATE:

all:	$(PROGRAM)

$(PROGRAM):	$(OBJS)
		$(LINK.c) $(LDFLAGS) -o $@ $(OBJS) $(SYSLIBS) $(USERLIBS)


clean:
	rm -rf $(PROGRAM) $(OBJS)

.c.o:
	$(CC) $(CFLAGS)  -c $<

