#include <stdio.h>
#include "graphics/SDLVulkanApplication.h"

int main() {
    SDLVulkanApplication app;

    try {
        app.run();
    } catch (const std::exception& e) {
        fprintf(stderr, "%s\n", e.what());
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

// vim: ts=4 sw=4 et

