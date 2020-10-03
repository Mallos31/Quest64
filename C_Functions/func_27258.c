u8 func_27258(void) {
    s32 temp_s1;
    s8 temp_a1;
    u16 temp_t1;
    u16 temp_t5;
    u16 temp_v0;
    u16 temp_v1;
    u8 temp_t1_2;
    u8 temp_v0_2;
    u16 phi_v0;
    void *phi_s0;
    s32 phi_s1;
    u8 phi_return;

    temp_v0 = *(void *)0x8008FCC2;
    phi_v0 = temp_v0;
    if ((temp_v0 & 1) != 0) {
        temp_v1 = *(void *)0x8008FCC4;
        if (temp_v1 == 0) {
            if (*(void *)0x8008FCC0 != -1) {
                *(void *)0x8008FCC2 = (u16) (temp_v0 | 2);
            } else {
                *(void *)0x8008FCC2 = (u16) (temp_v0 | 4);
            }
            temp_t1 = *(void *)0x8008FCC2 & 0xFFFE;
            *(void *)0x8008FCC2 = temp_t1;
            phi_v0 = temp_t1 & 0xFFFF;
        } else {
            *(void *)0x8008FCC4 = (u16) (temp_v1 - 1);
            phi_v0 = temp_v0;
        }
    }
    if ((phi_v0 & 2) != 0) {
        temp_t5 = phi_v0 & 0xFFFD;
        *(void *)0x8008FCC2 = temp_t5;
        *(void *)0x8008FCC2 = (u16) (temp_t5 | 4);
        func_000253F0(0);
    } else if (((phi_v0 & 4) != 0) && (func_0002543C(0) == 0)) {
        *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 & 0xFFFB);
        *(void *)0x8008FCC0 = (s8) *(void *)0x8008FCC1;
        temp_a1 = *(void *)0x8008FCC0;
        if (temp_a1 != -1) {
            func_000252D8(0, temp_a1);
            func_00026A04();
            func_00025364(0);
        }
    }
    phi_s0 = (void *)0x8008FCC8;
    phi_s1 = 0x10;
loop_14:
    temp_v0_2 = phi_s0->unk0;
    temp_t1_2 = temp_v0_2 - 1;
    phi_return = temp_v0_2;
    if (temp_v0_2 != 0) {
        phi_s0->unk0 = temp_t1_2;
        phi_return = temp_v0_2;
        if ((temp_t1_2 & 0xFF) == 0) {
            phi_return = func_00025B8C(phi_s0->unk1, phi_s0->unk2, 0x40);
        }
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 3;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_14;
    }
    return phi_return;
}

