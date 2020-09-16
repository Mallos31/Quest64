void func_1dbe8(void) {
    s32 sp2C;
    void *sp24;
    s16 temp_v0_2;
    s32 temp_t3;
    u16 temp_t4;
    u16 temp_t5;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *phi_t0;
    s32 phi_a1;
    u16 phi_v1;
    u16 phi_v1_2;
    void *phi_t0_2;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_t0_3;
    f32 phi_f0;

    temp_v1 = *(void *)0x8008C592;
    if ((temp_v1 & 4) != 0) {
        temp_v0 = *(void *)0x8008C594;
        if (temp_v0 != 0) {
            *(void *)0x8008C594 = (u16) (temp_v0 - 1);
            return;
        }
        if ((temp_v1 & 2) != 0) {
            phi_t0 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x24) + 0x8007C998;
        } else {
            phi_t0 = (void *)0x8007BACC;
        }
        if ((phi_t0->unk60 & 1) == 0) {
            temp_t4 = temp_v1 | 8;
            if ((*(void *)0x8007C990 == 0) || ((temp_v1 & 0x400) != 0)) {
                *(void *)0x8008C592 = temp_t4;
                if ((temp_t4 & 0x100) != 0) {
                    sp2C = 1;
                    sp24 = phi_t0;
                    func_0000BA0C((*(void *)0x8008C570 - 1) & 0xFFFF, 1, (void *)0x8008C592);
                    func_0000BB68(*(void *)0x8008C570 - 1);
                    *(void *)0x8007D0A8 = (s32) *(void *)0x8008C568;
                    *(void *)0x8007D0AC = (s32) *(void *)0x8008C56C;
                }
                sp2C = 1;
                sp24 = phi_t0;
                *(void *)0x8007BA70 = func_0001D828(1);
                phi_a1 = 1;
                phi_v1 = *(void *)0x8008C592;
                phi_t0_2 = phi_t0;
            } else {
                if ((temp_v1 & 0x10) != 0) {
                    phi_a1 = 1;
                    phi_v1 = temp_v1;
                    phi_t0_2 = phi_t0;
                } else {
                    phi_a1 = 0;
                    phi_v1 = temp_v1;
                    phi_t0_2 = phi_t0;
                    if ((temp_v1 & 0x100) == 0) {
                        temp_t5 = temp_v1 | 0x10;
                        phi_a1 = 0;
                        phi_v1 = temp_v1;
                        phi_t0_2 = phi_t0;
                        if ((*(void *)0x8007BAC0 & 0x20) != 0) {
                            *(void *)0x8008C592 = temp_t5;
                            phi_a1 = 1;
                            phi_v1 = temp_t5 & 0xFFFF;
                            phi_t0_2 = phi_t0;
                        }
                    }
                }
            }
            temp_v0_2 = phi_v1 & 0xFFFB;
            if (phi_a1 != 0) {
                *(void *)0x8008C592 = (s16) (phi_v1 & 0xFFFE);
                *(void *)0x8008C630 = (u16)0;
                func_00019CA4(*(void *)0x8008C55C, phi_a1, (void *)0x8008C592);
                func_00008F6C();
                func_000143C0(*(void *)0x80086ED8);
                temp_v1_2 = *(void *)0x8008C592;
                temp_t8 = temp_v1_2 & 0xFEFF;
                phi_v1_2 = temp_v1_2;
                if ((temp_v1_2 & 0x100) != 0) {
                    *(void *)0x8008C592 = temp_t8;
                    phi_v1_2 = temp_t8 & 0xFFFF;
                }
                if ((phi_v1_2 & 0x10) == 0) {
                    func_000267F8(0x2B, 8, 0);
                    return;
                }
                func_0002684C(*(void *)0x80084EE4, *(void *)0x80084EE8, 0);
                return;
            }
            *(void *)0x8008C592 = temp_v0_2;
            temp_t3 = temp_v0_2 & 2;
            phi_v0 = temp_t3;
            if (temp_t3 != 0) {
                sp24 = phi_t0_2;
                func_0000932C(phi_a1, (void *)0x8008C592);
                phi_v0 = *(void *)0x8008C592 & 2;
            }
            *(void *)0x8008C5A4 = (f32) *phi_t0_2;
            *(void *)0x8008C430 = (f32) phi_t0_2->unk8;
            if (phi_v0 != 0) {
                phi_f0 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x80080000)->unk-3658;
            } else {
                phi_f0 = *(void *)0x8007BAC4;
            }
            if (phi_v0 != 0) {
                phi_t0_3 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x24) + 0x8007C998;
            } else {
                phi_t0_3 = (void *)0x8007BACC;
            }
            if (phi_v0 != 0) {
                phi_v0_2 = 1;
            } else {
                phi_v0_2 = 2;
            }
            *(void *)0x8008C55E = func_00019A98(phi_v0_2 & 0xFFFF, (bitwise s32) *(void *)0x8008C5A4, phi_t0_3->unk4, (bitwise s32) *(void *)0x8008C430, (f32) ((f64) ((phi_f0 * phi_t0_3->unk68->unk90) + (phi_t0_3->unk64->unk18 * phi_t0_3->unk24)) * *(void *)0x80071690));
        }
    }
}
