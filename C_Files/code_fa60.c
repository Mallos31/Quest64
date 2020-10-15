Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void *func_8000EE60(f32 arg0, f32 arg1, f32 arg2, s32 arg3, void *arg4) {
    s32 temp_f18;
    s32 temp_f4;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_s0;
    u16 temp_s0_2;
    u16 temp_s0_3;
    u16 temp_s0_4;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_v0_3;
    s32 phi_v1;
    s32 phi_a1;
    void *phi_s1;
    f32 phi_f20;
    f32 phi_f22;
    void *phi_s1_2;
    u16 phi_s0;
    void *phi_s1_3;
    u16 phi_s0_2;
    void *phi_return;

    temp_s3 = arg3 & 0xFFFF;
    *(void *)0x80085340 = (f32) arg4->unk0;
    arg4->unk0 = arg0;
    arg4->unk4 = arg1;
    arg4->unk8 = arg2;
    arg4->unk18 = (u16)0x8000;
    arg4->unkC = 0.0f;
    arg4->unk14 = 0.0f;
    arg4->unk10 = 1.0f;
    if ((temp_s3 & 1) != 0) {
        temp_v0 = *(void *)0x80084F2C;
        phi_f20 = arg0;
        phi_f22 = arg2;
        if (temp_v0 != 0) {
            phi_f20 = arg0;
            phi_f22 = arg2;
            if (func_8000FCBC(arg0, arg2, (*(void *)0x80084EE8 * 0x10) + temp_v0, arg4) != 0) {
block_8:
                phi_f22 = arg4->unk8;
            }
        }
    } else {
        phi_f20 = arg0;
        phi_f22 = arg2;
        if ((temp_s3 & 2) != 0) {
            temp_v0_2 = *(void *)0x80084F30;
            phi_f20 = arg0;
            phi_f22 = arg2;
            if (temp_v0_2 != 0) {
                phi_f20 = arg0;
                phi_f22 = arg2;
                if (func_8000FCBC(arg0, arg2, (*(void *)0x80084EE8 * 0x10) + temp_v0_2, arg4) != 0) {
                    goto block_8;
                }
            }
        }
    }
    temp_v0_3 = *(void *)0x80084F20;
    if (temp_v0_3->unk28 == 0) {
        phi_v1 = 0;
        phi_a1 = 0;
        phi_s1 = temp_v0_3->unk20;
    } else {
        temp_f4 = (s32) ((phi_f20 - temp_v0_3->unk8) / temp_v0_3->unk10);
        temp_f18 = (s32) ((phi_f22 - temp_v0_3->unkC) / temp_v0_3->unk14);
        phi_v1 = temp_f4;
        phi_a1 = temp_f18;
        phi_s1 = (*(temp_v0_3->unk1C + (((temp_v0_3->unk4 * temp_f18) + temp_f4) * 2)) * 2) + temp_v0_3->unk20;
    }
    if (((((phi_v1 >= 0) && (phi_v1 < (s32) temp_v0_3->unk4)) && (phi_a1 >= 0)) && (phi_a1 < (s32) temp_v0_3->unk6)) && (temp_s0 = *phi_s1, phi_s1_2 = phi_s1 + 2, phi_s0 = temp_s0, (temp_s0 != 0))) {
loop_17:
        temp_ret = func_8000F0BC(phi_f20, phi_f22, temp_s3 & 0xFFFF, *phi_s1_2, arg4);
        temp_s0_2 = phi_s0 - 1;
        phi_return = temp_ret;
        if (temp_ret == 0) {
            phi_s1_2 = phi_s1_2 + 2;
            phi_s0 = temp_s0_2;
            if (temp_s0_2 != 0) {
                goto loop_17;
            }
block_20:
            temp_s0_3 = (*(void *)0x80084F20)->unk2;
            phi_s1_3 = (*(void *)0x80084F20)->unk24;
            phi_s0_2 = temp_s0_3;
            if (temp_s0_3 != 0) {
loop_21:
                temp_ret_2 = func_8000F0BC(phi_f20, phi_f22, temp_s3 & 0xFFFF, *phi_s1_3, arg4);
                temp_s0_4 = phi_s0_2 - 1;
                phi_return = temp_ret_2;
                if (temp_ret_2 == 0) {
                    phi_s1_3 = phi_s1_3 + 2;
                    phi_s0_2 = temp_s0_4;
                    phi_return = temp_ret_2;
                    if (temp_s0_4 != 0) {
                        goto loop_21;
                    }
                }
            }
        }
    } else {
        goto block_20;
    }
    return phi_return;
}

s32 func_8000F0BC(f32 arg0, f32 arg1, u16 arg2, s32 arg3, void *arg4) {
    s32 sp4C;
    s32 sp44;
    void *sp40;
    f32 sp38;
    f32 sp34;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    f32 phi_f20;
    s32 phi_t0;

    temp_t6 = arg3 & 0xFFFF;
    temp_t8 = *(void *)0x80084F24;
    temp_t7 = temp_t6 * 0x18;
    temp_a0 = temp_t7 + temp_t8;
    temp_f20 = arg0 - temp_a0->unk0;
    temp_f6 = temp_a0->unk8;
    temp_t2 = *(void *)0x80084F28;
    temp_t1 = temp_a0->unk14 << 5;
    temp_f22 = (f32) ((f64) temp_a0->unkC * *(void *)0x80071260);
    temp_a1 = &sp34;
    temp_f14 = arg1 - temp_f6;
    phi_f20 = temp_f20;
    phi_t0 = 0;
    if (temp_f22 != 0.0f) {
        sp34 = temp_f20;
        sp38 = temp_f14;
        sp44 = temp_t1 + temp_t2;
        sp40 = temp_a0;
        sp4C = 0;
        func_800232F4(temp_f22, temp_f14, temp_a0, temp_a1, temp_t6);
        phi_f20 = -temp_f20;
        phi_t0 = sp4C;
    }
    if (((temp_t7 + temp_t8)->unk16 & 0xFF) < 0x10) {
        sp40 = temp_t7 + temp_t8;
        temp_v0 = func_8000F238(phi_f20, arg1 - temp_f6, temp_t7 + temp_t8, (temp_t7 + temp_t8)->unk10, arg2, temp_t1 + temp_t2, arg4);
        temp_a0_2 = temp_t7 + temp_t8;
        temp_t0 = temp_v0;
        phi_t0 = temp_t0;
        if (temp_v0 != 0) {
            arg4->unk4 = (f32) (arg4->unk4 + temp_a0_2->unk4);
            phi_t0 = temp_t0;
            if (temp_f22 != 0.0f) {
                temp_a1_2 = &sp34;
                sp34 = arg4->unkC;
                sp4C = temp_v0;
                sp38 = arg4->unk14;
                func_800232F4(-temp_f22, temp_a0_2, temp_a1_2);
                arg4->unkC = (f32) -sp34;
                arg4->unk14 = sp38;
                phi_t0 = sp4C;
            }
        }
    }
    return phi_t0;
}

Failed to decompile function func_8000F238:

Complex control flow; node assumed to be part of &&/|| wasn't. Run with --no-andor to disable detection of &&/|| and try again.

? func_8000F5A4(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    if (!(arg3 <= arg1) || !(arg1 < arg5)) {
        if (arg5 <= arg1) {
            if (arg1 < arg3) {
block_4:
                if (arg2 <= arg0) {
                    if (arg4 < arg0) {
                        return 1;
                    }
                }
                if ((arg0 <= arg2) && (arg0 < arg4)) {

                } else {
                    if (arg3 != arg5) {
                        if ((((arg1 - arg3) * ((arg2 - arg4) / (arg3 - arg5))) + arg2) < arg0) {
                            return 1;
                        }
                    }
                }
            }
        }
    } else {
        goto block_4;
    }
    return 0;
}

s32 func_8000F6A4(void *arg0, void *arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp4C;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f18_4;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f6;
    f32 temp_f8;
    s32 temp_cond;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    f32 phi_f18;
    f32 phi_f16;
    f32 phi_f20;
    f32 phi_f14;
    f32 phi_f16_2;
    f32 phi_f18_2;
    f32 phi_f20_2;
    f32 phi_f14_2;
    f32 phi_f14_3;
    f32 phi_f12;
    f32 phi_f2;
    f32 phi_f18_3;
    f32 phi_f16_3;
    f32 phi_f20_3;
    f32 phi_f14_4;
    s32 phi_v1;

    phi_f18 = arg5;
    if (arg3 <= arg5) {
        phi_f18 = arg3;
    }
    phi_f16 = arg5;
    if (arg5 < arg3) {
        phi_f16 = arg3;
    }
    phi_f20 = arg6;
    if (arg4 <= arg6) {
        phi_f20 = arg4;
    }
    phi_f14 = arg6;
    if (arg6 < arg4) {
        phi_f14 = arg4;
    }
    temp_f12 = *arg0;
    if (temp_f12 < (phi_f18 - arg2)) {
block_12:
        return 0;
    }
    if ((phi_f16 + arg2) < temp_f12) {
        goto block_12;
    }
    temp_f2 = *arg1;
    if (temp_f2 < (phi_f20 - arg2)) {
        goto block_12;
    }
    if ((phi_f14 + arg2) < temp_f2) {
        goto block_12;
    }
    if (arg3 == arg5) {
        phi_f16_2 = 0.0f;
        phi_f18_2 = 1.0f;
        phi_f20_2 = -arg3;
    } else {
        if (arg4 == arg6) {
            phi_f16_2 = 1.0f;
            phi_f18_2 = 0.0f;
            phi_f20_2 = -arg4;
        } else {
            temp_f18 = -(arg6 - arg4) / (arg5 - arg3);
            phi_f16_2 = 1.0f;
            phi_f18_2 = temp_f18;
            phi_f20_2 = (-temp_f18 * arg3) - arg4;
        }
    }
    temp_f14 = ((temp_f2 * phi_f16_2) + (phi_f18_2 * temp_f12)) + phi_f20_2;
    phi_f14_2 = temp_f14;
    if (temp_f14 < 0.0f) {
        phi_f14_2 = -temp_f14;
    }
    sp5C = 0;
    sp4C = phi_f14_2;
    sp54 = phi_f16_2;
    sp58 = phi_f18_2;
    temp_f2_2 = phi_f14_2 / func_80034F60((phi_f18_2 * phi_f18_2) + (phi_f16_2 * phi_f16_2), phi_f14_2);
    temp_a0 = arg0;
    temp_a1 = arg1;
    temp_f16 = phi_f16_2;
    temp_f18_2 = phi_f18_2;
    temp_cond = temp_f2_2 < arg2;
    sp3C = temp_f2_2;
    phi_v1 = 0;
    if (temp_cond) {
        if (temp_f18_2 == 0.0f) {
            temp_f0 = *temp_a0;
            sp24 = temp_f0;
            sp20 = *temp_a1;
            phi_f14_3 = -temp_f0;
            phi_f12 = 0.0f;
            phi_f2 = 1.0f;
        } else {
            if (temp_f16 == 0.0f) {
                temp_f0_2 = *temp_a1;
                sp20 = temp_f0_2;
                sp24 = *temp_a0;
                phi_f14_3 = -temp_f0_2;
                phi_f12 = 1.0f;
                phi_f2 = 0.0f;
            } else {
                temp_f2_3 = -1.0f / temp_f18_2;
                sp24 = *temp_a0;
                temp_f6 = *temp_a1;
                sp20 = temp_f6;
                phi_f14_3 = (-temp_f2_3 * sp24) - temp_f6;
                phi_f12 = 1.0f;
                phi_f2 = temp_f2_3;
            }
        }
        temp_f0_3 = (temp_f18_2 * phi_f12) - (phi_f2 * temp_f16);
        sp34 = ((phi_f14_3 * temp_f16) - (phi_f20_2 * phi_f12)) / temp_f0_3;
        sp30 = ((phi_f2 * phi_f20_2) - (temp_f18_2 * phi_f14_3)) / temp_f0_3;
        phi_f18_3 = arg5;
        if (arg3 <= arg5) {
            phi_f18_3 = arg3;
        }
        phi_f16_3 = arg5;
        if (arg5 < arg3) {
            phi_f16_3 = arg3;
        }
        if (arg4 <= arg6) {
            phi_f20_3 = arg4;
        } else {
            phi_f20_3 = arg6;
        }
        if (arg6 < arg4) {
            phi_f14_4 = arg4;
        } else {
            phi_f14_4 = arg6;
        }
        if (sp34 < phi_f18_3) {
block_40:
            temp_f18_3 = arg3 - sp24;
            arg0 = temp_a0;
            arg1 = temp_a1;
            temp_f16_2 = arg4 - sp20;
            temp_f0_4 = func_80034F60((temp_f18_3 * temp_f18_3) + (temp_f16_2 * temp_f16_2), phi_f14_4, temp_a0, temp_a1);
            temp_a0_2 = arg0;
            temp_a1_2 = arg1;
            temp_f20 = temp_f0_4;
            if (!(temp_f0_4 < arg2)) {
                temp_f18_4 = arg5 - *temp_a0_2;
                arg1 = temp_a1_2;
                arg0 = temp_a0_2;
                temp_f16_3 = arg6 - *temp_a1_2;
                temp_f0_5 = func_80034F60((temp_f18_4 * temp_f18_4) + (temp_f16_3 * temp_f16_3), temp_a0_2, temp_a1_2);
                temp_a0_3 = arg0;
                temp_a1_3 = arg1;
                temp_f20_2 = temp_f0_5;
                if (!(temp_f0_5 < arg2)) {
                    return 0;
                }
                temp_f4_3 = *temp_a1_3;
                temp_f2_6 = arg3 - *temp_a0_3;
                arg1 = temp_a1_3;
                arg0 = temp_a0_3;
                temp_f14_4 = arg4 - temp_f4_3;
                sp2C = temp_f2_6;
                sp28 = temp_f14_4;
                temp_f12_4 = (f32) ((((f64) arg2 + *(void *)0x80071270) - (f64) temp_f20_2) / (f64) func_80034F60((temp_f2_6 * temp_f2_6) + (temp_f14_4 * temp_f14_4), temp_f14_4, temp_a0_3, temp_a1_3));
                temp_f8 = temp_f14_4 * temp_f12_4;
                *arg0 = (f32) (*arg0 - (temp_f2_6 * temp_f12_4));
                *arg1 = (f32) (*arg1 - temp_f8);
                return 1;
            }
            temp_f10 = *temp_a1_2;
            temp_f2_5 = arg3 - *temp_a0_2;
            arg1 = temp_a1_2;
            arg0 = temp_a0_2;
            temp_f14_3 = arg4 - temp_f10;
            sp2C = temp_f2_5;
            sp28 = temp_f14_3;
            temp_f12_3 = (f32) ((((f64) arg2 + *(void *)0x80071268) - (f64) temp_f20) / (f64) func_80034F60((temp_f2_5 * temp_f2_5) + (temp_f14_3 * temp_f14_3), temp_f14_3, temp_a0_2, temp_a1_2));
            temp_f4_2 = temp_f14_3 * temp_f12_3;
            *arg0 = (f32) (*arg0 - (temp_f2_5 * temp_f12_3));
            *arg1 = (f32) (*arg1 - temp_f4_2);
            return 1;
        }
        if (phi_f16_3 < sp34) {
            goto block_40;
        }
        if (sp30 < phi_f20_3) {
            goto block_40;
        }
        if (phi_f14_4 < sp30) {
            goto block_40;
        }
        temp_f2_4 = sp34 - sp24;
        temp_f14_2 = sp30 - sp20;
        if (sp3C != 0.0f) {
            arg0 = temp_a0;
            arg1 = temp_a1;
            sp2C = temp_f2_4;
            sp28 = temp_f14_2;
            temp_f12_2 = (f32) ((((f64) arg2 + *(void *)0x80071278) - (f64) sp3C) / (f64) func_80034F60((temp_f2_4 * temp_f2_4) + (temp_f14_2 * temp_f14_2), temp_f14_2, temp_a0, temp_a1));
            temp_f4 = temp_f14_2 * temp_f12_2;
            *arg0 = (f32) (*arg0 - (temp_f2_4 * temp_f12_2));
            *arg1 = (f32) (*arg1 - temp_f4);
        }
        phi_v1 = 1;
    }
    return phi_v1;
}

s32 func_8000FCBC(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_fp;
    s32 temp_fp_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_s7;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_fp;
    s32 phi_s2;
    s32 phi_s2_2;
    s32 phi_s2_3;
    s32 phi_s2_4;

    temp_fp = arg2->unkC;
    phi_s2 = 0;
    if (temp_fp != 0) {
        phi_s7 = arg2->unk8;
        phi_fp = temp_fp;
        phi_s2_4 = 0;
loop_2:
        temp_s1 = phi_s7->unk4;
        phi_s0 = arg2->unk4 + (phi_s7->unk0 * 4);
        phi_s1 = temp_s1;
        phi_s2_2 = phi_s2_4;
        phi_s2_3 = phi_s2_4;
        if (temp_s1 != 0) {
loop_3:
            temp_v1 = arg2->unk0;
            temp_v0 = (phi_s0->unk0 * 8) + temp_v1;
            temp_v0_2 = (phi_s0->unk4 * 8) + temp_v1;
            temp_f12 = temp_v0_2->unk0;
            temp_f14 = temp_v0_2->unk4;
            temp_s1_2 = phi_s1 - 1;
            temp_s2 = phi_s2_3 | func_8000F6A4(temp_f12, temp_f14, &arg0, &arg1, *(void *)0x80085340, temp_v0->unk0, temp_v0->unk4, temp_f12, temp_f14);
            phi_s0 = phi_s0 + 4;
            phi_s1 = temp_s1_2;
            phi_s2_2 = temp_s2;
            phi_s2_3 = temp_s2;
            if (temp_s1_2 != 0) {
                goto loop_3;
            }
        }
        temp_fp_2 = phi_fp - 1;
        phi_s7 = phi_s7 + 8;
        phi_fp = temp_fp_2;
        phi_s2 = phi_s2_2;
        phi_s2_4 = phi_s2_2;
        if (temp_fp_2 != 0) {
            goto loop_2;
        }
    }
    arg3->unk0 = arg0;
    arg3->unk8 = arg1;
    return phi_s2;
}

Failed to decompile function func_8000FDE0:

Complex control flow; node assumed to be part of &&/|| wasn't. Run with --no-andor to disable detection of &&/|| and try again.

? func_8000FF54(f32 arg0) {
    f64 temp_f0;
    f32 phi_f12;
    f32 phi_f12_2;
    ? phi_return;

    temp_f0 = (f64) arg0;
    if (*(void *)0x80071280 < temp_f0) {
        phi_f12 = (f32) (temp_f0 - *(void *)0x80071288);
    } else {
        phi_f12 = arg0;
        if (temp_f0 < *(void *)0x80071290) {
            phi_f12 = (f32) (temp_f0 + *(void *)0x80071298);
        }
    }
    phi_f12_2 = phi_f12;
    if (phi_f12 < 0.0f) {
        phi_f12_2 = -phi_f12;
    }
    phi_return = 0;
    if ((f64) phi_f12_2 < *(void *)0x800712A0) {
        phi_return = 1;
    }
    return phi_return;
}

? func_8000FFE8(void *arg0) {
    u16 temp_v0;
    void *temp_a2;
    void *phi_a2;
    u32 phi_a2_2;
    ? phi_v1;

    temp_v0 = arg0->unk14;
    phi_v1 = 1;
    if ((temp_v0 & 0x30) != 0) {
        phi_a2 = (void *)0x8008CF78;
loop_2:
        phi_a2_2 = (u32) phi_a2;
        if (arg0->unk16 != *phi_a2) {
            temp_a2 = phi_a2 + 1;
            phi_a2 = temp_a2;
            phi_a2_2 = (u32) temp_a2;
            if (temp_a2 != 0x8008D00E) {
                goto loop_2;
            }
        }
        if ((temp_v0 & 0x10) != 0) {
            if (phi_a2_2 < 0x8008D00EU) {
                phi_v1 = 1;
            } else {
                phi_v1 = 0;
            }
        } else {
            if (phi_a2_2 < 0x8008D00EU) {
                phi_v1 = 0;
            } else {
                phi_v1 = 1;
            }
        }
    }
    return phi_v1;
}

void func_80010080(void *arg0) {
    void *temp_t6;

    temp_t6 = arg0 + 0x1E;
    *(void *)0x80085350 = temp_t6;
    (void *)0x80085368->unk0 = (?32) temp_t6->unk0;
    (void *)0x80085368->unk4 = (?32) temp_t6->unk2;
    (void *)0x80085368->unk8 = (?32) temp_t6->unk4;
    (void *)0x80085368->unkC = (u16) arg0->unk14;
    (void *)0x80085368->unk10 = (?32) arg0->unk1A;
    (void *)0x80085368->unk14 = (f32) arg0->unk8;
}

void func_800100D0(void) {
    *(void *)0x800859D0 = 0x1EC3;
    *(void *)0x800859D4 = 0x6978;
    *(void *)0x800859E0 = (u16)1;
    *(void *)0x8008C634 = 7;
    *(void *)0x80085B68 = 0;
    *(void *)0x80085B6C = 0;
    *(void *)0x80085B74 = 0;
    *(void *)0x80085B70 = 0;
    *(void *)0x80085B78 = 0;
    *(void *)0x80085B7C = 0;
    *(void *)0x80085B80 = 0;
    *(void *)0x80085B84 = 0;
    *(void *)0x80085B88 = 0;
    *(void *)0x80085B8C = 0;
    *(void *)0x80085B90 = 0;
    *(void *)0x80085B94 = 0;
}

void func_80010150(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_t6;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v1;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_2;
    s32 phi_a0;
    void *phi_a1;
    s32 phi_a0_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0_3;
    void *phi_a1_2;

    temp_t6 = *(void *)0x8004C454;
    *(void *)0x80085384 = temp_t6;
    temp_v1 = *(void *)0x800859D0;
    phi_a0 = 3;
    phi_a1 = (void *)0x8004C454;
    phi_a0_2 = 3;
    phi_a1_2 = (void *)0x8004C454;
    if (temp_v1 < temp_t6) {
loop_1:
        temp_a1 = phi_a1 - 0xC;
        temp_a0 = phi_a0 - 1;
        phi_a0_2 = temp_a0;
        phi_a1_2 = temp_a1;
        if (phi_a0 != 0) {
            phi_a0 = temp_a0;
            phi_a1 = temp_a1;
            phi_a0_2 = temp_a0;
            phi_a1_2 = temp_a1;
            if (temp_v1 < *temp_a1) {
                goto loop_1;
            }
        }
    }
    if (phi_a0_2 < 0) {
        *(void *)0x80085380 = 3;
        phi_a1_2 = (void *)0x8004C454;
    } else {
        *(void *)0x80085380 = phi_a0_2;
    }
    phi_v0 = (phi_a1_2->unk4 << 9) + 0x800814D8;
    phi_v1 = (void *)0x800812D8;
    phi_a0_3 = 0x100;
loop_7:
    temp_a0_2 = phi_a0_3 - 4;
    temp_v1_2 = phi_v1 + 8;
    temp_v1_2->unk-8 = (u16) phi_v0->unk0;
    temp_v0 = phi_v0 + 8;
    temp_v1_2->unk-6 = (u16) phi_v0->unk2;
    temp_v1_2->unk-4 = (u16) temp_v0->unk-4;
    temp_v1_2->unk-2 = (u16) temp_v0->unk-2;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1_2;
    phi_a0_3 = temp_a0_2;
    if (temp_a0_2 != 0) {
        goto loop_7;
    }
    *(void *)0x8008538C = 0;
    temp_t9 = *(void *)0x80085380 + 1;
    *(void *)0x80085380 = temp_t9;
    if (temp_t9 >= 4) {
        *(void *)0x80085380 = 0;
    }
    if ((*(void *)0x80084F12 & 2) != 0) {
        *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
        *(void *)0x800859DC = (s32) *(void *)0x800859D4;
    } else {
        temp_v0_2 = *(void *)0x800859E4;
        *(void *)0x800859D8 = 0;
        temp_t9_2 = (temp_v0_2->unk0 + (temp_v0_2->unk4 * 0x3C))->unk-3C;
        *(void *)0x800859DC = temp_t9_2;
    }
    func_800110D0(temp_a0_2, phi_a1_2, (void *)0x80085380, (void *)0x8004C454);
    *(void *)0x80085388 = (u16)0;
}

u16 func_800102D0(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v1_2;
    u16 temp_a1;
    u16 temp_ret;
    u16 temp_t1;
    u16 temp_v0_2;
    void *temp_v1;
    s32 phi_a0;
    u16 phi_return;
    u16 phi_return_2;

    func_80010564(*(void *)0x800859D8, *(void *)0x800859E4);
    temp_a0 = *(void *)0x8008538C;
    if (temp_a0 != 0) {
        temp_t6 = temp_a0 - 1;
        *(void *)0x8008538C = temp_t6;
        phi_a0 = temp_t6;
        if (temp_t6 < 0) {
            *(void *)0x8008538C = 0;
            phi_a0 = 0;
        }
        phi_return_2 = func_80010EC4(phi_a0, 0x80080000);
    } else {
        temp_a0_2 = *(void *)0x80085380;
        temp_v1 = (temp_a0_2 * 0xC) + 0x8004C430;
        temp_v0 = *(void *)0x800859D8;
        phi_return_2 = (u16) temp_v0;
        if (temp_v0 >= temp_v1->unk0) {
            if ((temp_a0_2 != 0) || (phi_return_2 = (u16) temp_v0, ((temp_v0 < *(void *)0x80085384) != 0))) {
                temp_ret = func_80010E70(temp_v1->unk8, (temp_v1->unk4 << 9) + 0x800814D8, 0x800812D8, (void *)0x80085380);
                temp_t7 = *(void *)0x80085380 + 1;
                *(void *)0x80085380 = temp_t7;
                phi_return_2 = temp_ret;
                if (temp_t7 >= 4) {
                    *(void *)0x80085380 = 0;
                    phi_return_2 = temp_ret;
                }
            } else {

            }
        }
    }
    if ((*(void *)0x80084EE0 & 5) != 0) {
        phi_return = phi_return_2;
        if ((*(void *)0x8008C592 & 1) == 0) {
            phi_return = phi_return_2;
            if ((*(void *)0x8007B2E4 & 3) == 0) {
                phi_return = (u16) (void *)0x800859D0;
                if (*(void *)0x8008C638 == 0) {
                    temp_t8 = *(void *)0x800859D0 + 1;
                    *(void *)0x800859D0 = temp_t8;
                    temp_a0_3 = *(void *)0x800859D4;
                    if (temp_t8 >= temp_a0_3) {
                        temp_a1 = *(void *)0x800859E0;
                        *(void *)0x800859D0 = (s32) (temp_t8 - temp_a0_3);
                        if ((s32) temp_a1 < 0x3E7) {
                            *(void *)0x800859E0 = (u16) (temp_a1 + 1);
                        }
                    }
                    *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
                    phi_return = (u16) (void *)0x800859D0;
                }
            }
        }
    } else {
        phi_return = phi_return_2;
        if ((*(void *)0x80084F12 & 1) != 0) {
            phi_return = phi_return_2;
            if (*(void *)0x8008C638 == 0) {
                temp_t7_2 = *(void *)0x800859D8 + 1;
                *(void *)0x800859D8 = temp_t7_2;
                temp_v1_2 = *(void *)0x800859DC;
                phi_return = phi_return_2;
                if (temp_t7_2 >= temp_v1_2) {
                    *(void *)0x800859D8 = (s32) (temp_t7_2 - temp_v1_2);
                    phi_return = phi_return_2;
                }
            }
        }
    }
    temp_t1 = *(void *)0x80085388 + 1;
    *(void *)0x80085388 = temp_t1;
    if ((temp_t1 & 0xFFFF) >= 0x709) {
        temp_v0_2 = *(void *)0x800859E2;
        *(void *)0x80085388 = (u16)0U;
        phi_return = temp_v0_2;
        if ((s32) temp_v0_2 < 0xEA23) {
            *(void *)0x800859E2 = (u16) (temp_v0_2 + 1);
            phi_return = temp_v0_2;
        }
    }
    return phi_return;
}

void func_80010510(s32 arg0) {
    s32 temp_v1;
    u16 temp_a0;

    *(void *)0x800859D0 = arg0;
    temp_v1 = *(void *)0x800859D4;
    if (arg0 >= temp_v1) {
        temp_a0 = *(void *)0x800859E0;
        *(void *)0x800859D0 = (s32) (arg0 - temp_v1);
        if ((s32) temp_a0 < 0x270F) {
            *(void *)0x800859E0 = (u16) (temp_a0 + 1);
        }
    }
    *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
}

void *func_80010564(s32 arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    void *temp_a0;
    void *temp_t3;
    void *temp_t4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_a1;

    temp_v1 = arg1->unk0;
    if (arg1->unk4 == 1) {
        (void *)0x80085B68->unk0 = (s32) temp_v1->unk4;
        temp_v0 = temp_v1 + 0x28;
        (void *)0x80085B68->unk4 = (s32) temp_v1->unk8;
        (void *)0x80085B68->unk8 = (s32) temp_v1->unkC;
        (void *)0x80085B8C->unk-18 = (s32) temp_v1->unk10;
        (void *)0x80085B8C->unk-14 = (s32) temp_v1->unk14;
        (void *)0x80085B8C->unk-10 = (s32) temp_v1->unk18;
        (void *)0x80085B8C->unk-C = (s32) temp_v1->unk1C;
        (void *)0x80085B8C->unk-8 = (s32) temp_v1->unk20;
        (void *)0x80085B8C->unk-4 = (s32) temp_v1->unk24;
        (void *)0x80085B8C->unk0 = (s32) temp_v0->unk0;
        (void *)0x80085B8C->unk4 = (s32) temp_v0->unk4;
        (void *)0x80085B8C->unk8 = (s32) temp_v0->unk8;
        (void *)0x80085BC8->unk0 = (s32) temp_v1->unk34;
        (void *)0x80085BC8->unk4 = (s32) temp_v1->unk38;
        return temp_v0;
    }
    temp_a1 = temp_v1->unk0;
    phi_v1 = temp_v1;
    phi_v1_2 = temp_v1;
    phi_a1 = temp_a1;
    if (arg0 >= temp_a1) {
loop_3:
        temp_a1_2 = phi_v1->unk3C;
        temp_v1_2 = phi_v1 + 0x3C;
        phi_v1 = temp_v1_2;
        phi_v1_2 = temp_v1_2;
        phi_a1 = temp_a1_2;
        if (arg0 >= temp_a1_2) {
            goto loop_3;
        }
    }
    temp_a2 = phi_v1_2->unk-3C;
    temp_t3 = phi_v1_2 - 0x38;
    temp_t0 = phi_a1 - temp_a2;
    temp_t1 = arg0 - temp_a2;
    temp_t2 = temp_t0 - temp_t1;
    temp_a0 = phi_v1_2 + 4;
    temp_v0_3 = temp_t3 + 0x24;
    temp_t4 = temp_a0 + 0x24;
    (void *)0x80085B68->unk0 = (s32) ((s32) ((temp_t3->unk0 * temp_t2) + (temp_a0->unk0 * temp_t1)) / temp_t0);
    *(void *)0x80085B6C = (s32) ((s32) ((temp_t3->unk4 * temp_t2) + (temp_a0->unk4 * temp_t1)) / temp_t0);
    *(void *)0x80085B70 = (s32) ((s32) ((temp_t3->unk8 * temp_t2) + (temp_a0->unk8 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-18 = (s32) ((s32) ((temp_v0_3->unk-18 * temp_t2) + (temp_t4->unk-18 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-14 = (s32) ((s32) ((temp_v0_3->unk-14 * temp_t2) + (temp_t4->unk-14 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-10 = (s32) ((s32) ((temp_v0_3->unk-10 * temp_t2) + (temp_t4->unk-10 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-C = (s32) ((s32) ((temp_v0_3->unk-C * temp_t2) + (temp_t4->unk-C * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-8 = (s32) ((s32) ((temp_v0_3->unk-8 * temp_t2) + (temp_t4->unk-8 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-4 = (s32) ((s32) ((temp_v0_3->unk-4 * temp_t2) + (temp_t4->unk-4 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk0 = (s32) ((s32) ((temp_v0_3->unk0 * temp_t2) + (temp_t4->unk0 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk4 = (s32) ((s32) ((temp_v0_3->unk4 * temp_t2) + (temp_t4->unk4 * temp_t1)) / temp_t0);
    temp_v0_2 = phi_v1_2 - 0x3C;
    (void *)0x80085B8C->unk8 = (s32) ((s32) ((temp_v0_3->unk8 * temp_t2) + (temp_t4->unk8 * temp_t1)) / temp_t0);
    (void *)0x80085BC8->unk0 = (s32) ((s32) ((temp_v0_2->unk34 * temp_t2) + (phi_v1_2->unk34 * temp_t1)) / temp_t0);
    *(void *)0x80085BCC = (s32) ((s32) ((temp_v0_2->unk38 * temp_t2) + (phi_v1_2->unk38 * temp_t1)) / temp_t0);
    return temp_v0_2;
}

void *func_80010B58(void) {
    s32 sp1C;
    s16 temp_a0;
    s32 temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_a0;

    phi_a0 = 0x800855E0;
    if (*(void *)0x8007B2F4 != 0) {
        phi_a0 = 0x80085618;
    }
    sp1C = phi_a0;
    func_80010CAC(phi_a0);
    func_80011768(phi_a0, 0x80085B68, 0x80085B98);
    *(void *)0x8007B318 = (s16) (void *)0x80085BC8->unk0;
    *(void *)0x8007B31A = (s16) (void *)0x80085BC8->unk4;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xBC000008;
    temp_a0 = *(void *)0x8007B318;
    temp_a1 = *(void *)0x8007B31A - temp_a0;
    temp_v0_2->unk4 = (s32) (((0x1F400 / temp_a1) << 0x10) | (((s32) ((-(s32) temp_a0 << 8) + 0x1F400) / temp_a1) & 0xFFFF));
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0xFF;
    temp_v0->unk0 = 0xFB000000;
    return temp_v0;
}

void *func_80010CAC(void) {
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f64 temp_f2;
    void *temp_v1;

    if ((*(void *)0x80084F12 & 1) != 0) {
        temp_f2 = *(void *)0x800712B0;
        func_80023570(0, 0x800855A0, 0, 0, (f32) (((((f64) (f32) *(void *)0x800859D8 * temp_f2) * 2.0) / (f64) (f32) *(void *)0x800859DC) - temp_f2));
        func_80035470(0x800855A0, 0, 0x42B40000, 0x42480000, &sp38, &sp34, &sp30);
        (void *)0x80085B98->unk0 = (s32) sp38;
        (void *)0x80085B98->unk4 = (s32) sp34;
        (void *)0x80085B98->unk8 = (s32) sp30;
    } else {
        temp_v1 = *(void *)0x800859E4;
        if (temp_v1->unk8 != 0) {
            (void *)0x80085B98->unk0 = (s32) temp_v1->unkC;
            (void *)0x80085B98->unk4 = (s32) temp_v1->unk10;
            (void *)0x80085B98->unk8 = (s32) temp_v1->unk14;
        } else {
            (void *)0x80085B98->unk0 = -0x59;
            (void *)0x80085B98->unk4 = 0x59;
            (void *)0x80085B98->unk8 = 0x14;
        }
    }
    func_800238E4(0x80086E88, 0xC2B20000, 0x42B20000, 0x41A00000, &sp38, &sp34, &sp30);
    (void *)0x80085B98->unkC = (s32) sp38;
    (void *)0x80085B98->unk10 = (s32) sp34;
    (void *)0x80085B98->unk14 = (s32) sp30;
    return (void *)0x80085B98;
}

void *func_80010E70(s32 arg0, ?32 arg1, void *arg2) {
    void *temp_v0;
    void *phi_a2;
    void *phi_v0;
    s32 phi_a3;

    *(void *)0x80085390 = arg0;
    *(void *)0x8008538C = arg0;
    *(void *)0x80085394 = arg1;
    *(void *)0x80085398 = arg2;
    phi_a2 = arg2;
    phi_v0 = (void *)0x800853A0;
    phi_a3 = 0xFF;
loop_1:
    temp_v0 = phi_v0 + 2;
    temp_v0->unk-2 = (u16) *phi_a2;
    phi_a2 = phi_a2 + 2;
    phi_v0 = temp_v0;
    phi_a3 = phi_a3 - 1;
    if (phi_a3 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_80010EC4(s32 arg0) {
    s32 temp_s1;
    s32 temp_s2;
    u16 temp_t0;
    u16 temp_t4;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_v0;
    void *phi_v1;
    void *phi_a1;
    s32 phi_a0;
    void *phi_v0_2;
    void *phi_a1_2;
    s32 phi_a0_2;
    void *phi_return;

    temp_v0_2 = *(void *)0x80085394;
    temp_a1 = *(void *)0x80085398;
    if (arg0 != 0) {
        phi_return = temp_v0_2;
        if (0x100 != 0) {
            phi_v0 = temp_v0_2;
            phi_v1 = (void *)0x800853A0;
            phi_a1 = temp_a1;
            phi_a0 = 0xFF;
loop_3:
            temp_t0 = *phi_v0;
            temp_s1 = *(void *)0x80085390;
            temp_t4 = *phi_v1;
            temp_s2 = temp_s1 - arg0;
            temp_v0 = phi_v0 + 2;
            temp_a1_2 = phi_a1 + 2;
            temp_a1_2->unk-2 = (s16) ((((((s32) (((((s32) (temp_t0 & 0xF800) >> 0xB) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0xF800) >> 0xB) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) << 0xB) | ((((s32) (((((s32) (temp_t0 & 0x7C0) >> 6) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0x7C0) >> 6) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) << 6)) | ((((s32) (((((s32) (temp_t0 & 0x3E) >> 1) & 0xFFFF) * temp_s2) + ((((s32) (temp_t4 & 0x3E) >> 1) & 0xFFFF) * arg0)) / temp_s1) & 0xFFFF) * 2));
            phi_v0 = temp_v0;
            phi_v1 = phi_v1 + 2;
            phi_a1 = temp_a1_2;
            phi_a0 = phi_a0 - 1;
            if (phi_a0 != 0) {
                goto loop_3;
            }
            return temp_v0;
        }
    } else {
        phi_v0_2 = temp_v0_2;
        phi_a1_2 = temp_a1;
        phi_a0_2 = 0xFF;
        phi_return = temp_v0_2;
        if (0x100 != 0) {
loop_6:
            temp_v0_3 = phi_v0_2 + 2;
            temp_a1_3 = phi_a1_2 + 2;
            temp_a1_3->unk-2 = (u16) *phi_v0_2;
            phi_v0_2 = temp_v0_3;
            phi_a1_2 = temp_a1_3;
            phi_a0_2 = phi_a0_2 - 1;
            phi_return = temp_v0_3;
            if (phi_a0_2 != 0) {
                goto loop_6;
            }
        }
    }
    return phi_return;
}

void *func_800110D0(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x800859E8;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = 0;
    phi_v0->unk30 = 0;
    phi_v0->unk60 = 0;
    phi_v0->unk90 = 0;
    temp_v0 = phi_v0 + 0xC0;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_80011100(void) {
    s32 temp_a0;
    void *temp_v1;
    s32 phi_a0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_a0_2;

    phi_a0 = 7;
    phi_v1 = (void *)0x80085B38;
    phi_v1_2 = (void *)0x80085B38;
    phi_a0_2 = 7;
    if (*(void *)0x80085B38 != 0) {
loop_1:
        temp_a0 = phi_a0 - 1;
        temp_v1 = phi_v1 - 0x30;
        phi_v1_2 = temp_v1;
        phi_a0_2 = temp_a0;
        if (temp_a0 != 0) {
            phi_a0 = temp_a0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_a0_2 = temp_a0;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unk0 = 1;
    phi_v1_2->unk4 = 0;
    phi_v1_2->unk18 = 0;
    phi_v1_2->unk2C = 0;
    return phi_a0_2;
}

void func_80011150(s32 arg0) {
    ((arg0 * 0x30) + 0x80080000)->unk59E8 = 0;
}

void *func_80011170(s32 arg0, ?32 arg1, ?32 arg2, ?32 arg3) {
    void *temp_v0;

    temp_v0 = (arg0 * 0x30) + 0x800859E8;
    temp_v0->unk4 = arg1;
    temp_v0->unkC = arg2;
    temp_v0->unk8 = arg2;
    temp_v0->unk14 = arg3;
    temp_v0->unk10 = arg3;
    return temp_v0;
}

void *func_800111A4(s32 arg0, ?32 arg1, ?32 arg2, ?32 arg3) {
    void *temp_v0;

    temp_v0 = (arg0 * 0x30) + 0x800859E8;
    temp_v0->unk18 = arg1;
    temp_v0->unk1C = arg2;
    temp_v0->unk20 = arg2;
    temp_v0->unk28 = arg3;
    temp_v0->unk24 = arg3;
    return temp_v0;
}

void func_800111D8(s32 arg0, ?32 arg1) {
    ((arg0 * 0x30) + 0x80080000)->unk5A14 = arg1;
}

void *func_800111F8(s32 arg0) {
    s32 sp88;
    s32 *sp84;
    s32 sp78;
    ? sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    ? *temp_a3;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_v0_6;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1_2;
    s32 temp_v1_3;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    s32 phi_a0;
    s32 phi_t0;
    s32 phi_t1;
    void *phi_v0;
    ? *phi_a3;
    s32 phi_v1;
    s32 *phi_v0_2;
    s32 *phi_a3_2;
    s32 phi_v1_2;
    s32 *phi_a3_3;
    s32 *phi_a3_4;

    if (*(void *)0x8007B2F4 != 0) {
        sp88 = (arg0 * 0x38) + 0x80085810;
    } else {
        sp88 = (arg0 * 0x38) + 0x80085650;
    }
    temp_a1 = (arg0 * 0x30) + 0x800859E8;
    temp_a2 = temp_a1->unk4;
    if (temp_a2 != 0) {
        temp_v1 = temp_a1->unk10;
        temp_a0 = temp_v1->unk0;
        temp_t0 = temp_v1->unk4;
        temp_t1 = temp_v1->unk8;
        if (temp_a2 != 1) {
            if (temp_a2 != 2) {
                if (temp_a2 != 3) {
                    phi_a0 = temp_a0;
                    phi_t0 = temp_t0;
                    phi_t1 = temp_t1;
                } else {
                    temp_t5 = temp_a1->unk8 - 1;
                    temp_a1->unk8 = temp_t5;
                    if (temp_t5 == 0) {
                        temp_a1->unk8 = (s32) temp_a1->unkC;
                        temp_a1->unk10 = (void *) temp_a1->unk14;
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    } else {
                        temp_a1->unk10 = (void *) (temp_a1->unk10 + 0xC);
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    }
                }
            } else {
                temp_v0 = temp_a1->unk8;
                temp_t6 = temp_v0 - 1;
                phi_a0 = temp_a0;
                phi_t0 = temp_t0;
                phi_t1 = temp_t1;
                if (temp_v0 != 0) {
                    temp_a1->unk8 = temp_t6;
                    phi_a0 = temp_a0;
                    phi_t0 = temp_t0;
                    phi_t1 = temp_t1;
                    if (temp_t6 != 0) {
                        temp_a1->unk10 = (void *) (temp_a1->unk10 + 0xC);
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    }
                }
            }
        } else {
            temp_a1->unk10 = (void *) (temp_v1 + 0xC);
            temp_t4 = temp_a1->unk8 - 1;
            temp_a1->unk8 = temp_t4;
            phi_a0 = temp_a0;
            phi_t0 = temp_t0;
            phi_t1 = temp_t1;
            if (temp_t4 == 0) {
                temp_a1->unk4 = 0;
                phi_a0 = temp_a0;
                phi_t0 = temp_t0;
                phi_t1 = temp_t1;
            }
        }
    } else {
        phi_a0 = 0;
        phi_t0 = 0;
        phi_t1 = 0;
    }
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xFB000000;
    temp_v0_2->unk4 = (s32) ((((phi_a0 << 0x18) | ((phi_t0 & 0xFF) << 0x10)) | ((phi_t1 & 0xFF) << 8)) | 0xB4);
    if (temp_a1->unk18 != 0) {
        temp_a0_2 = temp_a1->unk24;
        temp_lo = (void *)0x80085B68->unk0 * *temp_a0_2;
        temp_a0_2 = temp_a0_2 + 0xC;
        sp48 = temp_lo >> 8;
        sp4C = (s32) ((void *)0x80085B68->unk4 * temp_a0_2->unk-8) >> 8;
        sp50 = (s32) ((void *)0x80085B68->unk8 * temp_a0_2->unk-4) >> 8;
        phi_v0 = (void *)0x80085B74;
        phi_a3 = &sp54;
        phi_v1 = 3;
loop_19:
        temp_v1_2 = phi_v1 - 1;
        temp_v0_3 = phi_v0 + 0xC;
        temp_a3 = phi_a3 + 0xC;
        temp_a3->unk-C = (s32) ((s32) (*phi_v0 * temp_a0_2->unk0) >> 8);
        temp_a3->unk-8 = (s32) ((s32) (temp_v0_3->unk-8 * temp_a0_2->unk4) >> 8);
        temp_a3->unk-4 = (s32) ((s32) (temp_v0_3->unk-4 * temp_a0_2->unk8) >> 8);
        phi_v0 = temp_v0_3;
        phi_a3 = temp_a3;
        phi_v1 = temp_v1_2;
        if (temp_v1_2 != 0) {
            goto loop_19;
        }
        *(void *)0x80085BB0 = (s32) temp_a0_2->unk0;
        *(void *)0x80085BB4 = (s32) temp_a0_2->unk4;
        *(void *)0x80085BB8 = (s32) temp_a0_2->unk8;
        temp_v0_4 = temp_a1->unk18;
        if (temp_v0_4 != 1) {
            if (temp_v0_4 != 2) {
                if (temp_v0_4 != 3) {
                    phi_a3_4 = &sp48;
                } else {
                    temp_t5_2 = temp_a1->unk20 - 1;
                    temp_a1->unk20 = temp_t5_2;
                    if (temp_t5_2 == 0) {
                        temp_a1->unk20 = (s32) temp_a1->unk1C;
                        temp_a1->unk24 = (void *) temp_a1->unk28;
                        phi_a3_4 = &sp48;
                    } else {
                        temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
                        phi_a3_4 = &sp48;
                    }
                }
            } else {
                temp_v0_5 = temp_a1->unk20;
                temp_t7 = temp_v0_5 - 1;
                phi_a3_4 = &sp48;
                if (temp_v0_5 != 0) {
                    temp_a1->unk20 = temp_t7;
                    phi_a3_4 = &sp48;
                    if (temp_t7 != 0) {
                        temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
                        phi_a3_4 = &sp48;
                    }
                }
            }
        } else {
            temp_t6_2 = temp_a1->unk20 - 1;
            temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
            temp_a1->unk20 = temp_t6_2;
            phi_a3_4 = &sp48;
            if (temp_t6_2 == 0) {
                temp_a1->unk18 = 0;
                phi_a3_4 = &sp48;
            }
        }
    } else {
        *(void *)0x80085BB4 = 0xFF;
        *(void *)0x80085BB8 = 0xFF;
        *(void *)0x80085BB0 = 0xFF;
        phi_a3_4 = (void *)0x80085B68;
    }
    temp_t8 = temp_a1->unk2C;
    sp78 = temp_t8;
    if (temp_t8 == 0) {
        sp78 = 0x80085B98;
    }
    phi_a3_3 = phi_a3_4;
    if (temp_a1->unk0 == 2) {
        phi_v0_2 = phi_a3_4;
        phi_a3_2 = &sp48;
        phi_v1_2 = 3;
loop_37:
        temp_a0_3 = phi_v0_2->unk0;
        temp_v1_3 = phi_v1_2 - 1;
        temp_a3_2 = phi_a3_2 + 0xC;
        temp_a3_2->unk-C = (s32) ((temp_a0_3 - (temp_a0_3 >> 2)) + 0x3F);
        temp_a1_2 = phi_v0_2->unk4;
        temp_v0_6 = phi_v0_2 + 0xC;
        temp_a3_2->unk-8 = (s32) ((temp_a1_2 - (temp_a1_2 >> 2)) + 0x3F);
        temp_a2_2 = temp_v0_6->unk-4;
        temp_a3_2->unk-4 = (s32) ((temp_a2_2 - (temp_a2_2 >> 2)) + 0x3F);
        phi_v0_2 = temp_v0_6;
        phi_a3_2 = temp_a3_2;
        phi_v1_2 = temp_v1_3;
        if (temp_v1_3 != 0) {
            goto loop_37;
        }
        temp_a3_2->unk0 = (s32) temp_v0_6->unk0;
        temp_a3_2->unk4 = (s32) temp_v0_6->unk4;
        temp_a3_2->unk8 = (s32) temp_v0_6->unk8;
        phi_a3_3 = &sp48;
    }
    sp84 = phi_a3_3;
    func_80011768(sp88, phi_a3_3, sp78, phi_a3_3);
    temp_a3_3 = phi_a3_3;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk0 = 0xBC000002;
    temp_v0_7->unk4 = 0x80000080;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = (s32) (sp88 + 8);
    temp_v0_8->unk0 = 0x3860010;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = (s32) (sp88 + 0x18);
    temp_v0_9->unk0 = 0x3880010;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = (s32) (sp88 + 0x28);
    temp_v0_10->unk0 = 0x38A0010;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = sp88;
    temp_v0_11->unk0 = 0x38C0010;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk0 = 0xF8000000;
    temp_v0_12->unk4 = (s32) (((((temp_a3_3->unk2C & 0xFF) << 8) | (temp_a3_3->unk24 << 0x18)) | ((temp_a3_3->unk28 & 0xFF) << 0x10)) | 0xFF);
    if ((*(void *)0x80084EE0 & 0x80) != 0) {
        *(void *)0x8007B300 = (s32) temp_a3_3->unk24;
        *(void *)0x8007B304 = (s32) temp_a3_3->unk28;
        *(void *)0x8007B308 = (s32) temp_a3_3->unk2C;
    } else {
        *(void *)0x8007B308 = 0;
        *(void *)0x8007B304 = 0;
        *(void *)0x8007B300 = 0;
    }
    *(void *)0x80085BBC = (s32) temp_a3_3->unk24;
    *(void *)0x80085BC0 = (s32) temp_a3_3->unk28;
    *(void *)0x80085BC4 = (s32) temp_a3_3->unk2C;
    return (void *)0x8007B304;
}

u8 func_80011768(void *arg0, s32 arg1, void *arg2) {
    s8 temp_v0_2;
    s8 temp_v0_3;
    s8 temp_v0_4;
    u8 temp_v0;
    u8 temp_v0_10;
    u8 temp_v0_11;
    u8 temp_v0_12;
    u8 temp_v0_13;
    u8 temp_v0_14;
    u8 temp_v0_15;
    u8 temp_v0_5;
    u8 temp_v0_6;
    u8 temp_v0_7;
    u8 temp_v0_8;
    u8 temp_v0_9;
    void *temp_a1;
    void *temp_a2;

    temp_a2 = arg2 + 0xC;
    temp_a1 = arg1 + 0x18;
    arg0->unk20 = (s8) *arg2;
    arg0->unk21 = (s8) temp_a2->unk-8;
    arg0->unk22 = (s8) temp_a2->unk-4;
    temp_v0_2 = temp_a2->unk3;
    arg0->unk10 = temp_v0_2;
    arg0->unk30 = temp_v0_2;
    temp_v0_3 = temp_a2->unk7;
    arg0->unk11 = temp_v0_3;
    arg0->unk31 = temp_v0_3;
    temp_v0_4 = temp_a2->unkB;
    arg0->unk12 = temp_v0_4;
    arg0->unk32 = temp_v0_4;
    temp_v0_5 = temp_a1->unk-15;
    arg0->unk4 = temp_v0_5;
    arg0->unk0 = temp_v0_5;
    temp_v0_6 = temp_a1->unk-11;
    arg0->unk5 = temp_v0_6;
    arg0->unk1 = temp_v0_6;
    temp_v0_7 = temp_a1->unk-D;
    arg0->unk6 = temp_v0_7;
    arg0->unk2 = temp_v0_7;
    temp_v0_8 = temp_a1->unk-9;
    arg0->unk1C = temp_v0_8;
    arg0->unk18 = temp_v0_8;
    temp_v0_9 = temp_a1->unk-5;
    arg0->unk1D = temp_v0_9;
    arg0->unk19 = temp_v0_9;
    temp_v0_10 = temp_a1->unk-1;
    arg0->unk1E = temp_v0_10;
    arg0->unk1A = temp_v0_10;
    temp_v0_11 = temp_a1->unk3;
    arg0->unkC = temp_v0_11;
    arg0->unk8 = temp_v0_11;
    temp_v0_12 = temp_a1->unk7;
    arg0->unkD = temp_v0_12;
    arg0->unk9 = temp_v0_12;
    temp_v0_13 = temp_a1->unkB;
    arg0->unkE = temp_v0_13;
    arg0->unkA = temp_v0_13;
    temp_v0_14 = temp_a1->unk3;
    arg0->unk2C = temp_v0_14;
    arg0->unk28 = temp_v0_14;
    temp_v0_15 = temp_a1->unk7;
    arg0->unk2D = temp_v0_15;
    arg0->unk29 = temp_v0_15;
    temp_v0 = temp_a1->unkB;
    arg0->unk2E = temp_v0;
    arg0->unk2A = temp_v0;
    return temp_v0;
}
