s32 func_271e8(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x8008FCC2 = (u16)0;
    *(void *)0x8008FCC4 = (u16)0;
    *(void *)0x8008FCC1 = (u8)-1;
    *(void *)0x8008FCC0 = (s8) *(void *)0x8008FCC1;
    *(void *)0x8008FCC6 = (u8)0xFF;
    phi_v1 = (void *)0x8008FCC8;
    phi_v0 = 0x10;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = (u8)0;
    phi_v1->unk3 = (u8)0;
    phi_v1->unk6 = (u8)0;
    phi_v1->unk9 = (u8)0;
    phi_v1 = phi_v1 + 0xC;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

