? func_800408D0(void *arg0, s32 arg1, ?32 arg2) {
    if (arg1 == 2) {
        *(arg0->unk1C + (arg0->unk14 * 4)) = arg2;
        arg0->unk14 = (s32) (arg0->unk14 + 1);
    }
    return 0;
}

void *func_80040900(void *arg0, ? arg1, s32 arg2, ? arg3, void *arg4) {
    s32 temp_s0;
    s32 temp_v0;
    void *temp_a0;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_v0_2;
    void *phi_s1;
    void *phi_s3;
    s32 phi_s0;
    void *phi_s3_2;

    temp_v0 = arg2 * 2;
    arg4->unk0 = 0x2000440;
    arg4->unk4 = temp_v0;
    arg4->unk8 = 0x2000580;
    arg4->unkC = temp_v0;
    temp_s3 = arg4 + 0x10;
    phi_s3_2 = temp_s3;
    if (arg0->unk14 > 0) {
        phi_s1 = arg0->unk1C;
        phi_s3 = temp_s3;
        phi_s0 = 0;
loop_2:
        temp_a0 = *phi_s1;
        temp_v0_2 = temp_a0->unk4(temp_a0, arg1, arg2, arg3, phi_s3);
        temp_v0_2->unk0 = 0x8000000;
        temp_v0_2->unk4 = (s32) (temp_v0 & 0xFFFF);
        temp_v0_2->unkC = 0x6C00440;
        temp_v0_2->unk8 = 0xC007FFF;
        temp_v0_2->unk14 = 0x8000580;
        temp_v0_2->unk10 = 0xC007FFF;
        temp_s0 = phi_s0 + 1;
        temp_s3_2 = temp_v0_2 + 0x18;
        phi_s1 = phi_s1 + 4;
        phi_s3 = temp_s3_2;
        phi_s0 = temp_s0;
        phi_s3_2 = temp_s3_2;
        if (temp_s0 < arg0->unk14) {
            goto loop_2;
        }
    }
    return phi_s3_2;
}

void func_80040A20(void *arg0, s32 arg1, void *arg2) {
    u8 temp_v0;
    u8 temp_v1_3;
    void *temp_a0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_4;
    void *temp_v1_5;

    if (arg1 != 4) {
        if (arg1 == 5) {
            arg0->unk28 = arg2;
            arg0->unk38 = 0;
            arg0->unk44 = (s32) arg2->unk0;
            temp_v0 = arg2->unk8;
            if (temp_v0 == 0) {
                temp_v0_3 = arg0->unk28;
                arg0->unk4 = 0x800410CC;
                temp_v0_3->unk4 = (s32) (((s32) temp_v0_3->unk4 / 9) * 9);
                temp_v0_4 = arg0->unk28;
                temp_a0 = temp_v0_4->unk10;
                arg0->unk2C = (s32) ((temp_a0->unk0 * 0x10) * temp_a0->unk4);
                temp_v1_2 = temp_v0_4->unkC;
                if (temp_v1_2 == 0) {
                    arg0->unk24 = 0;
                    arg0->unk20 = 0;
                    arg0->unk1C = 0;
                    return;
                }
                arg0->unk1C = (s32) temp_v1_2->unk0;
                arg0->unk20 = (s32) temp_v0_4->unkC->unk4;
                arg0->unk24 = (s32) temp_v0_4->unkC->unk8;
                func_80048A40(temp_v0_4->unkC + 0xC, arg0->unk18, 0x20, arg0);
                return;
            }
            if (temp_v0 == 1) {
                temp_v0_2 = arg0->unk28;
                arg0->unk4 = 0x80040BF4;
                temp_v1 = temp_v0_2->unkC;
                if (temp_v1 == 0) {
                    arg0->unk24 = 0;
                    arg0->unk20 = 0;
                    arg0->unk1C = 0;
                    return;
                }
                arg0->unk1C = (s32) temp_v1->unk0;
                arg0->unk20 = (s32) temp_v0_2->unkC->unk4;
                arg0->unk24 = (s32) temp_v0_2->unkC->unk8;
                return;
            }
            return;
        }
    } else {
        temp_v0_5 = arg0->unk28;
        arg0->unk3C = 0;
        arg0->unk40 = 1;
        arg0->unk38 = 0;
        if (temp_v0_5 != 0) {
            arg0->unk44 = (s32) temp_v0_5->unk0;
            temp_v1_3 = temp_v0_5->unk8;
            if (temp_v1_3 == 0) {
                temp_v1_4 = temp_v0_5->unkC;
                if (temp_v1_4 != 0) {
                    arg0->unk24 = (s32) temp_v1_4->unk8;
                    return;
                }
            } else {
                if (1 == temp_v1_3) {
                    temp_v1_5 = temp_v0_5->unkC;
                    if (temp_v1_5 != 0) {
                        arg0->unk24 = (s32) temp_v1_5->unk8;
                    }
                }
            }
        }
    }
}

void *func_80040BF4(void *arg0, void *arg1, s32 arg2, s32 arg3, void *arg4) {
    void *sp4C;
    s32 sp48;
    s32 sp2C;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v0_8;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 temp_v1_5;
    u32 temp_s3;
    u32 temp_v0_5;
    u32 temp_v1;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_t1_3;
    void *temp_v0_7;
    void *temp_v0_9;
    void *temp_v1_3;
    s32 phi_a2;
    u32 phi_s3;
    s32 phi_s2;
    void *phi_t1;
    s32 phi_t0;
    s32 phi_s1;
    s32 phi_s2_2;
    s32 phi_a3;
    s32 phi_a2_2;
    u32 phi_s3_2;
    s32 phi_s2_3;
    s32 phi_s2_4;
    s32 phi_a2_3;
    void *phi_t2;
    s32 phi_v1;
    void *phi_t1_2;
    void *phi_t1_3;
    void *phi_t1_4;
    void *phi_t1_5;

    if (arg2 == 0) {
        return arg4;
    }
    temp_v0 = arg0->unk38;
    temp_v1 = arg0->unk20;
    if ((temp_v1 < (u32) (temp_v0 + arg2)) && (temp_s2 = temp_v1 - temp_v0, (arg0->unk24 != 0))) {
        temp_s1 = temp_s2 * 2;
        if (temp_s2 > 0) {
            arg1 = arg1;
            temp_v0_2 = arg0->unk30(arg0->unk44, temp_s1, arg0->unk34);
            temp_a2 = temp_v0_2 & 7;
            temp_a3 = temp_s1 + temp_a2;
            temp_t1 = arg4 + 8;
            temp_t3 = temp_v0_2 - temp_a2;
            arg4->unk4 = (s32) (((temp_a3 - (temp_a3 & 7)) + 8) & 0xFFFF);
            arg4->unk0 = (s32) ((*arg1 & 0xFFFF) | 0x8000000);
            temp_t1->unk4 = temp_t3;
            temp_t1->unk0 = 0x4000000;
            phi_a2 = temp_a2;
            phi_t1_5 = temp_t1 + 8;
            phi_a3 = temp_a3;
        } else {
            phi_a2 = 0;
            phi_t1_5 = arg4;
            phi_a3 = arg3;
        }
        *arg1 = (s16) (*arg1 + phi_a2);
        temp_v0_3 = arg0->unk1C;
        arg0->unk38 = temp_v0_3;
        arg0->unk44 = (s32) (arg0->unk28->unk0 + (temp_v0_3 * 2));
        phi_s3 = (u32) arg2;
        phi_s2 = temp_s2;
        phi_t1 = phi_t1_5;
        phi_t0 = (s32) *arg1;
        phi_s1 = temp_s1;
        phi_s3_2 = (u32) arg2;
        phi_t1_3 = phi_t1_5;
        if (temp_s2 < arg2) {
loop_8:
            temp_v0_4 = arg0->unk24;
            temp_t0 = phi_t0 + phi_s1;
            temp_s3 = phi_s3 - phi_s2;
            if (temp_v0_4 != -1) {
                if (temp_v0_4 != 0) {
                    arg0->unk24 = (s32) (temp_v0_4 - 1);
                }
            }
            temp_v0_5 = arg0->unk20 - arg0->unk1C;
            phi_s2_2 = (s32) temp_v0_5;
            if (temp_s3 < temp_v0_5) {
                phi_s2_2 = (s32) temp_s3;
            }
            sp4C = phi_t1;
            sp2C = temp_t0;
            temp_s1_2 = phi_s2_2 * 2;
            temp_v0_6 = arg0->unk30(arg0->unk44, temp_s1_2, arg0->unk34, phi_a3);
            temp_a1 = temp_v0_6 & 7;
            temp_t1_2 = phi_t1;
            temp_v1_2 = temp_t0 & 7;
            temp_a3_2 = temp_s1_2 + temp_a1;
            if (temp_v1_2 != 0) {
                phi_a2_2 = 8 - temp_v1_2;
            } else {
                phi_a2_2 = 0;
            }
            temp_v1_3 = temp_t1_2;
            temp_t1_2 = temp_t1_2 + 8;
            temp_v1_3->unk4 = (s32) (((temp_a3_2 - (temp_a3_2 & 7)) + 8) & 0xFFFF);
            temp_v1_3->unk0 = (s32) (((temp_t0 + phi_a2_2) & 0xFFFF) | 0x8000000);
            temp_t1_2->unk0 = 0x4000000;
            temp_t1_2->unk4 = (s32) (temp_v0_6 - temp_a1);
            temp_t1_2 = temp_t1_2 + 8;
            if ((temp_a1 != 0) || (phi_t1_4 = temp_t1_2, (phi_a2_2 != 0))) {
                temp_t1_2->unk0 = (s32) ((((temp_t0 + temp_a1) + phi_a2_2) & 0xFFFFFF) | 0xA000000);
                temp_t1_2->unk4 = (s32) ((temp_t0 << 0x10) | (temp_s1_2 & 0xFFFF));
                phi_t1_4 = temp_t1_2 + 8;
            } else {

            }
            phi_s3 = temp_s3;
            phi_s2 = phi_s2_2;
            phi_t1 = phi_t1_4;
            phi_t0 = temp_t0;
            phi_s1 = temp_s1_2;
            phi_a3 = temp_a3_2;
            phi_s3_2 = temp_s3;
            phi_t1_3 = phi_t1_4;
            if (phi_s2_2 < (s32) temp_s3) {
                goto loop_8;
            }
        }
        arg0->unk38 = (s32) (arg0->unk38 + phi_s3_2);
        arg0->unk44 = (s32) (arg0->unk44 + (phi_s3_2 * 2));
    } else {
        temp_v0_7 = arg0->unk28;
        temp_a0 = arg0->unk44;
        temp_s1_3 = arg2 * 2;
        temp_v1_4 = temp_a0 + temp_s1_3;
        temp_s2_2 = (temp_v1_4 - temp_v0_7->unk0) - temp_v0_7->unk4;
        phi_s2_3 = temp_s2_2;
        if (temp_s2_2 < 0) {
            phi_s2_3 = 0;
        }
        phi_s2_4 = phi_s2_3;
        if (temp_s1_3 < phi_s2_3) {
            phi_s2_4 = temp_s1_3;
        }
        if (phi_s2_4 < temp_s1_3) {
            phi_a2_3 = 0;
            phi_t1_2 = arg4;
            if (arg2 > 0) {
                temp_a1_2 = temp_s1_3 - phi_s2_4;
                sp48 = temp_a1_2;
                arg1 = arg1;
                temp_v0_8 = arg0->unk30(temp_a0, temp_a1_2, arg0->unk34);
                temp_a2_2 = temp_v0_8 & 7;
                temp_a3_3 = sp48 + temp_a2_2;
                temp_t1_3 = arg4 + 8;
                temp_t6 = temp_v0_8 - temp_a2_2;
                arg4->unk4 = (s32) (((temp_a3_3 - (temp_a3_3 & 7)) + 8) & 0xFFFF);
                arg4->unk0 = (s32) ((*arg1 & 0xFFFF) | 0x8000000);
                temp_t1_3->unk4 = temp_t6;
                temp_t1_3->unk0 = 0x4000000;
                phi_a2_3 = temp_a2_2;
                phi_t1_2 = temp_t1_3 + 8;
            }
            *arg1 = (s16) (*arg1 + phi_a2_3);
            arg0->unk38 = (s32) (arg0->unk38 + arg2);
            arg0->unk44 = (s32) (arg0->unk44 + temp_s1_3);
            phi_t2 = arg1;
        } else {
            arg0->unk44 = temp_v1_4;
            phi_t2 = arg1;
            phi_t1_2 = arg4;
        }
        temp_v1_5 = temp_s1_3 - phi_s2_4;
        phi_t1_3 = phi_t1_2;
        if (phi_s2_4 != 0) {
            temp_v0_9 = phi_t1_2;
            phi_v1 = temp_v1_5;
            if (temp_v1_5 < 0) {
                phi_v1 = 0;
            }
            temp_v0_9->unk0 = (s32) (((*phi_t2 + phi_v1) & 0xFFFFFF) | 0x2000000);
            temp_v0_9->unk4 = phi_s2_4;
            phi_t1_3 = phi_t1_2 + 8;
        }
    }
    return phi_t1_3;
}

void *func_80040FA0(void) {
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_s0;
    s32 phi_a2;
    void *phi_s0_2;

    temp_s3 = (s32) (saved_reg_s3 << 0x10) >> 0x10;
    if (saved_reg_s1 > 0) {
        temp_v0 = saved_reg_s2->unk30(saved_reg_s2->unk44, saved_reg_s1, saved_reg_s2->unk34);
        temp_a2 = temp_v0 & 7;
        temp_s1 = saved_reg_s1 + temp_a2;
        temp_t6 = (temp_s1 - (temp_s1 & 7)) + 8;
        saved_reg_s0->unk0 = (s32) ((temp_s3 & 0xFFFF) | 0x8000000);
        temp_s0_2 = saved_reg_s0 + 8;
        saved_reg_s0->unk4 = (s32) (temp_t6 & 0xFFFF);
        temp_s0_2->unk0 = 0x4000000;
        temp_s0_2->unk4 = (s32) (temp_v0 - temp_a2);
        phi_s0 = temp_s0_2 + 8;
        phi_a2 = temp_a2;
    } else {
        phi_s0 = saved_reg_s0;
        phi_a2 = 0;
    }
    temp_v0_2 = phi_s0;
    phi_s0_2 = phi_s0;
    if ((saved_reg_s4 & 2) != 0) {
        temp_v0_2->unk0 = 0xF000000;
        temp_v0_2->unk4 = (s32) (saved_reg_s2->unk18 & 0x1FFFFFFF);
        phi_s0_2 = phi_s0 + 8;
    }
    temp_v1 = phi_s0_2;
    temp_v1->unk0 = (s32) (((temp_s3 + phi_a2) & 0xFFFF) | 0x8000000);
    temp_s0 = phi_s0_2 + 8;
    temp_v1->unk4 = (s32) ((((s32) (saved_reg_s5 << 0x10) >> 0x10) << 0x10) | ((saved_reg_s6 * 2) & 0xFFFF));
    temp_s0->unk0 = (s32) (((saved_reg_s4 & 0xFF) << 0x10) | 0x1000000);
    temp_s0->unk4 = (s32) (saved_reg_s2->unk14 & 0x1FFFFFFF);
    saved_reg_s2->unk40 = 0;
    return temp_s0 + 8;
}

void *func_800410CC(void *arg0, void *arg1, s32 arg2, ? arg3, void *arg4) {
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp80;
    s32 sp7C;
    s32 sp5C;
    s32 sp50;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    u32 temp_a0;
    u32 temp_t0;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v1;
    void *temp_a3;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    s32 phi_t1;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_a0;
    s32 phi_a1_2;
    s32 phi_a1_3;
    s32 phi_a0_2;
    s32 phi_fp;
    s32 phi_a2_2;
    s32 phi_v1;
    s32 phi_t1_2;
    s32 phi_v1_2;
    s32 phi_a0_3;
    s32 phi_t5;
    void *phi_t2;
    void *phi_a3;
    s32 phi_v1_3;
    void *phi_t2_2;
    void *phi_t2_3;

    temp_a3 = arg1;
    if (arg2 == 0) {
        return arg4;
    }
    arg4->unk0 = (s32) ((arg0->unk2C & 0xFFFFFF) | 0xB000000);
    arg4->unk4 = (s32) ((arg0->unk28->unk10 + 8) & 0x1FFFFFFF);
    temp_v1 = arg0->unk38;
    temp_a0 = arg0->unk20;
    temp_t1 = temp_a0 < (u32) (temp_v1 + arg2);
    phi_t1 = temp_t1;
    if (temp_t1 != 0) {
        phi_t1 = arg0->unk24 != 0;
    }
    phi_a1 = arg2;
    if (phi_t1 != 0) {
        phi_a1 = temp_a0 - temp_v1;
    }
    temp_v1_2 = arg0->unk3C;
    phi_a2 = 0;
    if (temp_v1_2 != 0) {
        phi_a2 = 0x10 - temp_v1_2;
    }
    temp_a0_2 = phi_a1 - phi_a2;
    phi_a0 = temp_a0_2;
    if (temp_a0_2 < 0) {
        phi_a0 = 0;
    }
    if (phi_t1 != 0) {
        temp_t8 = (s32) (phi_a0 + 0xF) >> 4;
        temp_t1_2 = temp_t8 * 9;
        sp5C = temp_t1_2;
        arg2 = arg2;
        arg1 = temp_a3;
        sp8C = phi_a1;
        temp_v1_3 = arg0->unk3C;
        temp_a1 = phi_a1;
        temp_t2 = func_80040FA0(phi_a0, phi_a1, phi_a2, temp_a3);
        if (temp_v1_3 != 0) {
            *arg1 = (s16) (*arg1 + (temp_v1_3 * 2));
        } else {
            *arg1 = (s16) (*arg1 + 0x20);
        }
        temp_v0 = arg0->unk1C;
        arg0->unk3C = (s32) (temp_v0 & 0xF);
        arg0->unk44 = (s32) ((arg0->unk28->unk0 + ((temp_v0 >> 4) * 9)) + 9);
        arg0->unk38 = temp_v0;
        phi_t1_2 = temp_t1_2;
        phi_t2_2 = temp_t2;
        if (temp_a1 < arg2) {
            phi_a1_2 = temp_a1;
            phi_fp = temp_t8;
            phi_a2_2 = (s32) *arg1;
            phi_v1 = temp_a1 * 2;
loop_16:
            temp_v0_2 = arg0->unk24;
            temp_t7 = (((phi_fp + 1) << 5) + phi_a2_2) & -0x20;
            temp_t0 = arg2 - phi_a1_2;
            temp_a2 = phi_a2_2 + phi_v1;
            if (temp_v0_2 != -1) {
                if (temp_v0_2 != 0) {
                    arg0->unk24 = (s32) (temp_v0_2 - 1);
                }
            }
            temp_v0_3 = arg0->unk20 - arg0->unk1C;
            if (temp_t0 < temp_v0_3) {
                phi_a1_3 = (s32) temp_t0;
            } else {
                phi_a1_3 = (s32) temp_v0_3;
            }
            temp_a0_3 = (phi_a1_3 + arg0->unk3C) - 0x10;
            phi_a0_2 = temp_a0_3;
            if (temp_a0_3 < 0) {
                phi_a0_2 = 0;
            }
            temp_t9 = (s32) (phi_a0_2 + 0xF) >> 4;
            temp_t1_3 = temp_t9 * 9;
            sp5C = temp_t1_3;
            arg2 = (s32) temp_t0;
            sp88 = temp_t7;
            sp80 = temp_a2;
            sp8C = phi_a1_3;
            temp_v0_4 = func_80040FA0(phi_a0_2, phi_a1_3, temp_a2, temp_t7);
            temp_a1_2 = phi_a1_3;
            temp_v1_4 = temp_a1_2 * 2;
            temp_v0_4->unk0 = (s32) ((((arg0->unk3C * 2) + temp_t7) & 0xFFFFFF) | 0xA000000);
            temp_v0_4->unk4 = (s32) ((temp_a2 << 0x10) | (temp_v1_4 & 0xFFFF));
            phi_a1_2 = temp_a1_2;
            phi_fp = temp_t9;
            phi_a2_2 = temp_a2;
            phi_v1 = temp_v1_4;
            phi_t1_2 = temp_t1_3;
            phi_t2_2 = temp_v0_4 + 8;
            if (temp_a1_2 < arg2) {
                goto loop_16;
            }
        }
        arg0->unk3C = (s32) ((arg0->unk3C + arg2) & 0xF);
        arg0->unk38 = (u32) (arg0->unk38 + arg2);
        arg0->unk44 = (s32) (arg0->unk44 + phi_t1_2);
        return phi_t2_2;
    }
    temp_v0_5 = arg0->unk28;
    temp_t7_2 = (s32) (phi_a0 + 0xF) >> 4;
    temp_t1_4 = temp_t7_2 * 9;
    temp_t3 = arg0->unk44 + temp_t1_4;
    temp_v1_5 = (temp_t3 - temp_v0_5->unk0) - temp_v0_5->unk4;
    temp_a1_3 = temp_t7_2 * 0x10;
    phi_v1_2 = temp_v1_5;
    if (temp_v1_5 < 0) {
        phi_v1_2 = 0;
    }
    temp_a0_4 = (phi_v1_2 / 9) * 0x10;
    temp_t4 = temp_a1_3 + phi_a2;
    phi_a0_3 = temp_a0_4;
    if (temp_t4 < temp_a0_4) {
        phi_a0_3 = temp_t4;
    }
    if ((phi_a0_3 - (phi_a0_3 & 0xF)) < arg2) {
        sp7C = 1;
        sp50 = temp_t4;
        sp5C = temp_t1_4;
        arg2 = arg2;
        arg1 = temp_a3;
        sp90 = phi_a0_3;
        temp_v1_6 = arg0->unk3C;
        temp_t2_2 = func_80040FA0(phi_a0_3, temp_a1_3, temp_t1_4 - phi_v1_2, temp_a3);
        if (temp_v1_6 != 0) {
            *arg1 = (s16) (*arg1 + (temp_v1_6 * 2));
        } else {
            *arg1 = (s16) (*arg1 + 0x20);
        }
        arg0->unk3C = (s32) ((arg0->unk3C + arg2) & 0xF);
        arg0->unk38 = (u32) (arg0->unk38 + arg2);
        arg0->unk44 = (s32) (arg0->unk44 + temp_t1_4);
        phi_t5 = 1;
        phi_t2 = temp_t2_2;
        phi_a3 = arg1;
    } else {
        arg0->unk3C = 0;
        arg0->unk44 = temp_t3;
        phi_t5 = 0;
        phi_t2 = arg4 + 8;
        phi_a3 = temp_a3;
    }
    temp_v0_6 = phi_t2;
    phi_t2_3 = phi_t2;
    if (phi_a0_3 != 0) {
        arg0->unk3C = 0;
        if (phi_t5 != 0) {
            phi_v1_3 = ((temp_a1_3 + phi_a2) - phi_a0_3) * 2;
        } else {
            phi_v1_3 = 0;
        }
        temp_v0_6->unk4 = (s32) (phi_a0_3 * 2);
        temp_v0_6->unk0 = (s32) (((*phi_a3 + phi_v1_3) & 0xFFFFFF) | 0x2000000);
        phi_t2_3 = phi_t2 + 8;
    }
    return phi_t2_3;
}

Failed to decompile function func_80041570:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void *func_8004165C(void *arg0, void *arg1, s32 arg2, void *arg4) {
    void *sp48;
    s16 sp46;
    void *sp28;
    f32 temp_f0;
    s32 temp_f8;
    s32 temp_t2;
    void *temp_a1;
    void *temp_t1;
    void *temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a1;

    temp_t1 = arg0->unk0;
    temp_t2 = arg2;
    sp46 = (u16)0x140;
    if (arg2 == 0) {
        return arg4;
    }
    if (arg0->unk1C != 0) {
        arg2 = temp_t2;
        temp_v0 = temp_t1->unk4(temp_t1, &sp46, temp_t2, arg4);
        temp_v0->unk0 = (s32) ((sp46 & 0xFFFFFF) | 0xA000000);
        temp_v0->unk4 = (s32) ((*arg1 << 0x10) | ((arg2 * 2) & 0xFFFF));
        phi_a1 = temp_v0 + 8;
    } else {
        if (*(void *)0x80072068 < (f64) arg0->unk18) {
            arg0->unk18 = (f32) *(void *)0x80072070;
        }
        arg0->unk18 = (f32) (s32) (arg0->unk18 * 32768.0f);
        arg0->unk18 = (f32) (arg0->unk18 / 32768.0f);
        temp_f0 = arg0->unk20 + (arg0->unk18 * (f32) temp_t2);
        temp_f8 = (s32) temp_f0;
        arg0->unk20 = (f32) (temp_f0 - (f32) temp_f8);
        arg2 = temp_t2;
        arg0 = arg0;
        temp_v0_2 = temp_t1->unk4(32768.0f, temp_t1, &sp46, temp_f8, arg4);
        temp_v0_2->unk0 = (s32) ((sp46 & 0xFFFF) | 0x8000000);
        temp_t8 = temp_v0_2 + 8;
        temp_v0_2->unk4 = (s32) ((*arg1 << 0x10) | ((arg2 * 2) & 0xFFFF));
        sp28 = temp_t8;
        temp_v0_2->unk8 = (s32) ((((arg0->unk24 & 0xFF) << 0x10) | 0x5000000) | ((s32) (arg0->unk18 * 32768.0f) & 0xFFFF));
        temp_a1 = temp_v0_2 + 0x10;
        sp48 = temp_a1;
        temp_t8->unk4 = func_80034DD0(arg0->unk14, temp_a1);
        arg0->unk24 = 0;
        phi_a1 = temp_a1;
    }
    return phi_a1;
}
