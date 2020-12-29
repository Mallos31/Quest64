void func_800185F0(void) {
    func_80018684();
    func_800188C4();
    func_80019324();
    func_80018DB4();
    func_8001A238();
    func_80019A70();
}

void func_80018638(s32 arg0) {
    func_800186F8();
    func_80018B14();
    func_800193B4();
    func_80019CCC(arg0);
    func_8001A398(arg0);
    func_80018F60();
}

s32 func_80018684(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    phi_v1 = (void *)0x80087210;
    phi_v0 = 8;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = 0;
    phi_v1->unk8 = 0;
    phi_v1->unk10 = 0;
    phi_v1->unk18 = 0;
    phi_v1 = phi_v1 + 0x20;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_800186B4(s32 arg0) {
    s32 temp_v0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_return;

    phi_v0 = 7;
    phi_v1 = (void *)0x80087210;
    phi_v1_2 = (void *)0x80087210;
    phi_return = 7;
    if (*(void *)0x80087210 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 8;
        phi_v1_2 = temp_v1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_return = temp_v0;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unk0 = 4;
    phi_v1_2->unk4 = arg0;
    return phi_return;
}

s32 func_800186F8(void) {
    f32 temp_f26;
    s32 temp_s3;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_v0_2;
    void *phi_s1;
    s32 phi_s3;
    s32 phi_return;

    temp_f26 = *(void *)0x80071530;
    phi_s1 = (void *)0x80087210;
    phi_s3 = 8;
loop_1:
    temp_v0 = phi_s1->unk0;
    temp_t6 = temp_v0 - 1;
    phi_return = temp_v0;
    if (temp_v0 != 0) {
        phi_s1->unk0 = temp_t6;
        phi_return = temp_v0;
        if ((temp_t6 & 1) != 0) {
            temp_v0_2 = phi_s1->unk4;
            (void *)0x8004CE30->unk18 = (f32) temp_v0_2->unk0;
            (void *)0x8004CE30->unk1C = (f32) (temp_v0_2->unk4 + 1.0f);
            (void *)0x800883F0->unk0 = 0.0f;
            (void *)0x800883F0->unk4 = (f32) *(void *)0x80071534;
            (void *)0x8004CE30->unk20 = (f32) temp_v0_2->unk8;
            func_800232F4(temp_v0_2->unk10, (void *)0x800883F0);
            (void *)0x8004CE30->unk34 = temp_f26;
            (void *)0x8004CE30->unk30 = (f32) (void *)0x800883F0->unk0;
            (void *)0x8004CE30->unk38 = (f32) (void *)0x800883F0->unk4;
            phi_return = func_8001B108((void *)0x8004CE30);
        }
    }
    temp_s3 = phi_s3 - 1;
    phi_s1 = phi_s1 + 8;
    phi_s3 = temp_s3;
    if (temp_s3 != 0) {
        goto loop_1;
    }
    return phi_return;
}

f32 func_800187F8(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f16;
    void *temp_v1;

    temp_f16 = *(void *)0x80071538;
    temp_f0 = arg0->unk30;
    temp_f2 = arg0->unk34;
    temp_f12 = arg0->unk38;
    arg0->unk18 = (f32) (arg0->unk18 + temp_f0);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f2);
    arg0->unk20 = (f32) (arg0->unk20 + temp_f12);
    arg0->unk30 = (f32) ((f64) temp_f0 * temp_f16);
    arg0->unk34 = (f32) ((f64) temp_f2 * *(void *)0x80071540);
    arg0->unk38 = (f32) ((f64) temp_f12 * temp_f16);
    temp_f14 = ((arg0->unk0 * 4) + 0x80050000)->unk-3190;
    arg0->unk2C = temp_f14;
    arg0->unk28 = temp_f14;
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0xFB000000;
    temp_v1->unk4 = (s32) ((arg0->unk0 + 0x80050000)->unk-3160 | -0x100);
    return temp_f0;
}

s32 func_800188C4(void) {
    s32 temp_v0;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x80087208 = 0;
    phi_a0 = (void *)0x80087310;
    phi_v1 = (void *)0x80087250;
    phi_v0 = 8;
loop_1:
    phi_a0->unk0 = 0;
    phi_v1->unk0 = 0;
    phi_a0->unk18 = 0;
    phi_v1->unk18 = 0;
    phi_a0->unk30 = 0;
    phi_v1->unk30 = 0;
    phi_a0->unk48 = 0;
    temp_v0 = phi_v0 - 4;
    phi_v1->unk48 = 0;
    phi_a0 = phi_a0 + 0x60;
    phi_v1 = phi_v1 + 0x60;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_80018918(f32 arg0, f32 arg1, f32 arg2, void *arg3) {
    void *sp1C;
    void *sp18;
    f32 temp_f12;
    f32 temp_ret;
    f64 temp_f14;
    f64 temp_f2;
    s32 temp_a0;
    s32 temp_ret_2;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_a1;
    void *temp_a3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a1;
    f64 phi_f2;
    void *phi_v0;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v1_3;
    f32 phi_f12;
    void *phi_a3;
    void *phi_return;
    f32 phi_f12_2;

    temp_v0 = *(void *)0x8007B2F4;
    if (temp_v0 != 0) {
        phi_a1 = (void *)0x80087250;
    } else {
        phi_a1 = (void *)0x80087310;
    }
    if (temp_v0 != 0) {
        phi_v1 = (void *)0x80087310;
    } else {
        phi_v1 = (void *)0x80087250;
    }
    sp18 = phi_v1;
    sp1C = phi_a1;
    temp_ret = func_80023210(arg0 - (void *)0x80086DC0->unkC, arg2 - (void *)0x80086DC0->unk14, phi_a1);
    temp_f14 = *(void *)0x80071548;
    temp_v1 = phi_v1;
    temp_a1 = phi_a1;
    temp_a3 = arg3;
    temp_f12 = (f32) ((f64) (temp_ret - *(void *)0x80086DEC) + temp_f14);
    temp_f2 = (f64) temp_f12;
    if (temp_f2 < *(void *)0x80071550) {
        phi_f12_2 = (f32) (temp_f2 + *(void *)0x80071558);
block_10:
        phi_f2 = (f64) phi_f12_2;
        phi_f12 = phi_f12_2;
    } else {
        phi_f2 = temp_f2;
        phi_f12 = temp_f12;
        if (temp_f14 < temp_f2) {
            phi_f12_2 = (f32) (temp_f2 - *(void *)0x80071560);
            goto block_10;
        }
    }
    phi_return = (bitwise void *) temp_ret;
    if (*(void *)0x80071568 < phi_f2) {
        phi_return = (bitwise void *) temp_ret;
        if (phi_f2 < *(void *)0x80071570) {
            temp_a0 = *(void *)0x80087200;
            phi_return = (void *)0x80080000;
            if (temp_a0 < 8) {
                temp_v0_2 = *(void *)0x80087208;
                temp_t6 = temp_a0 * 0x18;
                temp_a1 = temp_a1 + temp_t6;
                phi_v0_2 = temp_v0_2;
                phi_v1_3 = temp_v1;
                phi_return = temp_v0_2;
                if (temp_v0_2 != 0) {
                    phi_v0 = temp_v0_2;
                    phi_v1_2 = temp_v1;
                    phi_v0_2 = temp_v0_2;
                    phi_v1_3 = temp_v1;
                    phi_return = temp_v0_2;
                    if (temp_a3 != temp_v1->unk14) {
loop_16:
                        temp_v0_3 = phi_v0 - 1;
                        temp_v1_2 = phi_v1_2 + 0x18;
                        phi_v0_2 = temp_v0_3;
                        phi_v1_3 = temp_v1_2;
                        phi_return = temp_v0_3;
                        if (temp_v0_3 != 0) {
                            phi_v0 = temp_v0_3;
                            phi_v1_2 = temp_v1_2;
                            phi_v0_2 = temp_v0_3;
                            phi_v1_3 = temp_v1_2;
                            phi_return = temp_v0_3;
                            if (temp_a3 != temp_v1_2->unk14) {
                                goto loop_16;
                            }
                        }
                    }
                }
                if (phi_v0_2 != 0) {
                    *temp_a1 = (s32) *phi_v1_3;
                    phi_a3 = temp_a3;
                } else {
                    sp1C = temp_a1;
                    arg3 = temp_a3;
                    temp_ret_2 = func_80022FD0(phi_f12, temp_f14, 4, temp_a1, (void *)0x80087200, temp_a3);
                    *temp_a1 = (s32) ((temp_ret_2 * 4) + 1);
                    phi_a3 = arg3;
                    phi_return = (void *) temp_ret_2;
                }
                (temp_a1 + temp_t6)->unk4 = arg0;
                (temp_a1 + temp_t6)->unk8 = arg1;
                (temp_a1 + temp_t6)->unkC = arg2;
                (temp_a1 + temp_t6)->unk14 = phi_a3;
                (temp_a1 + temp_t6)->unk10 = (f32) phi_a3->unk10;
                *(void *)0x80087200 = (s32) (*(void *)0x80087200 + 1);
            }
        }
    }
    return phi_return;
}

void *func_80018B14(void) {
    s32 temp_s1;
    s32 temp_s1_2;
    void *temp_ret;
    void *temp_t8;
    void *temp_v0;
    void *phi_s0;
    s32 phi_s1;
    void *phi_return;

    *(void *)0x80087208 = (s32) *(void *)0x80087200;
    phi_s0 = (void *)0x80087310;
    if (*(void *)0x8007B2F4 != 0) {
        phi_s0 = (void *)0x80087250;
    }
    temp_s1 = *(void *)0x80087208;
    phi_s1 = temp_s1;
    phi_return = (void *)0x80087208;
    if (temp_s1 != 0) {
loop_3:
        temp_v0 = phi_s0->unk0;
        temp_t8 = temp_v0 - 1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_s0->unk0 = temp_t8;
            phi_return = temp_v0;
            if (temp_t8 == 0) {
                *(void *)0x8004CEC4 = (f32) phi_s0->unk4;
                *(void *)0x8004CEC8 = (f32) phi_s0->unk8;
                *(void *)0x8004CECC = (f32) phi_s0->unkC;
                *(void *)0x8004CED8 = (f32) phi_s0->unk10;
                *(void *)0x8004CED4 = (f32) *(void *)0x8004CED8;
                temp_ret = func_8001B108(0x8004CEAC);
                phi_s0->unk0 = (void *)0x19;
                phi_return = temp_ret;
            }
        }
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x18;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_3;
        }
    }
    return phi_return;
}

s32 func_80018BF0(void *arg0) {
    f64 temp_f0;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a3;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_return;

    temp_f0 = *(void *)0x80071578;
    arg0->unk18 = (f32) (arg0->unk18 + arg0->unk30);
    arg0->unk1C = (f32) (arg0->unk1C + arg0->unk34);
    arg0->unk20 = (f32) (arg0->unk20 + arg0->unk38);
    arg0->unk28 = (f32) ((f64) arg0->unk28 + temp_f0);
    arg0->unk2C = (f32) ((f64) arg0->unk2C + temp_f0);
    temp_v0 = *(void *)0x80085BBC + 0x40;
    temp_v1 = *(void *)0x80085BC0 + 0x40;
    temp_a1 = *(void *)0x80085BC4 + 0x40;
    phi_v0 = temp_v0;
    phi_return = temp_v0;
    if (temp_v0 >= 0x100) {
        phi_v0 = 0xFF;
        phi_return = 0xFF;
    }
    phi_v1 = temp_v1;
    if (temp_v1 >= 0x100) {
        phi_v1 = 0xFF;
    }
    phi_a1 = temp_a1;
    if (temp_a1 >= 0x100) {
        phi_a1 = 0xFF;
    }
    temp_a3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a3 + 8);
    temp_a3->unk0 = 0xFB000000;
    temp_a3->unk4 = (s32) ((((arg0->unk0 + 0x80050000)->unk-3114 | (phi_v0 << 0x18)) | ((phi_v1 & 0xFF) << 0x10)) | ((phi_a1 & 0xFF) << 8));
    return phi_return;
}

void func_80018CF8(f32 arg0, f32 arg1, f32 arg2) {
    *(void *)0x8004CF34 = arg0;
    *(void *)0x8004CF38 = arg1;
    *(void *)0x8004CF3C = arg2;
    func_8001B108(0x8004CF1C);
}

f32 func_80018D34(void *arg0) {
    f32 temp_f0;
    u16 temp_v0;
    void *temp_a1;

    temp_v0 = arg0->unk0;
    if ((temp_v0 & 3) == 0) {
        arg0->unk10 = (s32) ((((s32) temp_v0 >> 2) * 4) + 0x80050000)->unk-30A4;
    }
    temp_f0 = ((temp_v0 * 4) + 0x80050000)->unk-3098;
    arg0->unk2C = temp_f0;
    arg0->unk28 = temp_f0;
    temp_a1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
    temp_a1->unk0 = 0xFB000000;
    temp_a1->unk4 = (s32) ((arg0->unk0 + 0x80050000)->unk-3068 | -0x100);
    return temp_f0;
}

s32 func_80018DB4(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x800873DC = (u16)0;
    (void *)0x800873EC->unkC = (u16)0;
    phi_v1 = (void *)0x800873EC + 0x1C;
    phi_v0 = 8;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unkC = (u16)0;
    phi_v1->unk28 = (u16)0;
    phi_v1->unk44 = (u16)0;
    phi_v1->unk60 = (u16)0;
    phi_v1 = phi_v1 + 0x70;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_80018DF4(s32 arg0, ?32 arg1, s32 arg2) {
    void *sp24;
    s32 temp_a3;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_v0;
    s32 phi_a3;
    void *phi_t0;
    void *phi_t0_2;
    s32 phi_a3_2;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v1_6;

    phi_a3 = 9;
    phi_t0 = (void *)0x800873D0;
    phi_t0_2 = (void *)0x800873D0;
    phi_a3_2 = 9;
    if (*(void *)0x800873DC != 0) {
loop_1:
        temp_a3 = phi_a3 - 1;
        temp_t0 = phi_t0 + 0x1C;
        phi_t0_2 = temp_t0;
        phi_a3_2 = temp_a3;
        if (temp_a3 != 0) {
            phi_a3 = temp_a3;
            phi_t0 = temp_t0;
            phi_t0_2 = temp_t0;
            phi_a3_2 = temp_a3;
            if (temp_t0->unkC != 0) {
                goto loop_1;
            }
        }
    }
    phi_t0_2->unkC = (u16)0x2D;
    phi_t0_2->unk0 = arg0;
    phi_t0_2->unk10 = arg1;
    if (arg2 < 0) {
        arg2 = -arg2;
    }
    sp24 = phi_t0_2;
    temp_t0_2 = phi_t0_2;
    temp_t0_2->unk14 = func_80024330(arg2, phi_t0_2 + 4, 1, phi_a3_2);
    phi_v1_6 = 0;
    if (*(void *)0x800873DC != 0) {
        phi_v1_6 = 0;
        if (arg0 == *(void *)0x800873D0) {
            phi_v1_6 = 1;
        }
    }
    phi_v0 = (void *)0x80087408;
    phi_v1_5 = phi_v1_6;
    if (*(void *)0x800873F8 != 0) {
        phi_v0 = (void *)0x80087408;
        phi_v1_5 = phi_v1_6;
        if (arg0 == *(void *)0x800873EC) {
            phi_v0 = (void *)0x80087408;
            phi_v1_5 = phi_v1_6 + 1;
        }
    }
loop_11:
    phi_v1_4 = phi_v1_5;
    if (phi_v0->unkC != 0) {
        phi_v1_4 = phi_v1_5;
        if (arg0 == phi_v0->unk0) {
            phi_v1_4 = phi_v1_5 + 1;
        }
    }
    phi_v1_3 = phi_v1_4;
    if (phi_v0->unk28 != 0) {
        phi_v1_3 = phi_v1_4;
        if (arg0 == phi_v0->unk1C) {
            phi_v1_3 = phi_v1_4 + 1;
        }
    }
    phi_v1_2 = phi_v1_3;
    if (phi_v0->unk44 != 0) {
        phi_v1_2 = phi_v1_3;
        if (arg0 == phi_v0->unk38) {
            phi_v1_2 = phi_v1_3 + 1;
        }
    }
    phi_v1 = phi_v1_2;
    if (phi_v0->unk60 != 0) {
        phi_v1 = phi_v1_2;
        if (arg0 == phi_v0->unk54) {
            phi_v1 = phi_v1_2 + 1;
        }
    }
    temp_v0 = phi_v0 + 0x70;
    phi_v0 = temp_v0;
    phi_v1_5 = phi_v1;
    if (temp_v0 != 0x800874E8) {
        goto loop_11;
    }
    temp_t0_2->unk18 = (s32) (phi_v1 - 1);
    return temp_v0;
}

void func_80018F60(void) {
    s32 spA4;
    s32 spA0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_fp;
    s32 temp_v1_2;
    u16 temp_a0;
    u16 temp_v0_10;
    void *temp_v0;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_3;
    void *phi_s1;
    f32 phi_f14;
    s32 phi_s7;
    s32 phi_a0;
    void *phi_a2;
    s32 phi_a3;
    s32 phi_fp;
    s32 phi_s7_2;

    phi_s1 = (void *)0x800873D0;
    phi_s7 = 0;
    phi_fp = 0xA;
loop_1:
    if (phi_s1->unkC != 0) {
        temp_v0 = phi_s1->unk0;
        temp_v1 = temp_v0->unk64;
        temp_a0 = temp_v1->unk0;
        if (temp_a0 == 0) {
            phi_f14 = temp_v0->unk4 + (temp_v1->unk1C * temp_v0->unk24);
        } else {
            if (temp_a0 == 1) {
                phi_f14 = temp_v0->unk68->unk94;
            } else {
                phi_f14 = (f32) ((f64) temp_v0->unk4 + (*(void *)0x80071580 * (f64) temp_v0->unk24));
            }
        }
        if (func_8002413C(temp_v0->unk0, phi_f14, temp_a0, temp_v0->unk8, &spA4, &spA0) != 0) {
            phi_s7_2 = phi_s7;
            if (phi_s7 == 0) {
                temp_v0_2 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
                temp_v0_2->unk4 = 0x800C47A0;
                temp_v0_2->unk0 = 0x6000000;
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk0 = 0xFD100000;
                temp_v0_3->unk4 = 0x8039CF90;
                temp_v0_4 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5100000;
                temp_v0_5 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
                temp_v0_6->unk4 = 0x74FF040;
                temp_v0_6->unk0 = 0xF3000000;
                temp_v0_7 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
                temp_v0_8->unk4 = 0;
                temp_v0_8->unk0 = 0xF5104000;
                temp_v0_9 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
                temp_v0_9->unk4 = 0x1FC024;
                temp_v0_9->unk0 = 0xF2000000;
                phi_s7_2 = phi_s7 + 1;
            }
            temp_v0_10 = phi_s1->unkC;
            if ((s32) temp_v0_10 >= 0x1E) {
                temp_v1_2 = func_80035190(((0x2D - temp_v0_10) << 0xC) & 0xFFFF) >> 0xB;
                phi_a0 = temp_v1_2;
                if (temp_v1_2 < 0) {
                    phi_a0 = -temp_v1_2;
                }
                spA0 = spA0 - phi_a0;
            }
            spA4 = spA4 - (phi_s1->unk18 * 4);
            spA0 = (spA0 - (phi_s1->unk18 * 5)) - 8;
            temp_v1_3 = (phi_s1->unk10 * 4) + 0x8004CFA4;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk0 = 0xFB000000;
            temp_v0_11->unk4 = (s32) ((((temp_v1_3->unk2 << 8) | (temp_v1_3->unk0 << 0x18)) | (temp_v1_3->unk1 << 0x10)) | 0xFF);
            temp_a3 = phi_s1->unk14;
            spA4 = spA4 - (temp_a3 * 4);
            phi_a2 = phi_s1 + 4;
            phi_a3 = temp_a3;
            phi_s7 = phi_s7_2;
            if (temp_a3 != 0) {
loop_15:
                temp_a3_2 = phi_a3 - 1;
                if (0x20 != *phi_a2) {
                    temp_v0_12 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
                    temp_v0_12->unk0 = (s32) ((((((spA4 + 4) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((spA0 + 5) * 4) & 0xFFF));
                    temp_v0_12->unk4 = (s32) (((((spA4 - 4) * 4) & 0xFFF) << 0xC) | (((spA0 - 5) * 4) & 0xFFF));
                    temp_v0_13 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
                    temp_v0_13->unk0 = 0xB4000000;
                    temp_v0_13->unk4 = (s32) (*phi_a2 << 0x18);
                    temp_v0_14 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
                    temp_v0_14->unk4 = 0x4000400;
                    temp_v0_14->unk0 = 0xB3000000;
                    spA4 = spA4 + 8;
                }
                phi_a2 = phi_a2 + 1;
                phi_a3 = temp_a3_2;
                phi_s7 = phi_s7_2;
                if (temp_a3_2 != 0) {
                    goto loop_15;
                }
            }
        }
        phi_s1->unkC = (u16) (phi_s1->unkC - 1);
    }
    temp_fp = phi_fp - 1;
    phi_s1 = phi_s1 + 0x1C;
    phi_fp = temp_fp;
    if (temp_fp != 0) {
        goto loop_1;
    }
}

void *func_80019324(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x800874E8;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = 0;
    phi_v0->unk18 = 0;
    phi_v0->unk30 = 0;
    phi_v0->unk48 = 0;
    temp_v0 = phi_v0 + 0x60;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_80019354(s32 arg0, ?32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    void *phi_v0_2;
    void *phi_return;

    phi_v1 = 7;
    phi_v0 = (void *)0x800874E8;
    phi_v0_2 = (void *)0x800874E8;
    phi_return = (void *)0x800874E8;
    if (*(void *)0x800874E8 != 0) {
loop_1:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x18;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v0_2 = temp_v0;
            phi_return = temp_v0;
            if (*temp_v0 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v0_2->unk0 = arg1;
    phi_v0_2->unk4 = arg0;
    phi_v0_2->unk8 = arg2;
    phi_v0_2->unkC = arg3;
    phi_v0_2->unk10 = arg4;
    phi_v0_2->unk14 = arg5;
    return phi_return;
}

void func_800193B4(void) {
    f32 sp108;
    f32 sp104;
    f32 sp100;
    ? spB8;
    s8 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    ? sp74;
    ? *temp_t0;
    f32 temp_f6;
    f64 temp_f20;
    f64 temp_f24;
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;
    void *phi_s0;
    f32 phi_f6;
    s32 phi_s1;

    phi_t6 = (void *)0x8004CFB0;
    phi_t0 = &sp74;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004CFEC) {
        goto loop_1;
    }
    temp_t0->unk0 = (s32) temp_t6->unk0;
    temp_f24 = *(void *)0x80071588;
    temp_f20 = *(void *)0x80071590;
    phi_s0 = (void *)0x800874E8;
    phi_s1 = 8;
loop_3:
    temp_v1 = phi_s0->unk0;
    if (temp_v1 != 0) {
        if ((temp_v1 & 1) != 0) {
            temp_v0 = func_80022FD0(0x20);
            temp_f6 = (f32) temp_v0;
            phi_f6 = temp_f6;
            if (temp_v0 < 0) {
                phi_f6 = temp_f6 + 4294967296.0f;
            }
            func_80023570(&spB8, (f32) (((f64) phi_f6 * temp_f24) / 16.0), (f32) (((f64) (f32) func_80022FD0(0x20) * temp_f24) / 16.0), 0);
            func_80035470(&spB8, 0, 0, phi_s0->unk14, &sp108, &sp104, &sp100);
            sp8C = phi_s0->unk8 + sp108;
            sp90 = phi_s0->unkC + sp104;
            sp94 = phi_s0->unk10 + sp100;
            spA4 = (f32) ((f64) sp108 * temp_f20);
            spA8 = (f32) ((f64) sp104 * temp_f20);
            spAC = (f32) ((f64) sp100 * temp_f20);
            spB0 = (s8) phi_s0->unk4;
            func_8001B108(&sp74);
        }
        phi_s0->unk0 = (s32) (phi_s0->unk0 - 1);
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x18;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_3;
    }
}

u16 func_800195E0(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f64 temp_f14;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;

    temp_f14 = *(void *)0x80071598;
    temp_f0 = arg0->unk30;
    temp_f2 = arg0->unk34;
    temp_f12 = arg0->unk38;
    arg0->unk18 = (f32) (arg0->unk18 + temp_f0);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f2);
    arg0->unk20 = (f32) (arg0->unk20 + temp_f12);
    arg0->unk30 = (f32) ((f64) temp_f0 * temp_f14);
    arg0->unk34 = (f32) ((f64) temp_f2 * temp_f14);
    arg0->unk38 = (f32) ((f64) temp_f12 * temp_f14);
    arg0->unk24 = (f32) ((f64) arg0->unk24 + *(void *)0x800715A0);
    if ((s32) arg0->unk0 < 0xA) {
        arg0->unk2C = 1.0f;
        arg0->unk28 = 1.0f;
    }
    temp_v1 = (arg0->unk3C * 4) + 0x800EBD1C;
    if ((arg0->unk0 & 1) != 0) {
        temp_a0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
        temp_a0->unk0 = 0xFB000000;
        temp_a0->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0xDC);
        return arg0->unk0;
    }
    temp_a0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a0_2 + 8);
    temp_a0_2->unk0 = 0xFB000000;
    temp_a0_2->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0x20);
    return arg0->unk0;
}

void func_80019738(s8 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sp100;
    f32 spFC;
    f32 spF8;
    ? spB8;
    s8 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    ? sp78;
    ? *temp_t0;
    f32 *temp_s4;
    f32 *temp_s5;
    f32 temp_f0;
    f32 temp_f6;
    f32 temp_f6_2;
    f64 temp_f20;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;
    f32 phi_f6;
    f32 phi_f6_2;
    s32 phi_s0;

    phi_t6 = (void *)0x8004CFF0;
    phi_t0 = &sp78;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004D02C) {
        goto loop_1;
    }
    temp_t0->unk0 = (s32) temp_t6->unk0;
    temp_f20 = *(void *)0x800715A8;
    temp_s5 = &spFC;
    temp_s4 = &sp100;
    phi_s0 = 0xF;
loop_3:
    temp_v0 = func_80022FD0(0x20);
    temp_f6 = (f32) temp_v0;
    phi_f6 = temp_f6;
    if (temp_v0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    sp100 = (f32) (((f64) phi_f6 * temp_f20) / 16.0);
    temp_v0_2 = func_80022FD0(0x20);
    temp_f6_2 = (f32) temp_v0_2;
    phi_f6_2 = temp_f6_2;
    if (temp_v0_2 < 0) {
        phi_f6_2 = temp_f6_2 + 4294967296.0f;
    }
    temp_f0 = (f32) (((f64) phi_f6_2 * temp_f20) / 16.0);
    spFC = temp_f0;
    func_80023570(&spB8, (bitwise s32) sp100, temp_f0, 0);
    func_80035470(&spB8, 0, 0, arg4, temp_s4, temp_s5, &spF8);
    sp90 = arg1;
    sp94 = arg2;
    spB4 = arg0;
    spAC = temp_f0;
    sp98 = arg3;
    spA8 = sp100;
    spB0 = spF8;
    func_8001B108(&sp78);
    temp_s0 = phi_s0 - 1;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
        goto loop_3;
    }
}

u16 func_80019918(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f64 temp_f14;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;

    temp_f14 = *(void *)0x800715B0;
    temp_f0 = arg0->unk30;
    temp_f2 = arg0->unk34;
    temp_f12 = arg0->unk38;
    arg0->unk18 = (f32) (arg0->unk18 + temp_f0);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f2);
    arg0->unk20 = (f32) (arg0->unk20 + temp_f12);
    arg0->unk30 = (f32) ((f64) temp_f0 * temp_f14);
    arg0->unk34 = (f32) ((f64) temp_f2 * temp_f14);
    arg0->unk38 = (f32) ((f64) temp_f12 * temp_f14);
    arg0->unk24 = (f32) ((f64) arg0->unk24 + *(void *)0x800715B8);
    if ((s32) arg0->unk0 < 0xA) {
        arg0->unk2C = 1.0f;
        arg0->unk28 = 1.0f;
    }
    temp_v1 = (arg0->unk3C * 4) + 0x800EBD1C;
    if ((arg0->unk0 & 1) != 0) {
        temp_a0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
        temp_a0->unk0 = 0xFB000000;
        temp_a0->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0xDC);
        return arg0->unk0;
    }
    temp_a0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a0_2 + 8);
    temp_a0_2->unk0 = 0xFB000000;
    temp_a0_2->unk4 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0x20);
    return arg0->unk0;
}

void *func_80019A70(void) {
    *(void *)0x800880A8 = (u16)0;
    (void *)0x80088178->unk1A0 = (u16)0;
    (void *)0x80088178->unkD0 = (u16)0;
    (void *)0x80088178->unk0 = (u16)0;
    return (void *)0x80088178 + 0x1A0;
}

s32 func_80019A98(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f28;
    s32 temp_s4;
    s32 temp_s5;
    void *temp_v0;
    void *phi_v0;
    s32 phi_s5;
    void *phi_v0_2;
    f32 phi_f22;
    void *phi_s1;
    void *phi_s0;
    s32 phi_s4;
    s32 phi_s5_2;

    phi_v0 = (void *)0x800880A8;
    phi_s5 = 0;
loop_1:
    phi_v0_2 = phi_v0;
    phi_s5_2 = phi_s5;
    if (*phi_v0 != 0) {
        temp_s5 = phi_s5 + 1;
        temp_v0 = phi_v0 + 0xD0;
        phi_v0 = temp_v0;
        phi_s5 = temp_s5;
        phi_v0_2 = temp_v0;
        phi_s5_2 = temp_s5;
        if (temp_s5 != 3) {
            goto loop_1;
        }
    }
    phi_v0_2->unk4 = (s16) (arg0 & 0xFFFF);
    phi_v0_2->unk0 = (u16)1;
    temp_f28 = *(void *)0x800715C0;
    phi_f22 = 0.0f;
    phi_s1 = phi_v0_2 + 0x10;
    phi_s0 = phi_v0_2 + 0x70;
    phi_s4 = 8;
loop_4:
    (void *)0x800883F0->unk0 = 0.0f;
    (void *)0x800883F0->unk4 = arg4;
    func_800232F4(phi_f22, (void *)0x800883F0);
    phi_s1->unk0 = (f32) ((void *)0x800883F0->unk0 + arg1);
    phi_s1->unk8 = (f32) ((void *)0x800883F0->unk4 + arg3);
    func_8000EE60(phi_s1->unk0, (void *)0x8007BAB8->unk18, (bitwise s32) phi_s1->unk8, 0xA00, (void *)0x80088400);
    temp_s4 = phi_s4 - 1;
    if (((void *)0x80088400->unk18 & 0x8000) != 0) {
        phi_s1->unk4 = arg2;
        phi_s0->unk0 = 0.0f;
        phi_s0->unk4 = 1.0f;
        phi_s0->unk8 = 0.0f;
    } else {
        temp_f12 = (void *)0x80088400->unk4;
        temp_f0 = (f64) (temp_f12 - arg2);
        if ((temp_f0 < -40.0) || (40.0 < temp_f0)) {
            phi_s1->unk4 = arg2;
            phi_s0->unk0 = 0.0f;
            phi_s0->unk4 = 1.0f;
            phi_s0->unk8 = 0.0f;
        } else {
            phi_s1->unk4 = temp_f12;
            phi_s0->unk0 = (f32) (void *)0x80088400->unkC;
            phi_s0->unk4 = (f32) (void *)0x80088400->unk10;
            phi_s0->unk8 = (f32) (void *)0x80088400->unk14;
        }
    }
    phi_f22 = (f32) ((f64) phi_f22 + temp_f28);
    phi_s1 = phi_s1 + 0xC;
    phi_s0 = phi_s0 + 0xC;
    phi_s4 = temp_s4;
    if (temp_s4 != 0) {
        goto loop_4;
    }
    return phi_s5_2;
}

void func_80019CA4(s32 arg0) {
    ((arg0 * 0xD0) + 0x80090000)->unk-7F58 = (u16)0;
}

s32 func_80019CCC(s32 arg0) {
    s32 sp154;
    f32 sp118;
    f32 sp114;
    f32 sp110;
    ? spE0;
    void *sp8C;
    s32 sp84;
    s32 sp80;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_v0;
    void *temp_s0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *phi_s7;
    void *phi_s0;
    void *phi_s2;
    s32 phi_s3;
    s32 phi_s3_2;
    void *phi_s0_2;
    void *phi_s0_3;

    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x6000000;
    temp_v0_2->unk4 = 0x800C4EA0;
    sp154 = 4;
    phi_s7 = (void *)0x800880A8;
loop_1:
    temp_s0 = phi_s7 + 0x10;
    if (phi_s7->unk0 != 0) {
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0x800C4998;
        temp_v0_3->unk0 = 0xFD900000;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5900000;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0x71FF200;
        temp_v0_6->unk0 = 0xF3000000;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        temp_v0_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
        temp_v0_8->unk4 = 0;
        temp_v0_8->unk0 = 0xF5880800;
        temp_v0_9 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
        temp_v0_9->unk4 = 0x7C07C;
        temp_v0_9->unk0 = 0xF2000000;
        sp84 = 0x800C4EF8;
        sp80 = 0x800C4F78;
        sp8C = temp_s0;
        phi_s0 = temp_s0;
        phi_s2 = phi_s7 + 0x70;
        phi_s3 = 8;
loop_3:
        func_80011860(phi_s0->unk0, phi_s0->unk4, phi_s0->unk8, phi_s2->unk0, phi_s2->unk4, phi_s2->unk8, 2.0f);
        func_8002371C(&spE0, (bitwise s32) phi_s0->unk0, phi_s0->unk4 + 5.0f, phi_s0->unk8, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10, (void *)0x80086DC0->unk14);
        func_80023DF4(&spE0, 0x3FC00000, 0x3FC00000, 0x3FC00000);
        func_80035200(&spE0, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
        temp_v1 = (phi_s7->unk4 * 4) + 0x8004D030;
        temp_v0_10 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
        temp_v0_10->unk0 = 0x1020040;
        temp_v0_10->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        temp_s3 = phi_s3 - 1;
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk0 = 0xFB000000;
        temp_v0_11->unk4 = (s32) (((((phi_s7->unk2 & 1) + 0x80050000)->unk-2FC4 | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | (temp_v1->unk2 << 8));
        temp_v0_12 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
        temp_v0_12->unk4 = 0x800C4EE0;
        temp_v0_12->unk0 = 0x6000000;
        phi_s0 = phi_s0 + 0xC;
        phi_s2 = phi_s2 + 0xC;
        phi_s3 = temp_s3;
        if (temp_s3 != 0) {
            goto loop_3;
        }
        phi_s7->unk2 = (u16) (phi_s7->unk2 + 1);
        temp_v0_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
        temp_v0_13->unk0 = 0xFD900000;
        temp_v0_13->unk4 = sp84;
        temp_v0_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
        temp_v0_14->unk4 = 0x7000030;
        temp_v0_14->unk0 = 0xF5900000;
        temp_v0_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
        temp_v0_15->unk4 = 0;
        temp_v0_15->unk0 = 0xE6000000;
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk4 = 0x701F800;
        temp_v0_16->unk0 = 0xF3000000;
        temp_v0_17 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk4 = 0;
        temp_v0_17->unk0 = 0xE7000000;
        temp_v0_18 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk4 = 0x30;
        temp_v0_18->unk0 = 0xF5880200;
        temp_v0_19 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
        temp_v0_19->unk0 = 0xF2000000;
        temp_v0_19->unk4 = 0x1C01C;
        phi_s3_2 = 8;
        phi_s0_3 = sp8C;
loop_5:
        temp_s3_2 = phi_s3_2 - 1;
        temp_f26 = phi_s0_3->unk0;
        temp_f30 = phi_s0_3->unk8;
        temp_f28 = phi_s0_3->unk4 + 5.0f;
        phi_s0_2 = phi_s0_3 + 0xC;
        if (temp_s3_2 == 0) {
            phi_s0_2 = sp8C;
        }
        temp_f20 = phi_s0_2->unk0 - temp_f26;
        temp_f22 = (phi_s0_2->unk4 + 5.0f) - temp_f28;
        temp_f24 = phi_s0_2->unk8 - temp_f30;
        func_80023A08(&spE0, temp_f20, temp_f22, temp_f24);
        func_80023DF4(&spE0, 0x40000000, sqrtf(((temp_f20 * temp_f20) + (temp_f22 * temp_f22)) + (temp_f24 * temp_f24)), 0x40000000);
        sp110 = temp_f26;
        sp114 = temp_f28;
        sp118 = temp_f30;
        func_80035200(&spE0, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
        temp_v0_20 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
        temp_v0_20->unk0 = 0x1020040;
        temp_v0_20->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_21 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
        temp_v0_21->unk0 = 0x6000000;
        temp_v0_21->unk4 = sp80;
        phi_s3_2 = temp_s3_2;
        phi_s0_3 = phi_s0_2;
        if (temp_s3_2 != 0) {
            goto loop_5;
        }
    }
    temp_v0 = sp154 - 1;
    sp154 = temp_v0;
    phi_s7 = phi_s7 + 0xD0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_8001A238(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    phi_v1 = (void *)0x800875A8;
    phi_v0 = 0x20;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = (u16)0;
    phi_v1->unk58 = (u16)0;
    phi_v1->unkB0 = (u16)0;
    phi_v1->unk108 = (u16)0;
    phi_v1 = phi_v1 + 0x160;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_8001A268(s32 arg0, s32 arg1, s32 arg2, s16 arg3, s32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA, f32 argB) {
    s32 temp_v0;
    u16 temp_a0;
    void *temp_t0;
    void *temp_t9;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;

    phi_v0 = 0x1F;
    phi_v1 = (void *)0x800875A8;
    phi_v1_2 = (void *)0x800875A8;
    if (*(void *)0x800875A8 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x58;
        phi_v1_2 = temp_v1;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unkC = arg5;
    phi_v1_2->unk10 = arg6;
    phi_v1_2->unk14 = arg7;
    phi_v1_2->unk18 = arg8;
    temp_t0 = (arg0 * 0xC) + 0x800EB9EC;
    phi_v1_2->unk1C = arg9;
    phi_v1_2->unk20 = argA;
    phi_v1_2->unk28 = 0.0f;
    phi_v1_2->unk2C = 0.0f;
    phi_v1_2->unk30 = 1.0f;
    phi_v1_2->unk24 = argB;
    phi_v1_2->unk38 = (s32) temp_t0->unk0;
    temp_a0 = phi_v1_2->unk3A;
    phi_v1_2->unk3C = (s32) temp_t0->unk4;
    phi_v1_2->unk4 = (u16)0;
    phi_v1_2->unk6 = arg3;
    phi_v1_2->unk40 = (s32) temp_t0->unk8;
    phi_v1_2->unk40 = (s32) ((arg1 * 4) + 0x800CB4E0);
    phi_v1_2->unk0 = temp_a0;
    phi_v1_2->unk2 = temp_a0;
    phi_v1_2->unk34 = 0;
    temp_t9 = (arg2 * 0x14) + 0x800DA828;
    phi_v1_2->unk8 = (s16) arg4;
    phi_v1_2->unk44 = (s32) temp_t9->unk0;
    phi_v1_2->unk48 = (s32) temp_t9->unk4;
    phi_v1_2->unk4C = (s32) temp_t9->unk8;
    phi_v1_2->unk50 = (s32) temp_t9->unkC;
    phi_v1_2->unk54 = (s32) temp_t9->unk10;
    return phi_v1_2;
}

void *func_8001A398(s32 arg0) {
    s32 temp_s2;
    u16 temp_t2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v1_2;
    void *phi_s0;
    u32 phi_a1;
    s32 phi_s2;
    u32 phi_a1_2;

    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x6000000;
    temp_v0_2->unk4 = 0x800EBE08;
    *(void *)0x800883E8 = (u16)0xFFFF;
    phi_s0 = (void *)0x800875A8;
    phi_s2 = 0x20;
loop_1:
    if (phi_s0->unk0 != 0) {
        func_8001A834(phi_s0);
        temp_v1 = phi_s0->unk8;
        phi_a1_2 = 0xFAU;
        if ((temp_v1 & 2) != 0) {
            if ((*(void *)0x80087204 & 1) != 0) {
                phi_a1_2 = 0xF0U;
            } else {
                phi_a1_2 = 0x96U;
            }
        }
        if (((temp_v1 & 1) == 0) && (temp_v0_3 = phi_s0->unk0, (((s32) temp_v0_3 < 8) != 0))) {
            phi_a1 = (u32) (temp_v0_3 * phi_a1_2) >> 3;
        } else {
            phi_a1 = phi_a1_2;
            if ((temp_v1 & 0x80) != 0) {
                temp_v0_4 = phi_s0->unk4;
                phi_a1 = phi_a1_2;
                if ((s32) temp_v0_4 < 8) {
                    phi_a1 = (u32) (temp_v0_4 * phi_a1_2) >> 3;
                }
            }
        }
        temp_v1_2 = ((phi_s0->unk6 & 0xFF) * 4) + 0x800EBD1C;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk0 = 0xFB000000;
        temp_v0_5->unk4 = (s32) ((((temp_v1_2->unk2 << 8) | (temp_v1_2->unk0 << 0x18)) | (temp_v1_2->unk1 << 0x10)) | (phi_a1 & 0xFF));
        if ((phi_s0->unk8 & 8) != 0) {
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0x2000;
            temp_v0_6->unk0 = 0xB7000000;
        } else {
            temp_v0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
            temp_v0_7->unk4 = 0x2000;
            temp_v0_7->unk0 = 0xB6000000;
        }
        func_8001A620(phi_s0, arg0);
        temp_t2 = phi_s0->unk0 - 1;
        phi_s0->unk34 = (s32) (phi_s0->unk34 + 1);
        phi_s0->unk0 = temp_t2;
        if ((temp_t2 & 0xFFFF) == 0) {
            if ((phi_s0->unk8 & 1) != 0) {
                phi_s0->unk0 = (u16) phi_s0->unk2;
            }
        }
        phi_s0->unk4 = (u16) (phi_s0->unk4 + 1);
    }
    temp_s2 = phi_s2 - 1;
    phi_s0 = phi_s0 + 0x58;
    phi_s2 = temp_s2;
    if (temp_s2 != 0) {
        goto loop_1;
    }
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xBA000E02;
    *(void *)0x80087204 = (u16) (*(void *)0x80087204 + 1);
    return temp_v0;
}

s16 func_8001A620(void *arg0, ?32 arg1) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    ? sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 *temp_s3;
    f64 temp_f0;
    s16 temp_v0;
    s16 temp_v0_2;
    u32 temp_s1;
    void *temp_s4;
    f64 phi_f0;
    void *phi_s0;
    u32 phi_s1;
    u32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    *(void *)0x8008C5E0 = 0;
    if ((arg0->unk8 & 4) != 0) {
        func_80023A08(&sp6C, arg0->unk28, arg0->unk2C, arg0->unk30);
        temp_f0 = *(void *)0x800715C8;
        sp9C = arg0->unkC;
        spA0 = arg0->unk10;
        spA4 = arg0->unk14;
        func_80023DF4(&sp6C, (f32) ((f64) arg0->unk1C * temp_f0), (f32) ((f64) arg0->unk20 * temp_f0), (f32) ((f64) arg0->unk24 * temp_f0));
        phi_f0 = *(void *)0x800715D0;
    } else {
        func_80023360(&sp6C, 0, arg0->unk18, 0, *(void *)0x800715D8, arg0->unkC, arg0->unk10, arg0->unk14);
        func_80023DF4(&sp6C, (bitwise s32) arg0->unk1C, (bitwise s32) arg0->unk20, (bitwise s32) arg0->unk24);
        phi_f0 = *(void *)0x800715E0;
    }
    temp_s3 = &sp60;
    sp60 = (f32) ((f64) arg0->unk1C * phi_f0);
    sp64 = (f32) ((f64) arg0->unk20 * phi_f0);
    sp68 = (f32) ((f64) arg0->unk24 * phi_f0);
    temp_v0 = arg0->unk38;
    temp_s4 = arg0->unk3C;
    phi_s0 = temp_s4;
    phi_s1 = 0U;
    phi_return = temp_v0;
    phi_v0 = (u32) temp_v0;
    phi_return_2 = temp_v0;
    if (temp_v0 != 0) {
loop_4:
        if (phi_s0->unk14 == 0) {
            func_8001DC78(&sp6C, subroutine_arg1, (bitwise s32) temp_s3[1], (bitwise s32) temp_s3[2], 0, phi_s1, arg0->unk34, 0, arg0 + 0x38, temp_s4, arg1);
            temp_v0_2 = arg0->unk38;
            phi_v0 = (u32) temp_v0_2;
            phi_return_2 = temp_v0_2;
        }
        temp_s1 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1;
        phi_return = phi_return_2;
        if (temp_s1 < phi_v0) {
            goto loop_4;
        }
    }
    return phi_return;
}

void *func_8001A834(void *arg0) {
    s32 spC0;
    s32 spB8;
    void *spA0;
    void *sp70;
    u32 sp14;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_t6_3;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_v0;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 temp_v0_11;
    u32 temp_v0_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t3;
    void *temp_t6_2;
    void *temp_t8_2;
    void *temp_v0_10;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_28;
    void *temp_v0_29;
    void *temp_v0_30;
    void *temp_v0_31;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_a1;
    s32 phi_t4;
    s32 phi_t2;
    u32 phi_t5;
    u32 phi_t2_2;
    u32 phi_t1;
    u32 phi_t2_3;
    u32 phi_t1_2;
    void *phi_v1;
    s32 phi_a1_2;
    void *phi_return;

    if (arg0->unk4C != 0) {
        temp_t3 = arg0 + 0x44;
        phi_a1 = 0;
        if ((arg0->unk8 & 0x20) != 0) {
            phi_a1 = 0x20000;
        }
        temp_v0 = temp_t3->unk0;
        temp_v1 = temp_v0 & 1;
        temp_t3->unkC = (s16) (temp_t3->unkC + temp_t3->unk10);
        temp_t3->unkE = (s16) (temp_t3->unkE + temp_t3->unk12);
        temp_t4 = temp_t3->unk8;
        phi_t5 = 0x20U;
        if (temp_v1 != 0) {
            phi_t5 = 0x10U;
        }
        if (temp_v1 != 0) {
            spC0 = 4;
        } else {
            spC0 = 5;
        }
        if ((temp_v0 & 4) != 0) {
            phi_t4 = temp_t4 + ((((s32) arg0->unk4 >> temp_t3->unk4) * phi_t5) * phi_t5);
        } else {
            phi_t4 = temp_t4;
            if ((temp_v0 & 8) != 0) {
                phi_t4 = temp_t4 + (((((s32) arg0->unk4 >> temp_t3->unk4) & temp_t3->unk2) * phi_t5) * phi_t5);
            }
        }
        if ((temp_v0 & 0x10) != 0) {
            phi_t2 = 1;
        } else {
            phi_t2 = 0;
        }
        spB8 = phi_a1;
        if ((temp_v0 & 2) != 0) {
            temp_a0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
            temp_a0->unk4 = phi_t4;
            temp_a0->unk0 = 0xFD900000;
            temp_a1 = *(void *)0x8007B2FC;
            temp_a2 = phi_t2 & 3;
            *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
            temp_a1->unk0 = 0xF5900000;
            spC = temp_a2 << 0x12;
            temp_t6 = spC0 & 0xF;
            sp8 = temp_t6 << 0xE;
            sp4 = temp_a2 << 8;
            sp0 = temp_t6 * 0x10;
            temp_v0_2 = phi_t5 >> 3;
            temp_a1->unk4 = (s32) ((((spC | 0x7000000) | sp8) | sp4) | sp0);
            temp_t0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t0 + 8);
            temp_t0->unk4 = 0;
            temp_t0->unk0 = 0xE6000000;
            temp_t6_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t6_2 + 8);
            spA0 = temp_t6_2;
            temp_t6_2->unk0 = 0xF3000000;
            temp_t1 = ((u32) ((phi_t5 * phi_t5) + 1) >> 1) - 1;
            if (temp_t1 < 0x7FFU) {
                sp14 = temp_t1;
            } else {
                sp14 = 0x7FFU;
            }
            phi_t2_2 = temp_v0_2;
            if (temp_v0_2 == 0) {
                phi_t2_2 = 1U;
            }
            if (temp_v0_2 == 0) {
                phi_t1 = 1U;
            } else {
                phi_t1 = temp_v0_2;
            }
            spA0->unk4 = (s32) (((((u32) (phi_t2_2 + 0x7FF) / phi_t1) & 0xFFF) | 0x7000000) | ((sp14 & 0xFFF) << 0xC));
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk4 = 0;
            temp_v0_3->unk0 = 0xE7000000;
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk0 = (s32) (((((u32) (phi_t5 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000);
            temp_v0_4->unk4 = (s32) (((spC | sp8) | sp4) | sp0);
            temp_v0_5 = *(void *)0x8007B2FC;
            temp_t9 = ((phi_t5 - 1) * 4) & 0xFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk0 = 0xF2000000;
            temp_v0_5->unk4 = (s32) ((temp_t9 << 0xC) | temp_t9);
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xBA000E02;
            if ((temp_t3->unk0 & 0x40) != 0) {
                if ((arg0->unk8 & 0x20) != 0) {
                    temp_v0_7 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
                    temp_v0_7->unk0 = 0xFC629A04;
                    temp_v0_7->unk4 = 0x1F10FFFF;
                } else {
                    temp_v0_8 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
                    temp_v0_8->unk4 = 0x1F10FE3F;
                    temp_v0_8->unk0 = 0xFC629BFF;
                }
            } else {
                if ((arg0->unk8 & 0x20) != 0) {
                    temp_v0_9 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
                    temp_v0_9->unk0 = 0xFC62FE04;
                    temp_v0_9->unk4 = 0x1F10FBFF;
                } else {
                    temp_v0_10 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
                    temp_v0_10->unk4 = 0x1F10FA3F;
                    temp_v0_10->unk0 = 0xFC62FFFF;
                }
            }
        } else {
            temp_a0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0_2 + 8);
            temp_a0_2->unk4 = phi_t4;
            temp_a0_2->unk0 = 0xFD500000;
            temp_a1_2 = *(void *)0x8007B2FC;
            temp_a2_2 = phi_t2 & 3;
            *(void *)0x8007B2FC = (void *) (temp_a1_2 + 8);
            temp_a1_2->unk0 = 0xF5500000;
            spC = temp_a2_2 << 0x12;
            temp_t8 = spC0 & 0xF;
            sp8 = temp_t8 << 0xE;
            sp4 = temp_a2_2 << 8;
            sp0 = temp_t8 * 0x10;
            temp_v0_11 = phi_t5 >> 3;
            temp_a1_2->unk4 = (s32) ((((spC | 0x7000000) | sp8) | sp4) | sp0);
            temp_t0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t0_2 + 8);
            temp_t0_2->unk4 = 0;
            temp_t0_2->unk0 = 0xE6000000;
            temp_t8_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t8_2 + 8);
            sp70 = temp_t8_2;
            temp_t8_2->unk0 = 0xF3000000;
            temp_t1_2 = ((u32) ((phi_t5 * phi_t5) + 1) >> 1) - 1;
            if (temp_t1_2 < 0x7FFU) {
                sp14 = temp_t1_2;
            } else {
                sp14 = 0x7FFU;
            }
            if (temp_v0_11 == 0) {
                phi_t2_3 = 1U;
            } else {
                phi_t2_3 = temp_v0_11;
            }
            if (temp_v0_11 == 0) {
                phi_t1_2 = 1U;
            } else {
                phi_t1_2 = temp_v0_11;
            }
            sp70->unk4 = (s32) (((((u32) (phi_t2_3 + 0x7FF) / phi_t1_2) & 0xFFF) | 0x7000000) | ((sp14 & 0xFFF) << 0xC));
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk0 = (s32) (((((u32) (phi_t5 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_13->unk4 = (s32) (((spC | sp8) | sp4) | sp0);
            temp_v0_14 = *(void *)0x8007B2FC;
            temp_t6_3 = ((phi_t5 - 1) * 4) & 0xFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk0 = 0xF2000000;
            temp_v0_14->unk4 = (s32) ((temp_t6_3 << 0xC) | temp_t6_3);
            temp_v0_15 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk4 = 0x8000;
            temp_v0_15->unk0 = 0xBA000E02;
            if ((arg0->unk8 & 0x20) != 0) {
                temp_v0_16 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
                temp_v0_16->unk4 = 0xFF17FFFF;
                temp_v0_16->unk0 = 0xFC129804;
            } else {
                temp_v0_17 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
                temp_v0_17->unk4 = 0xFF17FE3F;
                temp_v0_17->unk0 = 0xFC1299FF;
            }
            temp_t2 = temp_t3->unk6;
            if (temp_t2 != *(void *)0x800883E8) {
                *(void *)0x800883E8 = temp_t2;
                temp_v0_18 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
                temp_v0_18->unk0 = 0xFD100000;
                temp_v0_18->unk4 = (s32) ((*(void *)0x800883E8 * 4) + 0x80050000)->unk-2FC0;
                temp_v0_19 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
                temp_v0_19->unk4 = 0;
                temp_v0_19->unk0 = 0xE8000000;
                temp_v0_20 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
                temp_v0_20->unk4 = 0x7000000;
                temp_v0_20->unk0 = 0xF5000100;
                temp_v0_21 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
                temp_v0_21->unk4 = 0;
                temp_v0_21->unk0 = 0xE6000000;
                temp_v0_22 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
                temp_v0_22->unk4 = 0x73FC000;
                temp_v0_22->unk0 = 0xF0000000;
                temp_v0_23 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
                temp_v0_23->unk4 = 0;
                temp_v0_23->unk0 = 0xE7000000;
            }
        }
        temp_v0_24 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
        temp_v0_24->unk0 = (s32) ((((temp_t3->unkC & 0xFFF) << 0xC) | 0xF2000000) | (temp_t3->unkE & 0xFFF));
        temp_v0_24->unk4 = (s32) ((((temp_t3->unkC + phi_t5) & 0xFFF) << 0xC) | ((temp_t3->unkE + phi_t5) & 0xFFF));
        if ((temp_t3->unk0 & 0x20) != 0) {
            temp_v0_25 = *(void *)0x8007B2FC;
            temp_t8_3 = (phi_t5 << 6) & 0xFFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
            temp_v0_25->unk0 = 0xBB000001;
            temp_v0_25->unk4 = (s32) ((temp_t8_3 << 0x10) | temp_t8_3);
            spB8 = spB8 | 0x60000;
        } else {
            temp_v0_26 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
            temp_v0_26->unk4 = 0x80008000;
            temp_v0_26->unk0 = 0xBB000001;
        }
        phi_v1 = (void *)0x8007B2FC;
        phi_a1_2 = spB8;
    } else {
        temp_v0_27 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
        temp_v0_27->unk4 = 0;
        temp_v0_27->unk0 = 0xE7000000;
        temp_v0_28 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
        temp_v0_28->unk0 = 0xFC62CBFF;
        temp_v0_28->unk4 = 0x4FFE7E38;
        temp_v0_29 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
        temp_v0_29->unk0 = 0xBB000000;
        temp_v0_29->unk4 = 0x80008000;
        phi_v1 = (void *)0x8007B2FC;
        phi_a1_2 = 0;
    }
    temp_v0_30 = *phi_v1;
    *phi_v1 = (void *) (temp_v0_30 + 8);
    temp_v0_30->unk4 = 0x60000;
    temp_v0_30->unk0 = 0xB6000000;
    phi_return = temp_v0_30;
    if (phi_a1_2 != 0) {
        temp_v0_31 = *phi_v1;
        *phi_v1 = (void *) (temp_v0_31 + 8);
        temp_v0_31->unk4 = phi_a1_2;
        temp_v0_31->unk0 = 0xB7000000;
        phi_return = temp_v0_31;
    }
    return phi_return;
}
