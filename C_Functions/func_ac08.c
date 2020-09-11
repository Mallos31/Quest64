void *func_ac08(void *arg0, void *arg1) {
    void *sp54;
    void *sp50;
    ? sp3C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_v0;
    void *phi_t2;
    ? *phi_v1;
    u32 phi_a0;
    u32 phi_a3;
    ? *phi_v1_2;
    u32 phi_a0_2;
    u32 phi_a3_2;
    s32 phi_t0;
    u32 phi_a2;
    u32 phi_a0_3;
    u32 phi_a3_3;
    ? *phi_v1_3;
    void *phi_t2_2;
    s32 phi_t0_2;
    void *phi_t1;
    void *phi_t2_3;
    u16 phi_a2_2;
    u32 phi_a0_4;
    s32 phi_t0_3;
    u32 phi_a2_3;
    u32 phi_a2_4;
    u32 phi_a0_5;
    void *phi_t1_2;
    s32 phi_t0_4;
    void *phi_t1_3;
    void *phi_t1_4;

    arg0->unk8 = (u16) (arg0->unk8 & 0xFFEF);
    temp_f0 = (void *)0x8007BAB8->unk14 - arg1->unk0;
    temp_f2 = (void *)0x8007BAB8->unk1C - arg1->unk8;
    temp_t1 = arg0->unk20;
    temp_a2 = temp_t1->unk2C;
    temp_t2 = temp_t1->unk30;
    temp_f16 = func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) - ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0);
    phi_t2 = temp_t2;
    phi_v1 = &sp3C;
    phi_a0 = 0U;
    phi_a2_2 = temp_a2;
    phi_t2_3 = temp_t2;
    if (temp_a2 != 0) {
loop_1:
        *phi_v1 = phi_t2;
        temp_a0 = phi_a0 + 1;
        temp_a2_2 = arg0->unk20->unk2C;
        temp_t2_2 = phi_t2 + 0x18;
        phi_t2 = temp_t2_2;
        phi_v1 = phi_v1 + 4;
        phi_a0 = temp_a0;
        if (temp_a0 < (u32) temp_a2_2) {
            goto loop_1;
        }
        phi_a2_2 = temp_a2_2;
        phi_t2_3 = temp_t2_2;
    }
    phi_a3 = phi_a2_2 - 1;
    phi_a2_4 = (u32) phi_a2_2;
loop_4:
    phi_v1_2 = &sp3C;
    phi_a0_2 = phi_a0_4;
    phi_t0 = 0;
    phi_a2 = phi_a2_4;
    phi_a3_3 = phi_a3;
    phi_a3_2 = phi_a3;
    phi_a0_5 = phi_a0_4;
    phi_t1_2 = phi_t1_4;
    phi_t0_4 = 0;
    phi_a2_3 = phi_a2_4;
    phi_t1_3 = phi_t1_4;
    if (phi_a3 != 0) {
loop_5:
        temp_a1 = phi_v1_2->unk0;
        temp_v0 = phi_v1_2->unk4;
        temp_a0_2 = phi_a0_2 + 1;
        phi_t0_3 = phi_t0_4;
        if (temp_v0->unk10 < temp_a1->unk10) {
            phi_v1_2->unk0 = temp_v0;
            phi_v1_2->unk4 = temp_a1;
            temp_t1_2 = arg0->unk20;
            temp_a2_3 = temp_t1_2->unk2C;
            phi_a3_2 = temp_a2_3 - 1;
            phi_t0_3 = phi_t0_4 + 1;
            phi_a2_3 = (u32) temp_a2_3;
            phi_t1_3 = temp_t1_2;
        }
        phi_v1_2 = phi_v1_2 + 4;
        phi_a0_2 = temp_a0_2;
        phi_t0_4 = phi_t0_3;
        if (temp_a0_2 < phi_a3_2) {
            goto loop_5;
        }
        phi_t0 = phi_t0_3;
        phi_a2 = phi_a2_3;
        phi_a3_3 = phi_a3_2;
        phi_a0_5 = 0U;
        phi_t1_2 = phi_t1_3;
    }
    phi_a3 = phi_a3_3;
    phi_a0_4 = phi_a0_5;
    phi_a2_4 = phi_a2;
    phi_t1_4 = phi_t1_2;
    if (phi_t0 != 0) {
        goto loop_4;
    }
    phi_t0_2 = 0;
    phi_t1 = phi_t1_2;
    if (phi_a2 != 0) {
        temp_f12 = arg1->unk24;
        temp_f14 = arg0->unk10 * arg0->unk120;
        phi_a0_3 = phi_a0_5;
        phi_v1_3 = &sp3C;
loop_12:
        temp_t2_3 = phi_v1_3->unk0;
        if (phi_a0_3 < phi_a3_3) {
            temp_f0_2 = temp_t2_3->unk10 * temp_f12;
            if (temp_f16 < temp_f0_2) {
                phi_t0_2 = 1;
                phi_t1 = phi_t1_2;
                phi_t2_3 = temp_t2_3;
            } else {
                if (temp_f16 < (temp_f14 + temp_f0_2)) {
                    temp_a1_2 = phi_v1_3->unk4;
                    if (temp_f16 < (temp_a1_2->unk10 * temp_f12)) {
                        sp50 = temp_a1_2;
                        sp54 = temp_t2_3;
                        phi_t2_2 = temp_t2_3;
                        if (func_00022FD0(temp_f12, temp_f14, 2, temp_a1_2, phi_a2, phi_a3_3) == 0) {
                            phi_t2_2 = temp_a1_2;
                        }
                        if (phi_t2_2 != temp_a1_2) {
                            arg0->unk8 = (u16) (arg0->unk8 | 0x10);
                        }
                        phi_t0_2 = 1;
                        phi_t1 = arg0->unk20;
                        phi_t2_3 = phi_t2_2;
                    } else {
block_26:
                        temp_a0_3 = phi_a0_3 + 1;
                        phi_a0_3 = temp_a0_3;
                        phi_v1_3 = phi_v1_3 + 4;
                        phi_t0_2 = 0;
                        phi_t1 = phi_t1_2;
                        phi_t2_3 = temp_t2_3;
                        if (temp_a0_3 < phi_a2) {
                            goto loop_12;
                        }
                    }
                } else {
                    goto block_26;
                }
            }
        } else {
            temp_f0_3 = temp_t2_3->unk10 * temp_f12;
            if (temp_f16 < (temp_f14 + temp_f0_3)) {
                phi_t1 = phi_t1_2;
                if (temp_f0_3 < temp_f16) {
                    arg0->unk8 = (u16) (arg0->unk8 | 0x10);
                    phi_t1 = arg0->unk20;
                }
                phi_t0_2 = 1;
                phi_t2_3 = temp_t2_3;
            } else {
                goto block_26;
            }
        }
    }
    if (phi_t0_2 == 0) {
        phi_t2_3 = NULL;
    }
    if ((phi_t1->unk24 & 4) != 0) {
        phi_t2_3 = (func_00022FD0(phi_t1->unk2C) * 0x18) + arg0->unk20->unk30;
    }
    arg0->unk1C = phi_t2_3;
    return phi_t2_3;
}
