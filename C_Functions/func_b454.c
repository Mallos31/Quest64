f32 func_b454(void *arg0, void *arg1, void *arg2) {
    f32 sp68;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f32 temp_ret;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f64 temp_f0_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    void *temp_s0;
    void *temp_s0_2;
    s32 phi_s3;
    void *phi_s2;
    f32 phi_f14;
    s32 phi_s3_2;
    s32 phi_s1;
    s32 phi_s3_3;
    void *phi_s2_2;
    f32 phi_f14_2;
    s32 phi_s3_4;
    s32 phi_s1_2;
    f32 phi_return;
    s32 phi_s3_5;
    s32 phi_s3_6;
    f32 phi_return_2;
    f32 phi_return_3;
    f32 phi_return_4;
    f32 phi_return_5;
    f32 phi_return_6;

    temp_f16 = arg2->unk28;
    temp_f18 = arg2->unk24;
    temp_f30 = *arg1 + arg2->unk8;
    temp_f14 = temp_f16 * temp_f18;
    temp_f28 = *arg0 + arg2->unk0;
    temp_f20 = temp_f28 - (void *)0x8007BAB8->unk14;
    temp_f24 = ((void *)0x8007BAB8->unk3C * (void *)0x8007BAB8->unk38) + temp_f14;
    temp_f22 = temp_f30 - (void *)0x8007BAB8->unk1C;
    phi_s3 = 0;
    phi_return_5 = (bitwise f32) (void *)0x8007BAB8;
    if (temp_f20 < temp_f24) {
        temp_f0 = -temp_f24;
        phi_s3 = 0;
        phi_return_5 = temp_f0;
        if (temp_f0 < temp_f20) {
            phi_s3 = 0;
            phi_return_5 = temp_f0;
            if (temp_f22 < temp_f24) {
                phi_s3 = 0;
                phi_return_5 = temp_f0;
                if (temp_f0 < temp_f22) {
                    sp68 = temp_f14;
                    temp_ret = func_00034F60((temp_f20 * temp_f20) + (temp_f22 * temp_f22), temp_f14);
                    temp_f0_2 = temp_ret;
                    phi_s3 = 0;
                    phi_return_5 = temp_ret;
                    if (temp_f0_2 < temp_f24) {
                        temp_f2 = temp_f24 / temp_f0_2;
                        *arg0 = (f32) ((*(void *)0x8007BACC + (temp_f20 * temp_f2)) - arg2->unk0);
                        *arg1 = (f32) ((*(void *)0x8007BAD4 + (temp_f22 * temp_f2)) - arg2->unk8);
                        phi_s3 = 1;
                        phi_return_5 = temp_ret;
                    }
                }
            }
        }
    }
    temp_s1 = *(void *)0x8007D08C;
    phi_s3_3 = phi_s3;
    phi_f14_2 = temp_f16 * temp_f18;
    phi_return_3 = phi_return_5;
    if (temp_s1 != 0) {
        phi_s3_3 = phi_s3;
        phi_f14_2 = temp_f16 * temp_f18;
        phi_return_3 = phi_return_5;
        if (phi_s3 == 0) {
            phi_s3_3 = phi_s3;
            phi_f14_2 = temp_f16 * temp_f18;
            phi_return_3 = phi_return_5;
            if (temp_s1 != 0) {
                phi_s2 = (void *)0x8007D090;
                phi_f14 = temp_f16 * temp_f18;
                phi_s1 = temp_s1;
                phi_s3_5 = phi_s3;
                phi_return_6 = phi_return_5;
loop_10:
                temp_s0 = *phi_s2;
                phi_s3_2 = phi_s3_5;
                phi_return_4 = phi_return_6;
                if (temp_s0 != arg2) {
                    temp_f20_2 = temp_f28 - temp_s0->unk0;
                    temp_f22_2 = temp_f30 - temp_s0->unk8;
                    temp_f24_2 = (temp_s0->unk28 * temp_s0->unk24) + phi_f14;
                    phi_s3_2 = phi_s3_5;
                    phi_return_4 = phi_return_6;
                    if (temp_f20_2 < temp_f24_2) {
                        temp_f0_3 = -temp_f24_2;
                        phi_s3_2 = phi_s3_5;
                        phi_return_4 = temp_f0_3;
                        if (temp_f0_3 < temp_f20_2) {
                            phi_s3_2 = phi_s3_5;
                            phi_return_4 = temp_f0_3;
                            if (temp_f22_2 < temp_f24_2) {
                                phi_s3_2 = phi_s3_5;
                                phi_return_4 = temp_f0_3;
                                if (temp_f0_3 < temp_f22_2) {
                                    sp68 = phi_f14;
                                    temp_ret_2 = func_00034F60((temp_f20_2 * temp_f20_2) + (temp_f22_2 * temp_f22_2), phi_f14);
                                    temp_f0_4 = temp_ret_2;
                                    phi_s3_2 = phi_s3_5;
                                    phi_return_4 = temp_ret_2;
                                    if (temp_f0_4 != 0.0f) {
                                        phi_s3_2 = phi_s3_5;
                                        phi_return_4 = temp_ret_2;
                                        if (temp_f0_4 < temp_f24_2) {
                                            temp_f2_2 = temp_f24_2 / temp_f0_4;
                                            *arg0 = (f32) ((temp_s0->unk0 + (temp_f20_2 * temp_f2_2)) - arg2->unk0);
                                            *arg1 = (f32) ((temp_s0->unk8 + (temp_f22_2 * temp_f2_2)) - arg2->unk8);
                                            phi_s3_2 = phi_s3_5 + 1;
                                            phi_return_4 = temp_ret_2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                temp_s1_2 = phi_s1 - 1;
                phi_s3_3 = phi_s3_2;
                phi_f14_2 = phi_f14;
                phi_return_3 = phi_return_4;
                if (phi_s3_2 == 0) {
                    phi_s2 = phi_s2 + 4;
                    phi_f14 = phi_f14;
                    phi_s1 = temp_s1_2;
                    phi_s3_3 = phi_s3_2;
                    phi_f14_2 = phi_f14;
                    phi_s3_5 = phi_s3_2;
                    phi_return_3 = phi_return_4;
                    phi_return_6 = phi_return_4;
                    if (temp_s1_2 != 0) {
                        goto loop_10;
                    }
                }
            }
        }
    }
    temp_s1_3 = *(void *)0x80084F38;
    phi_return = phi_return_3;
    if (temp_s1_3 != 0) {
        phi_return = phi_return_3;
        if (phi_s3_3 == 0) {
            phi_return = phi_return_3;
            if (temp_s1_3 != 0) {
                phi_s2_2 = (void *)0x80084F40;
                phi_s1_2 = temp_s1_3;
                phi_s3_6 = phi_s3_3;
loop_24:
                temp_s0_2 = *phi_s2_2;
                temp_f0_5 = (f64) temp_s0_2->unk10;
                temp_f20_3 = temp_f28 - temp_s0_2->unk0;
                temp_f22_3 = temp_f30 - temp_s0_2->unk8;
                temp_f24_3 = (f32) ((f64) phi_f14_2 + (temp_f0_5 + temp_f0_5));
                phi_s3_4 = phi_s3_6;
                phi_return_2 = (f32) temp_f0_5;
                if (temp_f20_3 < temp_f24_3) {
                    temp_f0_6 = -temp_f24_3;
                    phi_s3_4 = phi_s3_6;
                    phi_return_2 = temp_f0_6;
                    if (temp_f0_6 < temp_f20_3) {
                        phi_s3_4 = phi_s3_6;
                        phi_return_2 = temp_f0_6;
                        if (temp_f22_3 < temp_f24_3) {
                            phi_s3_4 = phi_s3_6;
                            phi_return_2 = temp_f0_6;
                            if (temp_f0_6 < temp_f22_3) {
                                temp_ret_3 = func_00034F60((temp_f20_3 * temp_f20_3) + (temp_f22_3 * temp_f22_3));
                                temp_f0_7 = temp_ret_3;
                                phi_s3_4 = phi_s3_6;
                                phi_return_2 = temp_ret_3;
                                if (temp_f0_7 < temp_f24_3) {
                                    temp_f2_3 = temp_f24_3 / temp_f0_7;
                                    *arg0 = (f32) ((temp_s0_2->unk0 + (temp_f20_3 * temp_f2_3)) - arg2->unk0);
                                    *arg1 = (f32) ((temp_s0_2->unk8 + (temp_f22_3 * temp_f2_3)) - arg2->unk8);
                                    phi_s3_4 = phi_s3_6 + 1;
                                    phi_return_2 = temp_ret_3;
                                }
                            }
                        }
                    }
                }
                temp_s1_4 = phi_s1_2 - 1;
                phi_return = phi_return_2;
                if (phi_s3_4 == 0) {
                    phi_s2_2 = phi_s2_2 + 4;
                    phi_s1_2 = temp_s1_4;
                    phi_return = phi_return_2;
                    phi_s3_6 = phi_s3_4;
                    if (temp_s1_4 != 0) {
                        goto loop_24;
                    }
                }
            }
        }
    }
    return phi_return;
}
