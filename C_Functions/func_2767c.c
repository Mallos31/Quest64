void *func_2767c(s32 arg0) {
    s32 temp_t4;
    s32 temp_t8;
    u16 temp_a2;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    u16 phi_v1;
    void *phi_t1;
    void *phi_t1_2;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = 0x8005FAA0;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x8000;
    temp_v0_2->unk0 = 0xBA000E02;
    func_0002A668((void *)0x8007B2FC);
    temp_v1 = *(void *)0x8008FD0C;
    *(void *)0x8008FD10 = (s32) (*(void *)0x8008FD10 + 1);
    if ((temp_v1 & 0x4000) != 0) {
        func_0002B57C();
block_13:
        phi_v1 = (void *)0x80090000->unk-2F4;
    } else {
        temp_t8 = temp_v1 & 3;
        if ((temp_v1 & 0x2000) != 0) {
            func_00026D1C();
            goto block_13;
        } else if (temp_t8 != 0) {
            if (temp_t8 != 1) {
                if (temp_t8 != 2) {
                    if (temp_t8 != 3) {
                        phi_v1 = temp_v1;
                        phi_t1 = (void *)0x8008FD0C;
                    } else {
                        func_00029448(0);
                        goto block_13;
                    }
                } else {
                    func_00028624(0);
                    goto block_13;
                }
            } else {
                func_000278B0(0);
                goto block_13;
            }
        } else {
            func_00026F34(0);
            goto block_13;
        }
    }
    *phi_t1 = (u16) (phi_v1 & 0xFFEF);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xBA000E02;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 1;
    temp_v0_4->unk0 = 0xF9000000;
    temp_a2 = *(void *)0x80092876;
    if (((temp_a2 & 0x4000) != 0) || (phi_t1_2 = phi_t1, phi_return = temp_v0_4, ((temp_a2 & 0x1000) != 0))) {
        temp_v1_2 = *phi_t1;
        phi_t1_2 = phi_t1;
        phi_return = temp_v0_4;
        if ((temp_v1_2 & 0x4000) == 0) {
            *phi_t1 = (u16) (temp_v1_2 & 0x7FFF);
            phi_t1_2 = (void *)0x8008FD0C;
            phi_return = func_000268D4(0, 1, 0xFF, 1);
        }
    }
    temp_v1_3 = *phi_t1_2;
    if ((temp_v1_3 & 0x8000) == 0) {
        if ((temp_v1_3 & 0x4000) != 0) {
            temp_t4 = temp_v1_3 & 0xC;
            if (temp_t4 != 0) {
                if (temp_t4 != 4) {
                    if (temp_t4 != 8) {

                    } else {
                        *(void *)0x8007B2E0 = (u16)3;
                    }
                } else {
block_29:
                    (void *)0x80080000->unk-4D20 = (u16)1;
                }
            } else if ((0x80090000 & 0x80) != 0) {
                *(void *)0x8007B2E0 = (u16)1;
                *(void *)0x8008FD0E = (u8)1;
            } else {
                *(void *)0x8007B2E0 = (u16)3;
                *(void *)0x8008FD0E = (u8)0;
            }
        } else {
            goto block_29;
        }
        phi_return = func_00026A40((u16)1);
    }
    return phi_return;
}

