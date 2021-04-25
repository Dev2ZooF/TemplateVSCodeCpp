ifeq ($(OS),Windows_NT)
	EXT := .exe
    CCFLAGS += -D WIN32
else
	EXT :=
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        CCFLAGS += -D LINUX
    endif
    ifeq ($(UNAME_S),Darwin)
        CCFLAGS += -D OSX
    endif
endif

default: all
all: .foo
.foo: src/foo.cpp
	g++ -g src/foo.cpp -I include -L lib -lbar $(CCFLAGS) -o build/foo$(EXT)