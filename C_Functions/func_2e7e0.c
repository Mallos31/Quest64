void *func_2e7e0(void) {
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t6_2;
    u16 temp_t8;

    func_0003A7BC(0x80071750, *(void *)0x8008FD2A, *(void *)0x8008FD24);
    temp_v0 = func_00031ACC(((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, *(void *)0x8008FD24);
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_v0;
        temp_v1 = -func_00031BB0(temp_v0);
        if (temp_v1 != 1) {
            if (temp_v1 != 3) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0x10;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t6 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t8 = temp_t6 & 0xBFFF;
        *(void *)0x8008FD20 = temp_t6;
        *(void *)0x8008FD20 = temp_t8;
        *(void *)0x8008FD20 = (u16) (temp_t8 | 0x1000);
        return (void *)0x8008FD20;
    }
    temp_t2 = *(void *)0x8008FD20 & 0xDFFF;
    temp_t4 = temp_t2 & 0xFFF8;
    *(void *)0x8008FD20 = temp_t2;
    temp_t6_2 = temp_t4 & 0xBFFF;
    *(void *)0x8008FD20 = temp_t4;
    *(void *)0x8008FD20 = temp_t6_2;
    *(void *)0x8008FD20 = (u16) (temp_t6_2 | 0x1000);
    *(void *)0x8008FD2C = (u8) (*(void *)0x8008FD2C + 1);
    return (void *)0x8008FD20;
}

