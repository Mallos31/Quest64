void *func(void) {
    u16 temp_t1;

    *(void *)0x8008FD29 = (s8) (*(void *)0x8008FD29 - 1);
    if ((s32) *(void *)0x8008FD29 < 0) {
        temp_t1 = *(void *)0x8008FD20 & 0xFFF8;
        *(void *)0x8008FD20 = temp_t1;
        *(void *)0x8008FD20 = temp_t1;
    }
    return (void *)0x8008FD20;
}
