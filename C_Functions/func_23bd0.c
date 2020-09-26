u32 func_23bd0(u32 arg0) {
    u32 temp_t8;
    u32 temp_v0;

    if (arg0 != 0) {
        temp_t8 = (*(void *)0x8004D748 * 0x41C64E6D) + 0x3039;
        temp_v0 = (u32) (temp_t8 >> 0x10) % arg0;
        *(void *)0x8004D748 = temp_t8;
        return temp_v0;
    }
    return 0U;
}
