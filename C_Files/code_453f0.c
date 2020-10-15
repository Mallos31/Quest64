void func_800447F0(void) {
    *(void *)0x80070DC0 = 1;
    func_80033F10(0x80095648, 0x80095640, 1);
    func_80034200(0x80095648, 0, 0);
}

void func_80044840(void) {
    ? sp1C;

    if (*(void *)0x80070DC0 == 0) {
        func_800447F0();
    }
    func_80034020(0x80095648, &sp1C, 1);
}

void func_80044884(void) {
    func_80034200(0x80095648, 0, 0);
}

s32 func_800448B0(s32 arg0, s32 arg1) {
    s32 sp24;
    ? sp20;
    ? sp1C;

    sp24 = 0;
    func_80044994(arg1);
    sp24 = func_80046950(1, 0x80095660);
    func_80034020(arg0, &sp20, 1);
    sp24 = func_80046950(0, 0x80095660);
    func_80034020(arg0, &sp20, 1);
    func_80044A54(arg1, &sp1C);
    if ((sp1E & 1) != 0) {
        if ((sp1E & 2) != 0) {
            return 2;
        }
    }
    if (sp1F != 0) {
block_5:
        return 1;
    }
    if ((sp1E & 1) == 0) {
        goto block_5;
    }
    if ((sp1E & 4) != 0) {
        return 4;
    }
    return sp24;
}

void func_80044994(s32 arg0) {
    void *spC;
    s8 sp9;
    s8 sp8;
    s8 sp7;
    s8 sp6;
    s8 sp5;
    u8 sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t7;
    void *temp_t3;

    *(void *)0x80095490 = (u8)0;
    *(void *)0x8009569C = 1;
    spC = (void *)0x80095660;
    sp4 = (u8)1U;
    sp5 = (u8)3;
    sp6 = (u8)0;
    sp7 = (u8)0xFF;
    sp8 = (u8)0xFF;
    sp9 = (u8)0xFF;
    sp0 = 0;
    if (arg0 > 0) {
loop_1:
        spC->unk0 = (u8)0;
        temp_t7 = sp0 + 1;
        temp_at = temp_t7 < arg0;
        sp0 = temp_t7;
        spC = spC + 1;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    spC->unk0 = (unaligned s32) sp4.unk0;
    spC->unk4 = (u8) (&sp4)[4];
    spC->unk5 = (u8) (&sp4)[5];
    temp_t3 = spC + 6;
    spC = temp_t3;
    *temp_t3 = (u8)0xFE;
}

void func_80044A54(s32 arg0, void *arg1) {
    void *spC;
    ? sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t0;

    spC = (void *)0x80095660;
    sp0 = 0;
    if (arg0 > 0) {
loop_1:
        temp_t0 = sp0 + 1;
        temp_at = temp_t0 < arg0;
        sp0 = temp_t0;
        spC = spC + 1;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    sp4.unk0 = (?32) (unaligned s32) spC->unk0;
    sp4.unk4 = (u8) spC->unk4;
    sp4.unk5 = (u8) spC->unk5;
    arg1->unk3 = (u8) ((s32) (sp5 & 0xC0) >> 4);
    if (arg1->unk3 == 0) {
        arg1->unk0 = (s16) ((sp8 << 8) | sp7);
        arg1->unk2 = sp9;
    }
}

u16 func_80044AF0(void *arg0, s32 arg1) {
    s32 spC;
    s32 sp8;
    void *sp4;
    s32 temp_at;
    s32 temp_t4;

    sp8 = 0;
    sp4 = arg0;
    spC = 0;
    if (arg1 > 0) {
loop_1:
        temp_t4 = spC + 1;
        sp8 = sp8 + *sp4;
        temp_at = temp_t4 < arg1;
        spC = temp_t4;
        sp4 = sp4 + 1;
        sp8 = sp8 & 0xFFFF;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    return spA;
}

? func_80044B4C(s32 arg0, void *arg1, void *arg2) {
    u16 sp6;
    u32 sp0;
    u16 temp_t9;
    u32 temp_t7;

    sp6 = (u16)0U;
    *arg2 = (u16)0U;
    *arg1 = (u16) *arg2;
    sp0 = 0U;
loop_1:
    temp_t9 = *(arg0 + sp0);
    sp6 = temp_t9;
    *arg1 = (u16) (*arg1 + temp_t9);
    *arg2 = (u16) (*arg2 + ~sp6);
    temp_t7 = sp0 + 2;
    sp0 = temp_t7;
    if (temp_t7 < 0x1CU) {
        goto loop_1;
    }
    return 0;
}

s32 func_80044BB4(void *arg0, void *arg1, void *arg2) {
    s32 sp74;
    ? sp54;
    ? sp34;
    u8 sp33;
    s32 sp2C;
    s32 sp28;
    ? sp20;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    void *temp_t0;

    sp74 = 0;
    sp33 = (u8)0U;
    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp74 = func_800457DC(arg0);
        if (sp74 != 0) {
            return sp74;
        }
    }
    arg2->unk0 = -1;
    arg2->unk4 = func_8003ED90();
    arg2->unk8 = (s32) arg1->unk8;
    arg2->unkC = (s32) arg1->unkC;
    arg2->unk10 = (s32) arg1->unk10;
    arg2->unk14 = (s32) arg1->unk14;
    sp28 = 0;
loop_4:
    arg0->unk65 = (s8) sp28;
    sp74 = func_800457DC(arg0);
    if (sp74 != 0) {
        return sp74;
    }
    sp74 = func_80045850(arg0->unk4, arg0->unk8, 0, &sp54);
    if (sp74 != 0) {
        return sp74;
    }
    sp54 = (s8) (sp28 | 0x80);
    sp2C = 1;
loop_9:
    temp_t0 = sp2C + &sp54;
    *temp_t0 = (u8) ~*temp_t0;
    temp_t5 = sp2C + 1;
    sp2C = temp_t5;
    if (temp_t5 < 0x20) {
        goto loop_9;
    }
    sp74 = func_80046B80(arg0->unk4, arg0->unk8, 0, &sp54, 0);
    if (sp74 != 0) {
        return sp74;
    }
    sp74 = func_80045850(arg0->unk4, arg0->unk8, 0, &sp34);
    if (sp74 != 0) {
        return sp74;
    }
    sp2C = 0;
loop_15:
    if ((sp + sp2C)->unk54 == (sp + sp2C)->unk34) {
        temp_t4 = sp2C + 1;
        sp2C = temp_t4;
        if (temp_t4 < 0x20) {
            goto loop_15;
        }
    }
    if (sp2C == 0x20) {
        if ((sp28 > 0) && (arg0->unk65 = (u8)0, sp74 = func_800457DC(arg0), (sp74 != 0))) {
            return sp74;
        } else {
            sp28 = sp28 + 1;
            if (sp28 < 0x3E) {
                goto loop_4;
            }
        }
    }
    arg0->unk65 = (u8)0;
    sp74 = func_800457DC(arg0);
    if (sp74 != 0) {
        return sp74;
    }
    if (sp28 > 0) {
        sp33 = (u8)1U;
    } else {
        sp33 = (u8)0U;
    }
    arg2->unk18 = (s16) ((arg1->unk18 & 0xFFFE) | sp33);
    arg2->unk1A = (s8) sp28;
    arg2->unk1B = (u8) arg1->unk1B;
    func_80044B4C(arg2, arg2 + 0x1C, arg2 + 0x1E);
    sp20.unk0 = (u16)1;
    sp20.unk2 = (u16)3;
    sp20.unk4 = (u16)4;
    sp20.unk6 = (u16)6;
    sp2C = 0;
loop_31:
    sp74 = func_80046B80(arg0->unk4, arg0->unk8, (sp + (sp2C * 2))->unk20, arg2, 1);
    if (sp74 != 0) {
        return sp74;
    }
    temp_t3 = sp2C + 1;
    sp2C = temp_t3;
    if (temp_t3 < 4) {
        goto loop_31;
    }
    sp74 = func_80045850(arg0->unk4, arg0->unk8, 1, &sp54);
    if (sp74 != 0) {
        return sp74;
    }
    sp2C = 0;
loop_37:
    if (*(arg2 + sp2C) != (sp + sp2C)->unk54) {
        return 0xA;
    }
    temp_t5_2 = sp2C + 1;
    sp2C = temp_t5_2;
    if (temp_t5_2 < 0x20) {
        goto loop_37;
    }
    return 0;
}

s32 func_80044FCC(void *arg0, void *arg1) {
    ? sp30;
    s32 sp2C;
    u16 sp2A;
    u16 sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_t6;
    s32 temp_t8;

    sp2C = 0;
    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp2C = func_800457DC(arg0);
        if (sp2C != 0) {
            return sp2C;
        }
    }
    sp30.unk0 = (u16)1;
    sp30.unk2 = (u16)3;
    sp30.unk4 = (u16)4;
    sp30.unk6 = (u16)6;
    sp24 = 1;
loop_4:
    sp2C = func_80045850(arg0->unk4, arg0->unk8, (sp + (sp24 * 2))->unk30, arg1);
    if (sp2C != 0) {
        return sp2C;
    }
    func_80044B4C(arg1, &sp2A, &sp28);
    if ((arg1->unk1C != sp2A) || (arg1->unk1E != sp28)) {
        temp_t8 = sp24 + 1;
        sp24 = temp_t8;
        if (temp_t8 < 4) {
            goto loop_4;
        }
    } else {

    }
    if (sp24 == 4) {
        return 0xA;
    }
    sp20 = 0;
loop_12:
    if (sp20 != sp24) {
        sp2C = func_80046B80(arg0->unk4, arg0->unk8, (sp + (sp20 * 2))->unk30, arg1, 1);
        if (sp2C != 0) {
            return sp2C;
        }
    }
    temp_t6 = sp20 + 1;
    sp20 = temp_t6;
    if (temp_t6 < 4) {
        goto loop_12;
    }
    return 0;
}

s32 func_80045164(void *arg0) {
    s32 sp64;
    u16 sp62;
    u16 sp60;
    ? sp40;
    ? sp20;
    s32 sp1C;
    ? *sp18;
    s32 temp_t4;

    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp1C = func_800457DC(arg0);
        if (sp1C != 0) {
            return sp1C;
        }
    }
    sp1C = func_80045850(arg0->unk4, arg0->unk8, 1, &sp40);
    if (sp1C != 0) {
        return sp1C;
    }
    func_80044B4C(&sp40, &sp62, &sp60);
    sp18 = &sp40;
    if ((sp40.unk1C != sp62) || (sp40.unk1E != sp60)) {
        sp1C = func_80044FCC(arg0, sp18);
        if (sp1C == 0xA) {
            sp1C = func_80044BB4(arg0, sp18, &sp20);
            if (sp1C != 0) {
                return sp1C;
            }
            sp18 = &sp20;
        } else {
            if (sp1C != 0) {
                return sp1C;
            }
        }
    } else {

    }
    if ((sp18->unk18 & 1) == 0) {
        sp1C = func_80044BB4(arg0, sp18, &sp20);
        if (sp1C != 0) {
            return sp1C;
        }
        sp18 = &sp20;
        if ((sp20.unk18 & 1) == 0) {
            return 0xB;
        }
    }
    sp64 = 0;
loop_19:
    (arg0 + sp64)->unkC = (u8) *(sp18 + sp64);
    temp_t4 = sp64 + 1;
    sp64 = temp_t4;
    if (temp_t4 < 0x20) {
        goto loop_19;
    }
    arg0->unk4C = (?32) sp18->unk1B;
    arg0->unk64 = (u8) sp18->unk1A;
    arg0->unk60 = (s32) ((arg0->unk64 * 2) + 3);
    arg0->unk50 = 0x10;
    arg0->unk54 = 8;
    arg0->unk58 = (s32) ((arg0->unk64 * 8) + 8);
    arg0->unk5C = (s32) (arg0->unk58 + (arg0->unk64 * 8));
    sp1C = func_80045850(arg0->unk4, arg0->unk8, 7, arg0 + 0x2C);
    if (sp1C != 0) {
        return sp1C;
    }
    return 0;
}

s32 func_800453C0(void *arg0) {
    s32 sp3C;
    ? sp1C;
    s32 sp18;
    s32 temp_t9;

    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp18 = func_800457DC(arg0);
        if (sp18 != 0) {
            return sp18;
        }
    }
    sp18 = func_80045850(arg0->unk4, arg0->unk8, 1, &sp1C);
    if (sp18 != 0) {
        if (sp18 != 2) {
            return sp18;
        }
        sp18 = func_80045850(arg0->unk4, arg0->unk8, 1, &sp1C);
        if (sp18 != 0) {
            return sp18;
        }
    }
    sp3C = 0;
loop_9:
    if ((sp + sp3C)->unk1C != (arg0 + sp3C)->unkC) {
        return 2;
    }
    temp_t9 = sp3C + 1;
    sp3C = temp_t9;
    if (temp_t9 < 0x20) {
        goto loop_9;
    }
    return 0;
}

s32 func_800454BC(void *arg0, void *arg1, u8 arg2, u8 arg3) {
    u8 sp37;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    void *sp24;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    void *temp_t1;
    void *temp_t2;
    void *temp_t5_2;
    void *temp_t6;
    s32 phi_v0;

    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp2C = func_800457DC(arg0);
        if (sp2C != 0) {
            return sp2C;
        }
    }
    if ((s32) arg3 > 0) {
        sp28 = 1;
    } else {
        sp28 = arg0->unk60;
    }
    if (arg2 == 1) {
        arg1->unk1 = func_80044AF0(arg1 + (sp28 * 2), (-sp28 * 2) + 0x100);
    }
    sp30 = 0;
loop_9:
    temp_t2 = arg1 + (sp30 << 5);
    sp24 = temp_t2;
    if (arg2 == 1) {
        sp2C = func_80046B80(arg0->unk4, arg0->unk8, (arg0->unk54 + (arg3 * 8)) + sp30, temp_t2, 0);
        phi_v0 = func_80046B80(arg0->unk4, arg0->unk8, (arg0->unk58 + (arg3 * 8)) + sp30, sp24, 0);
    } else {
        phi_v0 = func_80045850(arg0->unk4, arg0->unk8, (arg0->unk54 + (arg3 * 8)) + sp30, sp24);
    }
    sp2C = phi_v0;
    if (sp2C != 0) {
        return sp2C;
    }
    temp_t5 = sp30 + 1;
    sp30 = temp_t5;
    if (temp_t5 < 8) {
        goto loop_9;
    }
    if (arg2 == 0) {
        sp37 = func_80044AF0(arg1 + (sp28 * 2), (-sp28 * 2) + 0x100);
        if (arg1->unk1 != sp37) {
            sp30 = 0;
loop_18:
            temp_t6 = arg1 + (sp30 << 5);
            sp24 = temp_t6;
            sp2C = func_80045850(arg0->unk4, arg0->unk8, (arg0->unk58 + (arg3 * 8)) + sp30, temp_t6);
            temp_t4 = sp30 + 1;
            sp30 = temp_t4;
            if (temp_t4 < 8) {
                goto loop_18;
            }
            if (arg1->unk1 != sp37) {
                return 3;
            }
            sp30 = 0;
loop_22:
            temp_t5_2 = arg1 + (sp30 << 5);
            sp24 = temp_t5_2;
            sp2C = func_80046B80(arg0->unk4, arg0->unk8, (arg0->unk54 + (arg3 * 8)) + sp30, temp_t5_2, 0);
            temp_t0 = sp30 + 1;
            sp30 = temp_t0;
            if (temp_t0 < 8) {
                goto loop_22;
            }
        } else {
            sp30 = 0;
loop_25:
            temp_t1 = arg1 + (sp30 << 5);
            sp24 = temp_t1;
            sp2C = func_80046B80(arg0->unk4, arg0->unk8, (arg0->unk58 + (arg3 * 8)) + sp30, temp_t1, 0);
            temp_t3 = sp30 + 1;
            sp30 = temp_t3;
            if (temp_t3 < 8) {
                goto loop_25;
            }
        }
    }
    return 0;
}

s32 func_800457DC(void *arg0) {
    ? sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_t1;
    s32 temp_v0;

    sp20 = 0;
    sp24 = 0;
loop_1:
    (sp + sp24)->unk28 = (u8) arg0->unk65;
    temp_t1 = sp24 + 1;
    sp24 = temp_t1;
    if (temp_t1 < 0x20) {
        goto loop_1;
    }
    temp_v0 = func_80046B80(arg0->unk4, arg0->unk8, 0x400, &sp28, 0);
    sp20 = temp_v0;
    return temp_v0;
}
