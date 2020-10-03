void *func_2744c(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_a2;
    s32 temp_v1;
    s8 temp_v1_2;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_return;

    phi_v0 = (void *)0x80053B00;
    phi_v1 = 0x46;
    phi_return = (void *)0x80053B00;
loop_1:
    if (arg0 == phi_v0->unk0) {
        temp_a2 = phi_v0->unk2;
        phi_v1_2 = phi_v1;
        phi_v0_2 = phi_v0;
        if (arg1 != temp_a2) {
            phi_v1_2 = phi_v1;
            phi_v0_2 = phi_v0;
            if (-1 != temp_a2) {
block_4:
                temp_v1 = phi_v1 - 1;
                temp_v0 = phi_v0 + 6;
                phi_v0 = temp_v0;
                phi_v1 = temp_v1;
                phi_v1_2 = temp_v1;
                phi_v0_2 = temp_v0;
                phi_return = temp_v0;
                phi_return = temp_v0;
                if (temp_v1 != 0) {
                    goto loop_1;
                }
            }
        }
    } else {
        goto block_4;
    }
    if (phi_v1_2 != 0) {
        temp_v1_2 = phi_v0_2->unk4;
        phi_return = (void *)0x8008FCC2;
        if (temp_v1_2 != *(void *)0x8008FCC1) {
            *(void *)0x8008FCC1 = temp_v1_2;
            *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 | 1);
            *(void *)0x8008FCC4 = (s16) (arg2 & 0xFFFF);
            phi_return = (void *)0x8008FCC2;
        }
    }
    return phi_return;
}

