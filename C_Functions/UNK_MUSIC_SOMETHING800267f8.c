void *func(s32 arg0, s32 arg1) {
    s32 temp_a0;

    temp_a0 = (s32) (arg0 << 0x18) >> 0x18;
    if (temp_a0 != *(void *)0x8008FCC1) {
        *(void *)0x8008FCC1 = (s8) temp_a0;
        *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 | 1);
        *(void *)0x8008FCC4 = (s16) (arg1 & 0xFFFF);
    }
    return (void *)0x8008FCC1;
}
