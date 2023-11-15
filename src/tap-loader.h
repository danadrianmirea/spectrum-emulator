#ifndef SPECTRUM_TAP_LOADER_H
#define SPECTRUM_TAP_LOADER_H

#include <stdlib.h>

struct Tap {
    uint8_t *data;
    uint8_t *end;
    uint8_t *current;
};

int tap_construct(struct Tap* tap, char const* filename);
void tap_destruct(struct Tap* tap);

int tap_load_next_block(struct Tap* tap,
                        uint8_t block_type,
                        uint16_t addr,
                        uint16_t length,
                        uint8_t* memory);

#endif // SPECTRUM_TAP_LOADER_H