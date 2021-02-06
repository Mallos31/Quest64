s32 alCSeqGetLoc(void *arg0, void *arg1) {
    s32 temp_v0;
    void *temp_a2;
    void *temp_a3;
    void *temp_t0;
    void *temp_v1;
    void *phi_a2;
    void *phi_v1;
    void *phi_t0;
    void *phi_a3;
    s32 phi_v0;

    arg1->unk0 = (s32) arg0->unk4;
    arg1->unk4 = (s32) arg0->unkC;
    arg1->unk8 = (s32) arg0->unk10;
    phi_a2 = arg0;
    phi_v1 = arg1;
    phi_t0 = arg0;
    phi_a3 = arg1;
    phi_v0 = 0;
loop_1:
    temp_v0 = phi_v0 + 2;
    temp_v1 = phi_v1 + 8;
    temp_v1->unk4 = (s32) phi_a2->unk18;
    temp_a2 = phi_a2 + 8;
    temp_a3 = phi_a3 + 2;
    temp_v1->unk44 = (s32) phi_a2->unk58;
    temp_t0 = phi_t0 + 2;
    temp_a3->unk8A = (u8) phi_t0->unk98;
    temp_a3->unk9A = (u8) temp_t0->unkA6;
    temp_v1->unkA4 = (s32) temp_a2->unkB0;
    temp_v1->unk8 = (s32) temp_a2->unk14;
    temp_v1->unk48 = (s32) temp_a2->unk54;
    temp_a3->unk8B = (u8) temp_t0->unk97;
    temp_a3->unk9B = (u8) temp_t0->unkA7;
    temp_v1->unkA8 = (s32) temp_a2->unkB4;
    phi_a2 = temp_a2;
    phi_v1 = temp_v1;
    phi_t0 = temp_t0;
    phi_a3 = temp_a3;
    phi_v0 = temp_v0;
    if (temp_v0 != 0x10) {
        goto loop_1;
    }
    return temp_v0;
}

s32 alCSeqSetLoc(void *arg0, void *arg1) {
    s32 temp_v0;
    void *temp_a2;
    void *temp_a3;
    void *temp_t0;
    void *temp_v1;
    void *phi_a2;
    void *phi_v1;
    void *phi_t0;
    void *phi_a3;
    s32 phi_v0;

    arg0->unk4 = (s32) arg1->unk0;
    arg0->unkC = (s32) arg1->unk4;
    arg0->unk10 = (s32) arg1->unk8;
    phi_a2 = arg1;
    phi_v1 = arg0;
    phi_t0 = arg1;
    phi_a3 = arg0;
    phi_v0 = 0;
loop_1:
    temp_v0 = phi_v0 + 2;
    temp_v1 = phi_v1 + 8;
    temp_v1->unk10 = (s32) phi_a2->unkC;
    temp_a2 = phi_a2 + 8;
    temp_a3 = phi_a3 + 2;
    temp_v1->unk50 = (s32) phi_a2->unk4C;
    temp_t0 = phi_t0 + 2;
    temp_a3->unk96 = (u8) phi_t0->unk8C;
    temp_a3->unkA6 = (u8) temp_t0->unk9A;
    temp_v1->unkB0 = (s32) temp_a2->unkA4;
    temp_v1->unk14 = (s32) temp_a2->unk8;
    temp_v1->unk54 = (s32) temp_a2->unk48;
    temp_a3->unk97 = (u8) temp_t0->unk8B;
    temp_a3->unkA7 = (u8) temp_t0->unk9B;
    temp_v1->unkB4 = (s32) temp_a2->unkA8;
    phi_a2 = temp_a2;
    phi_v1 = temp_v1;
    phi_t0 = temp_t0;
    phi_a3 = temp_a3;
    phi_v0 = temp_v0;
    if (temp_v0 != 0x10) {
        goto loop_1;
    }
    return temp_v0;
}

u8 __getTrackByte(s32 arg0, s32 arg1) {
    u8 temp_a0;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 temp_v1_3;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_t6;
    void *temp_t7;
    void *temp_t8;
    void *temp_t9;
    void *temp_v0;
    u8 phi_v1;

    temp_v0 = arg0 + arg1;
    temp_a2 = arg0 + (arg1 * 4);
    if (temp_v0->unk98 != 0) {
        temp_a2_2 = arg0 + (arg1 * 4);
        temp_a3 = temp_a2_2->unk58;
        temp_v1 = *temp_a3;
        temp_a2_2->unk58 = (void *) (temp_a3 + 1);
        temp_v0->unk98 = (u8) (temp_v0->unk98 - 1);
        return temp_v1;
    }
    temp_a3_2 = temp_a2->unk18;
    temp_v1_2 = *temp_a3_2;
    temp_t8 = temp_a3_2 + 1;
    temp_a2->unk18 = temp_t8;
    phi_v1 = temp_v1_2;
    if (0xFE == temp_v1_2) {
        temp_a0 = *temp_t8;
        temp_t9 = temp_t8 + 1;
        temp_a2->unk18 = temp_t9;
        temp_t6 = temp_t9 + 1;
        phi_v1 = temp_v1_2;
        if (0xFE != temp_a0) {
            temp_a2->unk18 = temp_t6;
            temp_t7 = temp_t6 + 1;
            temp_a2->unk18 = temp_t7;
            temp_a2->unk58 = (void *) ((temp_t7 - ((temp_a0 << 8) + *temp_t9)) - 4);
            temp_v0->unk98 = (u8) *temp_t6;
            temp_a3_3 = temp_a2->unk58;
            temp_v1_3 = *temp_a3_3;
            temp_a2->unk58 = (void *) (temp_a3_3 + 1);
            temp_v0->unk98 = (u8) (temp_v0->unk98 - 1);
            phi_v1 = temp_v1_3;
        }
    }
    return phi_v1;
}

s32 __readVarLen(void) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 phi_t1;

    temp_v0 = __getTrackByte(ERROR(Read from unset register $t2), ERROR(Read from unset register $t3));
    phi_t1 = temp_v0;
    if ((temp_v0 & 0x80) != 0) {
loop_2:
        temp_v0_2 = __getTrackByte(ERROR(Read from unset register $t2), ERROR(Read from unset register $t3));
        phi_t1 = (ERROR(Read from unset register $t1) << 7) + (temp_v0_2 & 0x7F);
        if ((temp_v0_2 & 0x80) != 0) {
            goto loop_2;
        }
    }
    return phi_t1;
}

void func_800387EC(void) {

}

u8 func_800387F4(void *arg0, void *arg1) {
    s32 sp28;
    s32 sp24;
    s32 temp_a2;
    s32 temp_ret_5;
    s32 temp_t6;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1_2;
    s8 temp_a2_2;
    s8 temp_v0_2;
    u32 temp_a0;
    u8 temp_a0_2;
    u8 temp_ret;
    u8 temp_ret_2;
    u8 temp_ret_3;
    u8 temp_ret_4;
    u8 temp_ret_6;
    u8 temp_t2;
    u8 temp_t7;
    u8 temp_v0_3;
    u8 temp_v0_5;
    void *temp_t5;
    void *temp_v0_4;
    void *temp_v1;
    s32 phi_v0;
    u32 phi_t1;
    s32 phi_t3;
    void *phi_t9;
    u8 phi_return;
    s32 phi_t3_2;

    temp_a2 = arg0->unk10;
    phi_v0 = 0;
    phi_t1 = -1U;
    phi_t3_2 = sp24;
loop_1:
    phi_t3 = phi_t3_2;
    if ((((u32) arg0->unk4 >> phi_v0) & 1) != 0) {
        temp_v1 = arg0 + (phi_v0 * 4);
        if (arg0->unk14 != 0) {
            temp_v1->unkB8 = (u32) (temp_v1->unkB8 - temp_a2);
        }
        temp_a0 = temp_v1->unkB8;
        phi_t3 = phi_t3_2;
        if (temp_a0 < phi_t1) {
            phi_t3 = phi_v0;
            phi_t1 = temp_a0;
        }
    }
    temp_v0 = phi_v0 + 1;
    phi_v0 = temp_v0;
    phi_t3_2 = phi_t3;
    if (temp_v0 != 0x10) {
        goto loop_1;
    }
    temp_v0_2 = __getTrackByte(arg0, phi_t3, temp_a2);
    temp_t2 = temp_v0_2 & 0xFF;
    if (temp_v0_2 == 0xFF) {
        temp_ret = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
        temp_v0_3 = temp_ret;
        temp_a2_2 = temp_v0_3 & 0xFF;
        if (temp_v0_3 == 0x51) {
            arg1->unk0 = (u16)3;
            arg1->unk8 = (u8) ERROR(Read from unset register $t2);
            arg1->unk9 = temp_a2_2;
            arg1->unkB = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3), temp_a2_2);
            arg1->unkC = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
            temp_ret_2 = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
            arg1->unkD = temp_ret_2;
            (ERROR(Read from unset register $t4) + ERROR(Read from unset register $t3))->unkA8 = (u8)0;
            phi_return = temp_ret_2;
        } else {
            if (temp_v0_3 == 0x2F) {
                temp_t6 = ERROR(Read from unset register $t4)->unk4 ^ (1 << ERROR(Read from unset register $t3));
                ERROR(Read from unset register $t4)->unk4 = temp_t6;
                if (temp_t6 != 0) {
                    arg1->unk0 = (u16)0x12;
                    phi_return = temp_ret;
                } else {
                    arg1->unk0 = (u16)4;
                    phi_return = temp_ret;
                }
            } else {
                if (temp_v0_3 == 0x2E) {
                    __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3), temp_a2_2);
                    temp_ret_3 = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
                    (ERROR(Read from unset register $t4) + ERROR(Read from unset register $t3))->unkA8 = (u8)0;
                    arg1->unk0 = (u16)0x13;
                    phi_return = temp_ret_3;
                } else {
                    phi_return = temp_ret;
                    if (temp_v0_3 == 0x2D) {
                        temp_t5 = ERROR(Read from unset register $t4) + (ERROR(Read from unset register $t3) * 4);
                        temp_v0_4 = temp_t5->unk18;
                        temp_a0_2 = temp_v0_4->unk1;
                        temp_v0_4 = temp_v0_4 + 1;
                        if (temp_a0_2 == 0) {
                            temp_v0_4->unk0 = (u8) temp_v0_4->unk-1;
                            phi_t9 = temp_v0_4 + 5;
                            phi_return = (u8) temp_v0_4;
                        } else {
                            if (temp_a0_2 != 0xFF) {
                                temp_v0_4->unk0 = (u8) (temp_a0_2 - 1);
                            }
                            temp_t7 = temp_v0_4->unk4;
                            temp_v1_2 = ((temp_v0_4->unk1 << 0x18) + (temp_v0_4->unk2 << 0x10)) + (temp_v0_4->unk3 << 8);
                            temp_v0_4 = temp_v0_4 + 5;
                            phi_t9 = temp_v0_4 - (temp_v1_2 + temp_t7);
                            phi_return = (u8) temp_v0_4;
                        }
                        temp_t5->unk18 = phi_t9;
                        (ERROR(Read from unset register $t4) + ERROR(Read from unset register $t3))->unkA8 = (u8)0;
                        arg1->unk0 = (u16)0x14;
                    }
                }
            }
        }
    } else {
        arg1->unk0 = (u16)1;
        if ((temp_v0_2 & 0x80) != 0) {
            arg1->unk8 = temp_t2;
            arg1->unk9 = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
            (ERROR(Read from unset register $t4) + ERROR(Read from unset register $t3))->unkA8 = (s8) ERROR(Read from unset register $t2);
        } else {
            arg1->unk9 = temp_v0_2;
            arg1->unk8 = (u8) (ERROR(Read from unset register $t4) + ERROR(Read from unset register $t3))->unkA8;
        }
        temp_v0_5 = arg1->unk8;
        temp_t9 = temp_v0_5 & 0xF0;
        if ((temp_t9 != 0xC0) && (temp_t9 != 0xD0)) {
            temp_ret_4 = __getTrackByte(ERROR(Read from unset register $t4), ERROR(Read from unset register $t3));
            arg1->unkA = temp_ret_4;
            phi_return = temp_ret_4;
            if ((arg1->unk8 & 0xF0) == 0x90) {
                sp28 = ERROR(Read from unset register $t1);
                sp24 = ERROR(Read from unset register $t3);
                temp_ret_5 = __readVarLen();
                arg1->unkC = temp_ret_5;
                phi_return = (u8) temp_ret_5;
            }
        } else {
            arg1->unkA = (u8)0U;
            phi_return = temp_v0_5;
        }
    }
    arg1->unk4 = (?32) ERROR(Read from unset register $t1);
    ERROR(Read from unset register $t4)->unk10 = (?32) ERROR(Read from unset register $t1);
    ERROR(Read from unset register $t4)->unkC = (s32) (ERROR(Read from unset register $t4)->unkC + ERROR(Read from unset register $t1));
    if (arg1->unk0 != 0x12) {
        temp_ret_6 = __readVarLen();
        ERROR(Read from unset register $t5)->unkB8 = (s32) (ERROR(Read from unset register $t5)->unkB8 + temp_ret_6);
        phi_return = temp_ret_6;
    }
    ERROR(Read from unset register $t4)->unk14 = 1;
    return phi_return;
}

s32 func_80038AEC(void *arg0, s32 arg1) {
    f32 temp_f8;
    s32 temp_ret;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_v0;
    void *phi_s1;
    void *phi_t4;
    s32 phi_s2;
    s32 phi_t5;
    f32 phi_f8;
    s32 phi_return;

    arg0->unk0 = arg1;
    arg0->unk4 = 0;
    arg0->unk10 = 0;
    arg0->unkC = 0;
    arg0->unk14 = 1;
    phi_s1 = arg0;
    phi_t4 = arg0;
    phi_s2 = 0;
    phi_t5 = 0;
loop_1:
    phi_s1->unkA8 = (u8)0;
    phi_t4->unk58 = 0;
    phi_s1->unk98 = (u8)0;
    temp_v0 = *(arg0->unk0 + phi_s2);
    if (temp_v0 != 0) {
        arg0->unk4 = (s32) (arg0->unk4 | (1 << phi_t5));
        phi_t4->unk18 = (s32) (arg1 + temp_v0);
        temp_ret = __readVarLen();
        ERROR(Read from unset register $t4)->unkB8 = temp_ret;
        phi_return = temp_ret;
    } else {
        phi_t4->unk18 = 0;
        phi_return = temp_v0;
    }
    temp_t5 = ERROR(Read from unset register $t5) + 1;
    phi_s1 = phi_s1 + 1;
    phi_t4 = ERROR(Read from unset register $t4) + 4;
    phi_s2 = phi_s2 + 4;
    phi_t5 = temp_t5;
    if (temp_t5 != 0x10) {
        goto loop_1;
    }
    temp_t7 = arg0->unk0->unk40;
    temp_f8 = (f32) temp_t7;
    phi_f8 = temp_f8;
    if (temp_t7 < 0) {
        phi_f8 = temp_f8 + 4294967296.0f;
    }
    arg0->unk8 = (f32) (1.0 / (f64) phi_f8);
    return phi_return;
}

void func_80038C00(void *arg0, void *arg1, u32 arg2) {
    s16 sp140;
    s32 sp58;
    ? sp48;
    ? *temp_a0;
    ? *temp_v1;
    void *temp_a1;
    void *temp_v0;
    ? *phi_v1;
    void *phi_v0;
    ? *phi_a0;
    void *phi_a1;

    func_80038AEC(&sp48, *arg0, arg0);
loop_1:
    arg1->unk0 = sp4C;
    arg1->unk4 = sp54;
    arg1->unk8 = sp58;
    phi_v1 = &sp48;
    phi_v0 = arg1;
    phi_a0 = &sp48;
    phi_a1 = arg1;
loop_2:
    temp_a0 = phi_a0 + 4;
    temp_v0 = phi_v0 + 0x10;
    temp_v0->unk-4 = (s32) phi_v1->unk18;
    temp_v1 = phi_v1 + 0x10;
    temp_a1 = phi_a1 + 4;
    temp_v0->unk3C = (s32) phi_v1->unk58;
    temp_a1->unk88 = (u8) temp_a0->unk94;
    temp_a1->unk98 = (u8) temp_a0->unkA4;
    temp_v0->unk9C = (s32) temp_v1->unkA8;
    temp_v0->unk0 = (s32) temp_v1->unkC;
    temp_v0->unk40 = (s32) temp_v1->unk4C;
    temp_a1->unk89 = (u8) temp_a0->unk95;
    temp_a1->unk99 = (u8) temp_a0->unkA5;
    temp_v0->unkA0 = (s32) temp_v1->unkAC;
    temp_v0->unk4 = (s32) temp_v1->unk10;
    temp_v0->unk44 = (s32) temp_v1->unk50;
    temp_a1->unk8A = (u8) temp_a0->unk96;
    temp_a1->unk9A = (u8) temp_a0->unkA6;
    temp_v0->unkA4 = (s32) temp_v1->unkB0;
    temp_v0->unk8 = (s32) temp_v1->unk14;
    temp_v0->unk48 = (s32) temp_v1->unk54;
    temp_a1->unk8B = (u8) temp_a0->unk97;
    temp_a1->unk9B = (u8) temp_a0->unkA7;
    temp_v0->unkA8 = (s32) temp_v1->unkB4;
    phi_v1 = temp_v1;
    phi_v0 = temp_v0;
    phi_a0 = temp_a0;
    phi_a1 = temp_a1;
    if (temp_a0 != &sp58) {
        goto loop_2;
    }
    func_800387F4(&sp48, &sp140);
    if (sp140 != 4) {
        if (sp54 < arg2) {
            goto loop_1;
        }
    }
}

s32 func_80038D6C(void *arg0) {
    return arg0->unkC;
}

s32 func_80038D74(void *arg0, f32 arg1, s32 arg2) {
    f64 temp_f10;
    f64 temp_f16_2;
    f64 temp_f8;
    s32 temp_f16;
    s32 temp_t7;
    f64 phi_f16;
    f64 phi_f10;

    temp_t7 = (*arg0)->unk40;
    temp_f16_2 = (f64) temp_t7;
    phi_f16 = temp_f16_2;
    if (temp_t7 < 0) {
        phi_f16 = temp_f16_2 + 4294967296.0;
    }
    temp_f10 = (f64) arg2;
    phi_f10 = temp_f10;
    if (arg2 < 0) {
        phi_f10 = temp_f10 + 4294967296.0;
    }
    temp_f8 = (((f64) arg1 * *(void *)0x80071E50) * phi_f16) / phi_f10;
    temp_f16 = (s32) temp_f8;
    if ((ERROR(cfc1) & 0x78) != 0) {
        if ((ERROR(cfc1) & 0x78) == 0) {
            return (s32) (temp_f8 - 2147483648.0) | 0x80000000;
        }
loop_7:
        return -1;
    }
    if (temp_f16 < 0) {
        goto loop_7;
    }
    return temp_f16;
}

f32 func_80038E70(void *arg0, s32 arg1, s32 arg2) {
    f32 temp_f10;
    f32 temp_f16;
    s32 temp_t7;
    f32 phi_f10;
    f32 phi_f16;

    temp_f10 = (f32) arg2;
    phi_f10 = temp_f10;
    if (arg2 < 0) {
        phi_f10 = temp_f10 + 4294967296.0f;
    }
    temp_t7 = (*arg0)->unk40;
    temp_f16 = (f32) temp_t7;
    phi_f16 = temp_f16;
    if (temp_t7 < 0) {
        phi_f16 = temp_f16 + 4294967296.0f;
    }
    return (f32) ((f64) ((f32) arg1 * phi_f10) / ((f64) phi_f16 * *(void *)0x80071E58));
}

? __alCSeqNextDelta(void *arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_v0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_t0;
    u32 temp_t0_2;
    u32 temp_t0_3;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    s32 phi_a2;
    u32 phi_v1;
    u32 phi_a1;
    u32 phi_v1_2;
    u32 phi_a1_2;
    u32 phi_v1_3;
    u32 phi_a1_3;
    u32 phi_v1_4;
    u32 phi_v1_5;
    u32 phi_a1_4;
    u32 phi_a1_5;

    temp_v0 = arg0->unk10;
    if (arg0->unk4 == 0) {
        return 0;
    }
    phi_a2 = 0;
    phi_v1 = -1U;
loop_3:
    temp_a1 = arg0->unk4;
    phi_a1 = temp_a1;
    phi_v1_2 = phi_v1;
    if (((temp_a1 >> phi_a2) & 1) != 0) {
        temp_a3 = arg0 + (phi_a2 * 4);
        if (arg0->unk14 != 0) {
            temp_a3->unkB8 = (u32) (temp_a3->unkB8 - temp_v0);
        }
        temp_t0 = temp_a3->unkB8;
        phi_a1 = arg0->unk4;
        phi_v1_2 = phi_v1;
        if (temp_t0 < phi_v1) {
            phi_a1 = arg0->unk4;
            phi_v1_2 = temp_t0;
        }
    }
    phi_a1_2 = phi_a1;
    phi_v1_3 = phi_v1_2;
    if (((phi_a1 >> (phi_a2 + 1)) & 1) != 0) {
        temp_a3_2 = arg0 + (phi_a2 * 4);
        phi_a1_4 = phi_a1;
        if (arg0->unk14 != 0) {
            temp_a3_2->unkBC = (u32) (temp_a3_2->unkBC - temp_v0);
            phi_a1_4 = arg0->unk4;
        }
        temp_t0_2 = temp_a3_2->unkBC;
        phi_a1_2 = phi_a1_4;
        phi_v1_3 = phi_v1_2;
        if (temp_t0_2 < phi_v1_2) {
            phi_a1_2 = phi_a1_4;
            phi_v1_3 = temp_t0_2;
        }
    }
    phi_a1_3 = phi_a1_2;
    phi_v1_4 = phi_v1_3;
    if (((phi_a1_2 >> (phi_a2 + 2)) & 1) != 0) {
        temp_a3_3 = arg0 + (phi_a2 * 4);
        phi_a1_5 = phi_a1_2;
        if (arg0->unk14 != 0) {
            temp_a3_3->unkC0 = (u32) (temp_a3_3->unkC0 - temp_v0);
            phi_a1_5 = arg0->unk4;
        }
        temp_t0_3 = temp_a3_3->unkC0;
        phi_a1_3 = phi_a1_5;
        phi_v1_4 = phi_v1_3;
        if (temp_t0_3 < phi_v1_3) {
            phi_a1_3 = phi_a1_5;
            phi_v1_4 = temp_t0_3;
        }
    }
    phi_v1_5 = phi_v1_4;
    if (((phi_a1_3 >> (phi_a2 + 3)) & 1) != 0) {
        temp_a3_4 = arg0 + (phi_a2 * 4);
        if (arg0->unk14 != 0) {
            temp_a3_4->unkC4 = (u32) (temp_a3_4->unkC4 - temp_v0);
        }
        temp_a1_2 = temp_a3_4->unkC4;
        phi_v1_5 = phi_v1_4;
        if (temp_a1_2 < phi_v1_4) {
            phi_v1_5 = temp_a1_2;
        }
    }
    temp_a2 = phi_a2 + 4;
    phi_a2 = temp_a2;
    phi_v1 = phi_v1_5;
    if (temp_a2 != 0x10) {
        goto loop_3;
    }
    arg0->unk14 = 0;
    *arg1 = phi_v1_5;
    return 1;
}
