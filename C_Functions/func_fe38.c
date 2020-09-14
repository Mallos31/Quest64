s32 func_fe38(f32 arg0, f32 arg1, f32 arg2, s32 arg3, void *arg4, void *arg5) {
    s32 sp88;
    f32 sp74;
    f32 sp70;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f4;
    s16 temp_a0;
    s16 temp_a1;
    s32 temp_s0;
    s32 temp_s4;
    u16 temp_s3;
    u16 temp_s3_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_v0;
    void *temp_v1;
    void *phi_s1;
    f32 phi_f14;
    s32 phi_s0;
    f32 phi_f14_2;
    u16 phi_s3;

    sp88 = 0;
    temp_s1 = arg4->unk14;
    temp_s4 = arg4->unk1C;
    if (temp_s1 != 0) {
        if (arg0 < ((f32) arg4->unk0 * arg2)) {
block_5:
            return 0;
        }
        if (((f32) arg4->unk2 * arg2) < arg0) {
            goto block_5;
        }
        if (arg1 < ((f32) arg4->unk8 * arg2)) {
            goto block_5;
        }
        if (((f32) arg4->unkA * arg2) < arg1) {
            goto block_5;
        }
        temp_s3 = arg4->unk18;
        phi_s1 = temp_s1;
        phi_f14 = arg1;
        phi_s3 = temp_s3;
        if (temp_s3 != 0) {
loop_7:
            if ((phi_s1->unk6 & (arg3 & 0xFFFF)) != 0) {
                temp_a0 = phi_s1->unk0;
                temp_a1 = phi_s1->unk2;
                temp_s2 = temp_s4 + (temp_a0 * 8);
                temp_v0 = temp_s4 + (temp_a1 * 8);
                temp_v1 = temp_s4 + (phi_s1->unk4 * 8);
                temp_f4 = (f32) temp_s2->unk0 * arg2;
                sp74 = temp_f4;
                temp_f10 = (f32) temp_s2->unk4 * arg2;
                sp70 = temp_f10;
                temp_f20 = (f32) temp_v0->unk0 * arg2;
                temp_f22 = (f32) temp_v0->unk4 * arg2;
                temp_f24 = (f32) temp_v1->unk0 * arg2;
                temp_f26 = (f32) temp_v1->unk4 * arg2;
                if (arg0 == temp_f4) {
                    if (phi_f14 == temp_f10) {
                        phi_s0 = 1;
                        phi_f14_2 = phi_f14;
                    } else {
block_11:
                        if (arg0 == temp_f20) {
                            if (phi_f14 == temp_f22) {
                                phi_s0 = 1;
                                phi_f14_2 = phi_f14;
                            } else {
block_14:
                                if (arg0 == temp_f24) {
                                    if (phi_f14 == temp_f26) {
                                        phi_s0 = 1;
                                        phi_f14_2 = phi_f14;
                                    } else {
block_17:
                                        arg1 = phi_f14;
                                        temp_s0 = func_0000F5A4(arg0, phi_f14, temp_a0, temp_a1, (bitwise s32) sp74, (bitwise s32) sp70, temp_f20, temp_f22);
                                        temp_s0 = temp_s0 + func_0000F5A4(arg0, arg1, temp_f20, temp_f22, temp_f24, temp_f26);
                                        phi_s0 = temp_s0 + func_0000F5A4(arg0, arg1, (bitwise s32) sp74, (bitwise s32) sp70, temp_f24, temp_f26);
                                        phi_f14_2 = arg1;
                                    }
                                } else {
                                    goto block_17;
                                }
                            }
                        } else {
                            goto block_14;
                        }
                    }
                } else {
                    goto block_11;
                }
                phi_f14 = phi_f14_2;
                if (phi_s0 == 1) {
                    temp_f0 = phi_s1->unkC;
                    temp_f2 = phi_s1->unk8;
                    temp_f12 = phi_s1->unk10;
                    if (temp_f0 != 0.0f) {
                        arg5->unk4 = (f32) (-(((temp_f2 * arg0) + (temp_f12 * phi_f14_2)) - (((temp_f2 * sp74) + (temp_f0 * ((f32) temp_s2->unk2 * arg2))) + (temp_f12 * sp70))) / temp_f0);
                        arg5->unk18 = (u16) phi_s1->unk6;
                    } else {
                        arg5->unk18 = (u16) phi_s1->unk6;
                    }
                    arg5->unkC = temp_f2;
                    arg5->unk10 = temp_f0;
                    arg5->unk14 = temp_f12;
                    sp88 = 1;
                } else {
block_23:
                    temp_s3_2 = phi_s3 - 1;
                    phi_s1 = phi_s1 + 0x14;
                    phi_s3 = temp_s3_2;
                    if (temp_s3_2 != 0) {
                        goto loop_7;
                    }
                }
            } else {
                goto block_23;
            }
        }
    }
    return sp88;
}
