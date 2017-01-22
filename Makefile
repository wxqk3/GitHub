#################################################
# Makefile format
# target: dependencies
# <tab>	 Command to generate target
#################################################

# -----------------------------------------------
# Super useful shortcuts:
#   $@ matches the target;
#   $< matches the first dependent
#   $^ Matches all dependencies
# -----------------------------------------------

# -----------------------------------------------
# But first, some definitions.

# -----------------------------------------------
# Flag to replace gcc,  $(CC) = gcc
CC= gcc
# -----------------------------------------------
# CLEAN definition - git rid of compiled stuff
CLEAN= rm -rf *.o story
CLEANWIN = del /f /s *.o *.exe story
# -----------------------------------------------
# TEST definition - write to file and cat file
TEST= (./story | fold -s | sed 's/[[:space:]]*$$//' > the_story.txt); cat the_story.txt

# -----------------------------------------------
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test though, when it's built.
# -----------------------------------------------

all: story

test: story
	@$(TEST)

# -----------------------------------------------
# When you type 'make clean', you get rid of
# all of the *.o and the 'story' file.
# -----------------------------------------------

clean:
	$(CLEAN)

cleanwin:
	$(CLEANWIN)

# -----------------------------------------------
# Now we bring in our dependencies.
# 'all' needs 'story'. What does story need?
# And how do we make it?
# -----------------------------------------------


story: story.o bpbkt7.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jarpqd.o jdckw4.o jg229.o ob44f.o cjm539.o jtl378.o jah3xc.o


	$(CC) -o story $^

# -----------------------------------------------

story.o: story.c
	$(CC) -c -o $@ $^

# -----------------------------------------------


#pawprint.o -  where is your .c derived object file - where is your file
%.o : sentences/%.c
	$(CC) -c -o $@ $<
