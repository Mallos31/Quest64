s32 func_2791c(void) {
    s32 sp2C;
    s32 sp28;
    void *sp20;
    s32 temp_t0;
    s32 temp_t4;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_a0;
    u16 temp_t0_2;
    u16 temp_t3;
    u16 temp_t5;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *phi_a1;
    void *phi_a2;
    s32 phi_v0;
    s32 phi_return;

    temp_a0 = *(void *)0x8008FD0C;
    sp28 = 0;
    if ((temp_a0 & 0x1000) != 0) {
        *(void *)0x8008FD04 = (s32) (*(void *)0x8008FD04 + 8);
        temp_t0 = *(void *)0x8008FD08 + 8;
        *(void *)0x8008FD08 = temp_t0;
        phi_a1 = (void *)0x8008FD08;
        phi_a2 = (void *)0x8008FD04;
        if (temp_t0 == 0) {
            sp28 = -1;
            phi_a1 = (void *)0x8008FD08;
            phi_a2 = (void *)0x8008FD04;
        }
    } else {
        temp_t4 = *(void *)0x8008FD04 - 8;
        *(void *)0x8008FD04 = temp_t4;
        *(void *)0x8008FD08 = (s32) (*(void *)0x8008FD08 - 8);
        phi_a1 = (void *)0x8008FD04;
        phi_a2 = (void *)0x8008FD08;
        if (temp_t4 == 0) {
            sp28 = 1;
            phi_a1 = (void *)0x8008FD04;
            phi_a2 = (void *)0x8008FD08;
        }
    }
    temp_v0 = temp_a0 & 3;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                if (temp_v0 != 3) {
                    phi_v0 = temp_v0;
                    phi_return = temp_v0;
                } else {
                    sp20 = phi_a1;
                    sp2C = temp_v0;
                    func_00029448(*phi_a2, phi_a1, phi_a2);
                    temp_a1 = phi_a1;
                    if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                        func_00028624(*temp_a1, temp_a1);
                    } else {
                        func_00026F34(*temp_a1, temp_a1);
                    }
block_25:
                    phi_v0 = sp2C;
                    phi_return = sp2C;
                }
            } else {
                sp20 = phi_a1;
                sp2C = temp_v0;
                func_00028624(*phi_a2, phi_a1, phi_a2);
                temp_a1_2 = phi_a1;
                if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                    func_000278B0(*temp_a1_2, temp_a1_2);
                } else {
                    func_00029448(*temp_a1_2, temp_a1_2);
                }
                goto block_25;
            }
        } else {
            sp20 = phi_a1;
            sp2C = temp_v0;
            func_000278B0(*phi_a2, phi_a1, phi_a2);
            temp_a1_3 = phi_a1;
            if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                func_00026F34(*temp_a1_3, temp_a1_3);
            } else {
                func_00028624(*temp_a1_3, temp_a1_3);
            }
            goto block_25;
        }
    } else {
        sp20 = phi_a1;
        sp2C = temp_v0;
        func_00026F34(*phi_a2, phi_a1, phi_a2);
        temp_a1_4 = phi_a1;
        if ((*(void *)0x8008FD0C & 0x1000) != 0) {
            func_00029448(*temp_a1_4, temp_a1_4);
        } else {
            func_000278B0(*temp_a1_4, temp_a1_4);
        }
        goto block_25;
    }
    if (sp28 != 0) {
        temp_t0_2 = *(void *)0x8008FD0C & 0xDFFF;
        temp_t3 = temp_t0_2 & 0xEFFF;
        *(void *)0x8008FD0C = temp_t0_2;
        temp_t5 = temp_t3 & 0xFFFC;
        temp_v0_2 = phi_v0 + sp28;
        *(void *)0x8008FD0C = temp_t3;
        *(void *)0x8008FD0C = temp_t5;
        *(void *)0x8008FD0C = (u16) (temp_t5 | (temp_v0_2 & 3));
        phi_return = temp_v0_2;
    }
    return phi_return;
}

