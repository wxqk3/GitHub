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
TEST= (./story > the_story.txt) ; cat the_story.txt
# -----------------------------------------------DERS.h
TEST= (./story > the_story.txt); cat the_story.txt

# -----------------------------------------------
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test though, when it's built.
# -----------------------------------------------

all: story

test: 
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

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
story: story.o bpbkt7.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jarpqd.o jdckw4.o jg229.o lvkvc8.o 
=======
story: story.o bpbkt7.o jah3xc.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jarpqd.o jdckw4.o lvkvc8.o
>>>>>>> ed2ef86fd8085f288ec51bf3cdf30188cefa7d4b
=======
story: story.o bpbkt7.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jtmyz9.o jarpqd.o jdckw4.o jg229.o ob44f.o cjm539.o jtl378.o jah3xc.o msdrm8.o rhhq7.o
=======
story: story.o bpbkt7.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jtmyz9.o jarpqd.o jdckw4.o jg229.o ob44f.o cjm539.o jtl378.o jah3xc.o msdrm8.o rhhq7.o kfjmbb.o
>>>>>>> kfjmbb

<<<<<<< HEAD
story: story.o bpbkt7.o snhqm9.o pje279.o syg84.o acmyf.o nasz8f.o mdsf3f.o rml3md.o yzghf.o sskgz8.o szz63.o hagd5d.o klft2.o cgj6hb.o jmpcz9.o mkc42.o casty8.o scfpt6.o jtmyz9.o jarpqd.o jdckw4.o jg229.o ob44f.o cjm539.o jtl378.o jah3xc.o med43b.o
=======
>>>>>>> 74d14b7c87a1fefef1b631fec900a4d48a910a8e
>>>>>>> 21a3adef16fd1a0b31115039103b108dc045101f
	$(CC) -o story $^

# -----------------------------------------------

story.o: story.c
	$(CC) -c -o $@ $^

# -----------------------------------------------


#pawprint.o -  where is your .c derived object file - where is your file
%.o : sentences/%.c
	$(CC) -c -o $@ $<
