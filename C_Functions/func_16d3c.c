Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void *func_16d3c(void *arg0, ? arg1) {
    void *sp40;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_s3;
    u16 temp_v0;
    void *temp_a2;
    void *temp_s0;
    void *temp_s2;
    void *temp_v1;
    void *phi_s2;
    f32 phi_f0;
    s32 phi_s3;
    s32 phi_s3_2;
    void *phi_s2_2;
    s32 phi_s3_3;

    temp_a2 = arg0->unk28;
    if (temp_a2 != 0) {
        if ((temp_a2->unk5E & 1) == 0) {
            sp40 = (void *)0x8007BACC;
            if (func_00018278(arg1, temp_a2, temp_a2) != 0) {
block_21:
                sp40 = NULL;
            } else {
                temp_f2 = *(void *)0x8007BACC - arg0->unkC;
                temp_f14 = *(void *)0x8007BAD4 - arg0->unk14;
                temp_f0 = (f32) ((((f64) *(void *)0x8007BAD0 + ((f64) ((*(void *)0x8007BB30)->unk1C * *(void *)0x8007BAF0) * 0.5)) - (f64) arg0->unk10) * 0.5);
                if ((arg0->unk2C->unk1C + ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0)) < func_00034F60(((temp_f2 * temp_f2) + (temp_f0 * temp_f0)) + (temp_f14 * temp_f14), temp_f14)) {
                    goto block_21;
                }
            }
        } else {
            temp_s3 = *(void *)0x8007C990;
            phi_s3_2 = temp_s3;
            phi_s2_2 = (void *)0x8007C998;
            if (temp_s3 != 0) {
                phi_s2 = (void *)0x8007C998;
                phi_s3_3 = temp_s3;
loop_8:
                temp_s0 = phi_s2 + 0x24;
                phi_s3 = phi_s3_3;
                if (-1 != phi_s2->unk74) {
                    sp40 = temp_s0;
                    if ((func_00018278(arg1, temp_s0) == 0) && (temp_v1 = temp_s0->unk64, temp_v0 = temp_v1->unk0, temp_f2_2 = temp_s0->unk0 - arg0->unkC, temp_f14_2 = temp_s0->unk8 - arg0->unk14, (temp_v0 != 0))) {
                        if (temp_v0 != 1) {
                            phi_f0 = 0.0f;
                        } else {
                            phi_f0 = (f32) ((f64) (temp_s0->unk68->unk94 - arg0->unk10) * 0.5);
                        }
                        phi_s3_2 = phi_s3_3;
                        phi_s2_2 = phi_s2;
                        if (!(func_00034F60(((temp_f2_2 * temp_f2_2) + (phi_f0 * phi_f0)) + (temp_f14_2 * temp_f14_2), temp_f14_2) < (arg0->unk2C->unk1C + (temp_s0->unk64->unk18 * temp_s0->unk24)))) {
block_16:
                            phi_s3 = phi_s3_3 - 1;
block_17:
                            temp_s2 = phi_s2 + 0x128;
                            phi_s2 = temp_s2;
                            phi_s3_2 = phi_s3;
                            phi_s2_2 = temp_s2;
                            phi_s3_3 = phi_s3;
                            if (phi_s3 != 0) {
                                goto loop_8;
                            }
                        }
                    } else {
                        goto block_16;
                    }
                } else {
                    goto block_17;
                }
            }
            if (phi_s3_2 == 0) {
                goto block_21;
            } else {
                *(void *)0x800871DC = phi_s2_2;
            }
        }
    } else {
        goto block_21;
    }
    return sp40;
}
