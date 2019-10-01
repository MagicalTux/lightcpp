#!/bin/make

CXX=g++
CPPFLAGS=-nostdinc -isystem /pkg/main/sys-libs.musl.dev/include -isystem include%s
LD=ld
CFLAGS=-Wall
CXXFLAGS=-Wall -fno-exceptions -fno-rtti -O3
TARGET=lightcpp
OBJECTS=$(patsubst %.cpp,%.o,$(wildcard src/*.cpp))
STRIP=strip --strip-all

all: $(TARGET)

$(TARGET): $(OBJECTS)
	/pkg/main/sys-libs.musl.core/bin/musl-gcc $(LDFLAGS) -static -o $@ $^
	$(STRIP) $@

clean:
	$(RM) $(TARGET) $(OBJECTS)
