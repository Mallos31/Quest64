void *func_2c110(s32 arg0) {
    *(void *)0x8007B2E0 = (u16)2;
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C | arg0 | 0x4000);
    *(void *)0x8008FD20 = (u16)0x1000;
    *(void *)0x8008FD28 = (u8)0xFF;
    *(void *)0x8008FD2A = (u8)0;
    *(void *)0x8008FD29 = (u8)0;
    *(void *)0x8008FD22 = (u8)0;
    *(void *)0x8008FD2B = (u8)0;
    *(void *)0x8008FD2C = (u8)0;
    return (void *)0x8008FD0C;
}

