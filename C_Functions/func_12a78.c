void *func_12a78(void *arg0) {
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f64 temp_f0;
    f64 temp_f24;
    f64 temp_f26;
    f64 temp_f28;
    s32 temp_s3;
    s32 temp_s3_2;
    void *temp_s0;
    void *phi_s0;
    f64 phi_f0;
    f32 phi_f20;
    f32 phi_f22;
    s32 phi_s3;
    s32 phi_s3_2;
    void *phi_s0_2;
    f32 phi_f2;

    temp_s3 = *(void *)0x800869A0;
    phi_s3_2 = temp_s3;
    phi_s0_2 = (void *)0x800862E0;
    if (temp_s3 != 0) {
        temp_f28 = *(void *)0x800712C8;
        temp_f26 = *(void *)0x800712D0;
        temp_f24 = *(void *)0x800712D8;
        phi_s0 = (void *)0x800862E0;
        phi_s3 = temp_s3;
loop_2:
        if (func_00012170(phi_s0->unk62) == 0) {
            temp_f0 = (f64) (arg0->unk10 - phi_s0->unk1C);
            if (temp_f24 < temp_f0) {
                phi_f2 = (f32) (temp_f0 - temp_f24);
block_7:
                phi_f0 = (f64) phi_f2;
            } else {
                phi_f0 = temp_f0;
                if (temp_f0 < *(void *)0x800712E0) {
                    phi_f2 = (f32) (temp_f0 + temp_f24);
                    goto block_7;
                }
            }
            if ((phi_f0 < temp_f26) && (temp_f28 < phi_f0) && (temp_f20 = arg0->unk0 - phi_s0->unk44, temp_f22 = arg0->unk8 - phi_s0->unk4C, (((temp_f20 * temp_f20) + (temp_f22 * temp_f22)) < 300.0f))) {
                (void *)0x800869A8->unk0 = temp_f20;
                (void *)0x800869A8->unk4 = temp_f22;
                func_000232F4(phi_s0->unk1C, (void *)0x800869A8);
                temp_f20_2 = (void *)0x800869A8->unk0;
                temp_f22_2 = (void *)0x800869A8->unk4;
                phi_f20 = temp_f20_2;
                if (temp_f20_2 < 0.0f) {
                    phi_f20 = -temp_f20_2;
                }
                if (!(temp_f22_2 < 0.0f)) {
                    phi_f22 = temp_f22_2;
                } else {
                    phi_f22 = -temp_f22_2;
                }
                if (!(phi_f20 < phi_s0->unk18) || (phi_s3_2 = phi_s3, phi_s0_2 = phi_s0, !(phi_f22 < phi_s0->unk20))) {
block_18:
                    temp_s3_2 = phi_s3 - 1;
                    temp_s0 = phi_s0 + 0x6C;
                    phi_s0 = temp_s0;
                    phi_s3 = temp_s3_2;
                    phi_s3_2 = temp_s3_2;
                    phi_s0_2 = temp_s0;
                    if (temp_s3_2 != 0) {
                        goto loop_2;
                    }
                }
            } else {
                goto block_18;
            }
        } else {
            goto block_18;
        }
    }
    if (phi_s3_2 == 0) {
        phi_s0_2 = NULL;
    }
    return phi_s0_2;
}

