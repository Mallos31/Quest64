void *func_2e214(void) {
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t8;

    temp_v0 = func_0003195C(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2CF);
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_v0;
        temp_v1 = -func_00031BB0(temp_v0);
        if (temp_v1 != 1) {
            if (temp_v1 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xC;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t6 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t8 = temp_t6 | 5;
        *(void *)0x8008FD20 = temp_t6;
        *(void *)0x8008FD20 = temp_t8;
        *(void *)0x8008FD20 = (u16) (temp_t8 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
    temp_t4 = temp_t2 | 5;
    *(void *)0x8008FD20 = temp_t2;
    *(void *)0x8008FD20 = temp_t4;
    *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
    *(void *)0x8008FD22 = (u8)0x16;
    *(void *)0x8008FD29 = (u8)0xA;
    ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2CF = (u8)-1;
    return (void *)0x8008FD20;
}

