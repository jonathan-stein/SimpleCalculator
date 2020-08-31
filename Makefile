
CC := g++
SRCDIR := src
BUILDDIR := build
TARGET := bin/runner

SRCEXT := cpp
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
CFLAGS := -g -std=c++11 -Wall
LIB := -pthread -L lib 
INC := -I include
CATCH_SINGLE_INCLUDE := include

$(TARGET): $(OBJECTS)
	mkdir -p bin
	$(CC) $^ -o $(TARGET) $(LIB)
	
$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
	$(RM) -r $(BUILDDIR) $(TARGET)

test: test/test.cpp $(OBJECTS)
	mkdir -p bin
	g++ $(CFLAGS) $(INC) -o bin/test test/test.cpp && bin/test --success

