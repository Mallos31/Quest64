s32 func_80045BB0(void *arg0) {
    s32 sp484;
    s32 sp480;
    u16 sp47C;
    ? sp37C;
    ? sp27C;
    s16 sp266;
    s8 sp264;
    u16 sp262;
    u16 sp260;
    s32 sp25C;
    ? sp23C;
    ? sp38;
    s32 sp34;
    u8 sp33;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    u8 sp23;
    ? sp20;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t6_2;
    s32 temp_t8;
    u8 temp_t1;
    u8 temp_t6;
    u8 temp_t9_2;
    void *temp_t7;
    void *temp_t9;

    sp34 = 0;
    sp480 = func_800453C0(arg0);
    if (sp480 == 2) {
        sp480 = func_80045164(arg0);
    }
    if (sp480 != 0) {
        return sp480;
    }
    sp480 = func_80046274(arg0, &sp38);
    if (sp480 != 0) {
        return sp480;
    }
    sp484 = 0;
    if (arg0->unk50 > 0) {
loop_7:
        sp480 = func_80045850(arg0->unk4, arg0->unk8, arg0->unk5C + sp484, &sp25C);
        if (sp480 != 0) {
            return sp480;
        }
        if ((sp260 != 0) && (sp25C != 0)) {
            sp47C = sp262;
            sp2C = 0;
            sp28 = 0;
            sp33 = (u8)0xFFU;
            if ((s32) sp47C >= arg0->unk60) {
                if ((s32) (u8) sp47C < (s32) arg0->unk64) {
                    if ((s32) sp47D > 0) {
                        if ((s32) sp47D < 0x80) {
loop_15:
                            temp_t6 = (u8) sp47C;
                            if (sp33 != temp_t6) {
                                sp33 = temp_t6;
                                sp480 = func_800454BC(arg0, &sp27C, 0, temp_t6);
                                if (sp480 != 0) {
                                    if (sp480 != 3) {
                                        return sp480;
                                    }
                                }
                            }
                            sp2C = func_80046428(arg0, subroutine_arg1, &sp38) - sp28;
                            if (sp2C == 0) {
                                sp28 = 1;
                                sp47C = (u16) *((sp47D * 2) + &sp27C);
                                if ((s32) sp47C >= arg0->unk60) {
                                    if ((s32) (u8) sp47C < (s32) arg0->unk64) {
                                        if ((s32) sp47D > 0) {
                                            if ((s32) sp47D < 0x80) {
                                                goto loop_15;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if ((sp2C != 0) || (sp47C != 1)) {
                sp260 = (u16)0U;
                sp25C = 0;
                sp262 = (u16)0U;
                sp264 = (u8)0;
                sp266 = (u16)0;
                if (arg0->unk65 != 0) {
                    arg0->unk65 = (u8)0U;
                    sp480 = func_800457DC(arg0);
                    if (sp480 != 0) {
                        return sp480;
                    }
                }
                sp480 = func_80046B80(arg0->unk4, arg0->unk8, arg0->unk5C + sp484, &sp25C, 0);
                if (sp480 != 0) {
                    return sp480;
                }
                sp34 = sp34 + 1;
            } else {

            }
        } else {
            if ((sp260 != 0) || (sp25C != 0)) {
                sp260 = (u16)0U;
                sp25C = 0;
                sp262 = (u16)0U;
                sp264 = (u8)0;
                sp266 = (u16)0;
                if (arg0->unk65 != 0) {
                    arg0->unk65 = (u8)0U;
                    sp480 = func_800457DC(arg0);
                    if (sp480 != 0) {
                        return sp480;
                    }
                }
                sp480 = func_80046B80(arg0->unk4, arg0->unk8, arg0->unk5C + sp484, &sp25C, 0);
                if (sp480 != 0) {
                    return sp480;
                }
                sp34 = sp34 + 1;
            } else {

            }
        }
        temp_t0 = sp484 + 1;
        sp484 = temp_t0;
        if (temp_t0 < arg0->unk50) {
            goto loop_7;
        }
    }
    sp484 = 0;
    if (arg0->unk50 > 0) {
loop_42:
        sp480 = func_80045850(arg0->unk4, arg0->unk8, arg0->unk5C + sp484, &sp25C);
        if (sp480 != 0) {
            return sp480;
        }
        if (((sp260 != 0) && (sp25C != 0)) && ((s32) sp262 >= (s32) arg0->unk62)) {
            (sp + (sp484 * 2))->unk23C = sp262;
        } else {
            (sp + (sp484 * 2))->unk23C = (u16)0;
        }
        temp_t4 = sp484 + 1;
        sp484 = temp_t4;
        if (temp_t4 < arg0->unk50) {
            goto loop_42;
        }
    }
    sp33 = (u8)0U;
    if ((s32) arg0->unk64 > 0) {
loop_51:
        sp480 = func_800454BC(arg0, &sp27C, 0, sp33);
        if (sp480 != 0) {
            if (sp480 != 3) {
                return sp480;
            }
        }
        if ((s32) sp33 > 0) {
            sp24 = 1;
        } else {
            sp24 = arg0->unk60;
        }
        sp484 = 0;
        if (sp24 > 0) {
loop_58:
            temp_t5 = sp484 * 2;
            (sp + temp_t5)->unk37C = (u16) (sp + temp_t5)->unk27C;
            temp_t8 = sp484 + 1;
            sp484 = temp_t8;
            if (temp_t8 < sp24) {
                goto loop_58;
            }
        }
        if (sp484 < 0x80) {
loop_60:
            (sp + (sp484 * 2))->unk37C = (u16)3;
            temp_t6_2 = sp484 + 1;
            sp484 = temp_t6_2;
            if (temp_t6_2 < 0x80) {
                goto loop_60;
            }
        }
        sp484 = 0;
        if (arg0->unk50 > 0) {
loop_62:
            temp_t7 = (sp484 * 2) + &sp23C;
            if (*temp_t7 == sp33) {
                if ((s32) (u16) *temp_t7 >= (s32) arg0->unk62) {
loop_64:
                    temp_t1 = (sp + (sp484 * 2))->unk23D;
                    sp23 = temp_t1;
                    sp20 = (u16) *((temp_t1 * 2) + &sp27C);
                    *((sp23 * 2) + &sp37C) = (u16) sp20;
                    *((sp484 * 2) + &sp23C) = (u16) sp20;
                    temp_t9 = (sp484 * 2) + &sp23C;
                    if (*temp_t9 == sp33) {
                        if ((s32) (u16) *temp_t9 >= (s32) arg0->unk62) {
                            goto loop_64;
                        }
                    }
                }
            }
            temp_t0_2 = sp484 + 1;
            sp484 = temp_t0_2;
            if (temp_t0_2 < arg0->unk50) {
                goto loop_62;
            }
        }
        sp480 = func_800454BC(arg0, &sp37C, 1, sp33);
        if (sp480 != 0) {
            return sp480;
        }
        temp_t9_2 = sp33 + 1;
        sp33 = temp_t9_2;
        if ((temp_t9_2 & 0xFF) < (s32) arg0->unk64) {
            goto loop_51;
        }
    }
    if (sp34 != 0) {
        arg0->unk0 = (s32) (arg0->unk0 | 2);
    } else {
        arg0->unk0 = (s32) (arg0->unk0 & -3);
    }
    return 0;
}

s32 func_80046274(void *arg0, void *arg1) {
    s32 sp12C;
    s32 sp128;
    s32 sp124;
    u8 sp123;
    u16 sp120;
    ? sp20;
    s32 sp1C;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t7;
    s32 temp_t9;
    u8 temp_t2;
    u8 temp_t3;
    void *temp_t8;
    s32 phi_t6;
    s32 phi_t1;
    s32 phi_t4;

    sp12C = 0;
loop_1:
    (arg1 + sp12C)->unk101 = (u8)0;
    temp_t0 = sp12C + 1;
    sp12C = temp_t0;
    if (temp_t0 < 0x100) {
        goto loop_1;
    }
    arg1->unk100 = (u8)0xFF;
    sp123 = (u8)0U;
    if ((s32) arg0->unk64 > 0) {
loop_3:
        if ((s32) sp123 > 0) {
            sp124 = 1;
        } else {
            sp124 = arg0->unk60;
        }
        sp1C = func_800454BC(arg0, &sp20, 0, sp123);
        if (sp1C != 0) {
            if (sp1C != 3) {
                return sp1C;
            }
        }
        sp12C = sp124;
        if (sp124 < 0x80) {
loop_10:
            sp120 = (u16) *((sp12C * 2) + &sp20);
            if ((s32) sp120 >= arg0->unk60) {
                temp_t2 = (u8) sp120;
                if (temp_t2 != sp123) {
                    phi_t6 = (s32) sp121 >> 2;
                    if ((s32) sp121 < 0) {
                        phi_t6 = (s32) (sp121 + 3) >> 2;
                    }
                    temp_t1 = temp_t2 & 7;
                    phi_t1 = temp_t1;
                    if ((s32) temp_t2 < 0) {
                        phi_t1 = temp_t1;
                        if (temp_t1 != 0) {
                            phi_t1 = temp_t1 - 8;
                        }
                    }
                    temp_t7 = phi_t6 + (phi_t1 << 5);
                    sp128 = temp_t7;
                    temp_t8 = arg1 + temp_t7;
                    temp_t4 = sp123 & 7;
                    phi_t4 = temp_t4;
                    if ((s32) sp123 < 0) {
                        phi_t4 = temp_t4;
                        if (temp_t4 != 0) {
                            phi_t4 = temp_t4 - 8;
                        }
                    }
                    temp_t8->unk101 = (u8) (temp_t8->unk101 | (1 << phi_t4));
                }
            }
            temp_t9 = sp12C + 1;
            sp12C = temp_t9;
            if (temp_t9 < 0x80) {
                goto loop_10;
            }
        }
        temp_t3 = sp123 + 1;
        sp123 = temp_t3;
        if ((temp_t3 & 0xFF) < (s32) arg0->unk64) {
            goto loop_3;
        }
    }
    return 0;
}

s32 func_80046428(void *arg0, u8 arg1, void *arg2) {
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    u8 sp23;
    s32 sp1C;
    s32 sp18;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t9;
    u8 temp_t0;
    s32 phi_t7;
    s32 phi_t9;
    s32 phi_t4;

    sp24 = 0;
    sp18 = 0;
    phi_t7 = (s32) arg1 >> 2;
    if ((s32) arg1 < 0) {
        phi_t7 = (s32) (arg1 + 3) >> 2;
    }
    temp_t9 = arg1 & 7;
    phi_t9 = temp_t9;
    if ((s32) arg1 < 0) {
        phi_t9 = temp_t9;
        if (temp_t9 != 0) {
            phi_t9 = temp_t9 - 8;
        }
    }
    sp28 = phi_t7 + (phi_t9 << 5);
    sp23 = (u8)0U;
    if ((s32) arg0->unk64 > 0) {
loop_6:
        if ((s32) sp23 > 0) {
            sp1C = 1;
        } else {
            sp1C = arg0->unk60;
        }
        if ((sp23 != arg1) && (temp_t4 = sp23 & 7, phi_t4 = temp_t4, ((s32) sp23 < 0))) {
            phi_t4 = temp_t4;
            if (temp_t4 != 0) {
                phi_t4 = temp_t4 - 8;
            }
            if (((arg2 + sp28)->unk101 & (1 << phi_t4)) != 0) {
block_14:
                if (sp23 != arg2->unk100) {
                    sp18 = func_800454BC(arg0, arg2, 0, sp23);
                    if (sp18 != 0) {
                        if (sp18 != 3) {
                            return sp18;
                        }
                    }
                    arg2->unk100 = sp23;
                }
                sp2C = sp1C;
                if (sp24 < 2) {
                    if (sp1C < 0x80) {
loop_21:
                        if (*(arg2 + (sp2C * 2)) == (u16) arg1) {
                            sp24 = sp24 + 1;
                        }
                        temp_t4_2 = sp2C + 1;
                        sp2C = temp_t4_2;
                        if (sp24 < 2) {
                            if (temp_t4_2 < 0x80) {
                                goto loop_21;
                            }
                        }
                    }
                }
                if (sp24 >= 2) {
                    return 2;
                }
            }
        } else {
            goto block_14;
        }
        temp_t0 = sp23 + 1;
        sp23 = temp_t0;
        if ((temp_t0 & 0xFF) < (s32) arg0->unk64) {
            goto loop_6;
        }
    }
    return sp24;
}

s32 func_80046610(s32 arg0, void *arg1) {
    s32 sp3C;
    ? sp38;
    ? sp37;
    ? sp24;
    s32 sp20;
    u8 sp1F;
    s32 sp18;
    s32 temp_t5;
    s32 temp_t5_2;
    void *temp_t4;

    sp3C = 0;
    sp1F = (u8)0U;
    sp18 = 3;
    func_80044840();
loop_1:
    func_800467B0(0);
    sp3C = func_80046950(1, 0x80095660);
    func_80034020(arg0, &sp38, 1);
    sp3C = func_80046950(0, 0x80095660);
    func_80034020(arg0, &sp38, 1);
    func_80046880(&sp37, &sp24);
    sp20 = 0;
    if ((s32) *(void *)0x80095491 > 0) {
loop_2:
        if (((sp + (sp20 * 4))->unk26 & 4) == 0) {
            sp18 = sp18 - 1;
        } else {
            temp_t5 = sp20 + 1;
            sp20 = temp_t5;
            if (temp_t5 < (s32) *(void *)0x80095491) {
                goto loop_2;
            }
        }
    }
    if (*(void *)0x80095491 == sp20) {
        sp18 = 0;
    }
    if (sp18 > 0) {
        goto loop_1;
    }
    sp20 = 0;
    if ((s32) *(void *)0x80095491 > 0) {
loop_9:
        temp_t4 = (sp20 * 4) + &sp24;
        if (temp_t4->unk3 == 0) {
            if ((temp_t4->unk2 & 1) != 0) {
                sp1F = sp1F | (1 << sp20);
            }
        }
        temp_t5_2 = sp20 + 1;
        sp20 = temp_t5_2;
        if (temp_t5_2 < (s32) *(void *)0x80095491) {
            goto loop_9;
        }
    }
    func_80044884();
    *arg1 = sp1F;
    return sp3C;
}

void func_800467B0(s32 arg0) {
    void *spC;
    s8 spB;
    s8 spA;
    s8 sp9;
    s8 sp8;
    s8 sp7;
    s8 sp6;
    s8 sp5;
    s8 sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t3;
    s8 temp_a0;

    temp_a0 = arg0 & 0xFF;
    *(void *)0x80095490 = temp_a0;
    spC = (void *)0x80095660;
    *(void *)0x8009569C = 1;
    sp4 = (u8)0xFF;
    sp5 = (u8)1;
    sp6 = (u8)3;
    sp7 = temp_a0;
    sp8 = (u8)0xFF;
    sp9 = (u8)0xFF;
    spA = (u8)0xFF;
    spB = (u8)0xFF;
    sp0 = 0;
    if ((s32) *(void *)0x80095491 > 0) {
loop_1:
        spC->unk0 = (unaligned s32) sp4.unk0;
        spC->unk4 = (unaligned s32) sp4.unk4;
        temp_t3 = sp0 + 1;
        temp_at = temp_t3 < (s32) *(void *)0x80095491;
        sp0 = temp_t3;
        spC = spC + 8;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    spC->unk0 = (u8)0xFE;
}

void func_80046880(void *arg0, void *arg1) {
    void *sp14;
    ? spC;
    s32 sp8;
    u8 sp7;
    s32 temp_at;
    s32 temp_t7;
    void *phi_a1;

    sp7 = (u8)0U;
    sp14 = (void *)0x80095660;
    sp8 = 0;
    phi_a1 = arg1;
    if ((s32) *(void *)0x80095491 > 0) {
loop_1:
        spC.unk0 = (?32) (unaligned s32) sp14->unk0;
        spC.unk4 = (?32) (unaligned s32) sp14->unk4;
        phi_a1->unk3 = (u8) ((s32) (spE & 0xC0) >> 4);
        if (phi_a1->unk3 == 0) {
            phi_a1->unk0 = (s16) ((sp11 << 8) | sp10);
            phi_a1->unk2 = sp12;
            sp7 = sp7 | (1 << sp8);
        }
        temp_t7 = sp8 + 1;
        temp_at = temp_t7 < (s32) *(void *)0x80095491;
        sp14 = sp14 + 8;
        sp8 = temp_t7;
        phi_a1 = phi_a1 + 4;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    *arg0 = sp7;
}

? func_80046950(s32 arg0, s32 arg1) {
    if (func_80047180() != 0) {
        return -1;
    }
    if (arg0 == 1) {
        func_80034E50(arg1, 0x40);
    }
    *(void *)0xA4800000 = func_80034DD0(arg1);
    if (arg0 == 0) {
        *(void *)0xA4800004 = 0x1FC007C0;
    } else {
        *(void *)0xA4800010 = 0x1FC007C0;
    }
    if (arg0 == 0) {
        func_80036460(arg1, 0x40);
    }
    return 0;
}
