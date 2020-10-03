s32 func_274d4(s32 arg0, s8 arg1, s32 arg2) {
    s32 temp_v0;
    s8 temp_t6;
    u32 temp_t2;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_return;

    temp_t6 = arg0 & 0xFF;
    temp_t2 = (u32) ((arg1 + 0x80050000)->unk3CAC * (arg2 & 0xFF) * *(void *)0x8008FCC6) >> 0x10;
    if (temp_t6 == 0) {
        return func_00025B8C(arg1, temp_t2, 0x40, temp_t2);
    }
    phi_v0 = 0xF;
    phi_v1 = (void *)0x8008FCC8;
    phi_v1_2 = (void *)0x8008FCC8;
    phi_return = 0xF;
    if (*(void *)0x8008FCC8 != 0) {
loop_3:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 3;
        phi_v1_2 = temp_v1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_return = temp_v0;
            if (*temp_v1 != 0) {
                goto loop_3;
            }
        }
    }
    phi_v1_2->unk0 = temp_t6;
    phi_v1_2->unk2 = (s8) temp_t2;
    phi_v1_2->unk1 = arg1;
    return phi_return;
}

