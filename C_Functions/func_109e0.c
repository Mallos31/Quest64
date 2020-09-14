s32 func_109e0(f32 arg0, f32 arg1, f32 arg2) {
    s32 sp40;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_s2;
    s32 temp_v1;
    void *temp_v0;
    void *phi_s0;
    f32 phi_f0;
    f32 phi_f2;
    s32 phi_s2;

    temp_v0 = *(void *)0x80084F1C;
    sp40 = 0;
    temp_v1 = temp_v0->unk8;
    if (temp_v1 == 0) {
block_2:
        return 0;
    }
    if ((*(void *)0x8008C592 & 1) != 0) {
        goto block_2;
    }
    if (temp_v1 != 0) {
        phi_s0 = temp_v0->unk4;
        phi_s2 = temp_v1;
loop_5:
        if (func_0000FFE8(phi_s0) != 0) {
            (void *)0x80085358->unk0 = (f32) (arg0 - phi_s0->unk0);
            (void *)0x80085358->unk4 = (f32) (arg1 - phi_s0->unk4);
            func_000232F4(phi_s0->unk8, (void *)0x80085358);
            temp_f0 = (void *)0x80085358->unk0;
            phi_f0 = temp_f0;
            if (temp_f0 < 0.0f) {
                phi_f0 = -temp_f0;
            }
            temp_f2 = (void *)0x80085358->unk4;
            phi_f2 = temp_f2;
            if (temp_f2 < 0.0f) {
                phi_f2 = -temp_f2;
            }
            if (phi_f0 < phi_s0->unkC) {
                if (phi_f2 < phi_s0->unk10) {
                    if ((phi_s0->unk14 & 2) == 0) {
                        if (func_0000FF54(arg2 - phi_s0->unk8) != 0) {
block_14:
                            func_00010080(phi_s0);
                            sp40 = 1;
                        }
                    } else {
                        goto block_14;
                    }
                } else {
block_15:
                    temp_s2 = phi_s2 - 1;
                    phi_s0 = phi_s0 + 0x24;
                    phi_s2 = temp_s2;
                    if (temp_s2 != 0) {
                        goto loop_5;
                    }
                }
            } else {
                goto block_15;
            }
        } else {
            goto block_15;
        }
    }
    return sp40;
}
