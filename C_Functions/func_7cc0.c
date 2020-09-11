s32 func_7cc0(void *arg0) {
    s32 sp24;
    s32 sp1C;
    s16 temp_v0_3;
    s32 temp_a0;
    s32 temp_v1;
    u16 temp_a3;
    u16 temp_t3;
    u16 temp_t7;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_a1;
    void *temp_a2;
    s32 phi_v0;
    u16 phi_a3;

    temp_a2 = arg0;
    sp1C = 0;
    temp_a3 = temp_a2->unk11C;
    if (((s32) temp_a3 < 3) && (temp_v0 = *(void *)0x80092876, ((temp_v0 & 0xF) != 0))) {
        if ((temp_v0 & 8) != 0) {
            sp24 = 0;
        } else {
            if ((temp_v0 & 4) != 0) {
                sp24 = 2;
            } else {
                if ((temp_v0 & 2) != 0) {
                    sp24 = 1;
                } else {
                    if ((temp_v0 & 1) != 0) {
                        sp24 = 3;
                    }
                }
            }
        }
        temp_a1 = temp_a2 + 0x119;
        (temp_a2 + temp_a3)->unk119 = (s8) sp24;
        temp_t7 = temp_a2->unk11C + 1;
        temp_a2->unk11C = temp_t7;
        arg0 = temp_a2;
        if ((func_000149D0(func_00014890(temp_t7 & 0xFFFF, temp_a1, temp_a2, temp_a3), arg0->unk10->unk8, arg0) & 5) != 0) {
            arg0->unk11C = (u16) (arg0->unk11C - 1);
            phi_v0 = 0x13;
        } else {
            temp_v1 = *(void *)0x8007B2E4;
            if ((temp_v1 & 4) == 0) {
                *(void *)0x8007B2E4 = (s32) (temp_v1 | 4);
                phi_v0 = 0x17;
            } else {
                phi_v0 = 0x17;
            }
        }
        func_000268D4(0, (s32) (phi_v0 << 0x18) >> 0x18, 0xFF);
    } else {
        temp_v0_2 = *(void *)0x80092876;
        if ((temp_a3 != 0) && ((temp_v0_2 & 0xA000) != 0)) {
            arg0 = temp_a2;
            temp_v0_3 = func_00014890(temp_a3 & 0xFFFF, temp_a2 + 0x119, temp_a2, temp_a3);
            temp_a0 = temp_v0_3 & 0xFFFF;
            arg0->unk11E = temp_v0_3;
            if (func_000149D0(temp_a0, arg0->unk10->unk8, arg0) == 0) {
                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -5);
                sp1C = 1;
            }
        } else {
            if ((temp_v0_2 & 0x4000) != 0) {
                if ((*(void *)0x8007B2E4 & 4) != 0) {
                    temp_t3 = temp_a3 - 1;
                    phi_a3 = temp_a3;
                    if (temp_a3 != 0) {
                        temp_a2->unk11C = temp_t3;
                        phi_a3 = temp_t3 & 0xFFFF;
                    }
                    if (phi_a3 == 0) {
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -5);
                    }
                    func_000268D4(0, 0x13, 0xFF, phi_a3);
                }
            }
        }
    }
    return sp1C;
}
