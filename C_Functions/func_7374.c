s32 func_7374(void *arg0) {
    s32 sp70;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f30;
    f64 temp_f0;
    u16 temp_v1;
    u32 temp_s4;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_s3;
    f32 phi_f20;
    f32 phi_f20_2;
    f32 phi_f22;
    u32 phi_s4;

    sp70 = 0;
    temp_f30 = arg0->unk64->unk18 * arg0->unk24;
    if (*(void *)0x8008C59A != 0) {
        phi_s3 = (void *)0x8007D0B0;
        phi_s4 = 0U;
loop_2:
        temp_v0 = (*phi_s3 * 0x128) + 0x8007C998;
        temp_s0 = temp_v0 + 0x24;
        if (-1 != temp_v0->unk74) {
            temp_f20 = temp_s0->unk0 - arg0->unk0;
            temp_f22 = temp_s0->unk8 - arg0->unk8;
            temp_f24 = temp_s0->unk64->unk18 * temp_s0->unk24;
            if ((f64) func_00034F60((temp_f20 * temp_f20) + (temp_f22 * temp_f22)) < ((f64) (temp_f30 + temp_f24) + 10.0)) {
                (void *)0x8007BC30->unk0 = temp_f20;
                (void *)0x8007BC30->unk4 = temp_f22;
                temp_v0_2 = temp_s0->unk64;
                temp_v1 = temp_v0_2->unk0;
                if (1 == temp_v1) {
                    temp_f0 = (f64) temp_v0_2->unk18;
                    phi_f20 = temp_s0->unk68->unk94 - arg0->unk4;
                    phi_f22 = (f32) (temp_f0 + temp_f0);
                } else {
                    if (temp_v1 == 2) {
                        phi_f20 = 0.0f;
                        phi_f22 = 0.0f;
                    } else {
                        phi_f20 = temp_s0->unk4 - arg0->unk4;
                        phi_f22 = temp_v0_2->unk1C;
                    }
                }
                phi_f20_2 = phi_f20;
                if (phi_f20 < 0.0f) {
                    phi_f20_2 = -phi_f20;
                }
                if ((phi_f20_2 - ((phi_f22 * temp_s0->unk24) + (arg0->unk64->unk1C * arg0->unk24))) <= 0.0f) {
                    func_000232F4(arg0->unk10, (void *)0x8007BC30);
                    if (0.0f <= (void *)0x8007BC30->unk4) {
                        temp_f0_2 = (void *)0x8007BC30->unk0;
                        if (-temp_f24 < temp_f0_2) {
                            if (temp_f0_2 < temp_f24) {
                                sp70 = *phi_s3 + 1;
                            } else {
block_16:
                                temp_s4 = phi_s4 + 1;
                                phi_s3 = phi_s3 + 2;
                                phi_s4 = temp_s4;
                                if (temp_s4 < (u32) *(void *)0x8008C59A) {
                                    goto loop_2;
                                }
                            }
                        } else {
                            goto block_16;
                        }
                    } else {
                        goto block_16;
                    }
                } else {
                    goto block_16;
                }
            } else {
                goto block_16;
            }
        } else {
            goto block_16;
        }
    }
    return sp70;
}
