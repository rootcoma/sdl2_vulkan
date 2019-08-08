PROG_NAME = sdl2_v.elf

SRC_FILES = src/main.cpp \
	src/graphics/SDLVulkanApplication.cpp

CXX_OPT = -O2 -Wall -Wextra -std=c++17

LINK_OPT = -lSDL2 -lvulkan

build:
	mkdir -p build
	glslc src/shaders/base.vert -o build/vert.spv
	glslc src/shaders/base.frag -o build/frag.spv
	g++ -o build/${PROG_NAME} ${CXX_OPT} ${LINK_OPT} ${SRC_FILES}

clean:
	rm -rf build/*

run: build
	cd build && ./${PROG_NAME}

.PHONY: build all test clean run

