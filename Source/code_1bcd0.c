void *func_8001B0D0(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x80088428;
    phi_v1 = 0x100;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = (u16)0;
    phi_v0->unk40 = (u16)0;
    phi_v0->unk80 = (u16)0;
    phi_v0->unkC0 = (u16)0;
    temp_v0 = phi_v0 + 0x100;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    *(void *)0x80088420 = 0;
    return temp_v0;
}

void *func_8001B108(void *arg0) {
    s32 temp_v0;
    void *temp_t0;
    void *temp_t1;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    s32 phi_v0_2;
    void *phi_t0;
    void *phi_t1;
    void *phi_v1_2;
    void *phi_v1_3;

    phi_v0 = 0x100;
    phi_v1 = (void *)0x80088428;
    phi_v0_2 = 0x100;
    phi_v1_3 = (void *)0x80088428;
    if (*(void *)0x80088428 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x40;
        phi_v0_2 = temp_v0;
        phi_v1_3 = temp_v1;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v0_2 = temp_v0;
            phi_v1_3 = temp_v1;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    if (phi_v0_2 != 0) {
        phi_t0 = arg0;
        phi_t1 = phi_v1_3;
loop_5:
        temp_t0 = phi_t0 + 0xC;
        temp_t1 = phi_t1 + 0xC;
        temp_t1->unk-C = (s32) *phi_t0;
        temp_t1->unk-8 = (s32) temp_t0->unk-8;
        temp_t1->unk-4 = (s32) temp_t0->unk-4;
        phi_t0 = temp_t0;
        phi_t1 = temp_t1;
        if (temp_t0 != (arg0 + 0x3C)) {
            goto loop_5;
        }
        temp_t1->unk0 = (s32) temp_t0->unk0;
        *(void *)0x80088420 = (s32) (*(void *)0x80088420 + 1);
        phi_v1_2 = phi_v1_3;
    } else {
        phi_v1_2 = NULL;
    }
    return phi_v1_2;
}

void func_8001B19C(s32 arg0) {
    f32 spEC;
    f32 spE8;
    f32 spE4;
    ? spB4;
    ? sp74;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_v1;
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *phi_s0;
    s32 phi_s6;
    s32 phi_s5;
    s32 phi_s5_2;
    s32 phi_s6_2;

    temp_s5 = *(void *)0x80088420;
    if (temp_s5 != 0) {
        phi_s0 = (void *)0x80088428;
        phi_s6 = 0;
        phi_s5_2 = temp_s5;
loop_2:
        temp_v0 = phi_s0->unk0;
        phi_s5 = phi_s5_2;
        if (temp_v0 != 0) {
            temp_v1 = phi_s0->unk10;
            phi_s0->unk0 = (u16) (temp_v0 - 1);
            phi_s6_2 = phi_s6;
            if (phi_s6 != temp_v1) {
                func_8001B448(phi_s0->unk8, temp_v1, phi_s0->unk9, phi_s0->unkA, (?32) phi_s0->unkB, (?32) phi_s0->unkC);
                phi_s6_2 = temp_v1;
            }
            temp_v0_2 = phi_s0->unk4;
            if (temp_v0_2 != 0) {
                temp_v0_2(phi_s0);
            } else {
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk4 = 0x8004D050;
                temp_v0_3->unk0 = 0x6000000;
            }
            if ((phi_s0->unk2 & 1) != 0) {
                func_80023A08(&spB4, phi_s0->unk30, phi_s0->unk34, phi_s0->unk38);
                spE4 = phi_s0->unk18;
                spE8 = phi_s0->unk1C;
                spEC = phi_s0->unk20;
                temp_f0 = phi_s0->unk28;
                func_80023DF4(&spB4, temp_f0, temp_f0, temp_f0);
            } else {
                func_8002371C(&spB4, (bitwise s32) phi_s0->unk18, (bitwise s32) phi_s0->unk1C, (bitwise s32) phi_s0->unk20, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10, (void *)0x80086DC0->unk14);
                temp_f0_2 = phi_s0->unk24;
                if (0.0f != temp_f0_2) {
                    func_80023570(&sp74, 0.0f, 0.0f, temp_f0_2);
                    func_80035510(&sp74, &spB4, &spB4);
                }
                func_80023DF4(&spB4, (bitwise s32) phi_s0->unk28, phi_s0->unk2C, 0x3F800000);
            }
            func_80035200(&spB4, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk0 = 0x1020040;
            temp_v0_4->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
            temp_s5_2 = phi_s5_2 - 1;
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_v0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk0 = 0x6000000;
            temp_v0_5->unk4 = (s32) phi_s0->unk14;
            phi_s5 = temp_s5_2;
            phi_s6 = phi_s6_2;
            if (phi_s0->unk0 == 0) {
                *(void *)0x80088420 = (s32) (*(void *)0x80088420 - 1);
                phi_s5 = temp_s5_2;
                phi_s6 = phi_s6_2;
            }
        }
        phi_s0 = phi_s0 + 0x40;
        phi_s5_2 = phi_s5;
        if (phi_s5 != 0) {
            goto loop_2;
        }
    }
}

void *func_8001B448(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4, u8 arg5) {
    void *spEC;
    void *spBC;
    void *sp9C;
    void *sp1C;
    s32 temp_a1;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    s32 temp_s1_7;
    s32 temp_s1_8;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s2_4;
    s32 temp_s2_5;
    s32 temp_s2_6;
    s32 temp_s2_7;
    s32 temp_s2_8;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    s32 temp_t1_6;
    s32 temp_t1_7;
    s32 temp_t1_8;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t4_3;
    s32 temp_t4_4;
    s32 temp_t4_5;
    s32 temp_t4_6;
    s32 temp_t4_7;
    s32 temp_t4_8;
    s32 temp_t6_2;
    s32 temp_t6_3;
    s32 temp_t6_4;
    s32 temp_t6_5;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t7_4;
    s32 temp_t7_5;
    s32 temp_t7_6;
    s32 temp_t7_7;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s32 temp_t9_6;
    s32 temp_t9_7;
    s32 temp_t9_8;
    s32 temp_t9_9;
    s32 temp_v0_12;
    s32 temp_v0_13;
    u32 temp_t6;
    u32 temp_t9;
    u32 temp_t9_2;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_5;
    void *temp_a2_6;
    void *temp_a2_7;
    void *temp_a2_8;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a3_6;
    void *temp_a3_7;
    void *temp_a3_8;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_t2_4;
    void *temp_t2_5;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
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
    void *temp_v0_2;
    void *temp_v0_30;
    void *temp_v0_31;
    void *temp_v0_32;
    void *temp_v0_33;
    void *temp_v0_34;
    void *temp_v0_35;
    void *temp_v0_36;
    void *temp_v0_37;
    void *temp_v0_38;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    u32 phi_t0;
    u32 phi_v1;
    u32 phi_v1_2;
    u32 phi_t0_2;
    s32 phi_v0;
    s32 phi_t1;
    s32 phi_v1_3;
    s32 phi_t3;
    s32 phi_t9;
    s32 phi_t1_2;
    s32 phi_v1_4;
    s32 phi_t3_2;
    s32 phi_v0_2;
    s32 phi_t1_3;
    s32 phi_v1_5;
    s32 phi_t3_3;
    s32 phi_v0_3;
    s32 phi_t1_4;
    s32 phi_v1_6;
    s32 phi_t3_4;
    s32 phi_v0_4;
    s32 phi_t1_5;
    s32 phi_v1_7;
    s32 phi_t3_5;
    s32 phi_v0_5;
    s32 phi_t1_6;
    s32 phi_v1_8;
    s32 phi_t3_6;
    s32 phi_v0_6;
    s32 phi_t1_7;
    s32 phi_v1_9;
    s32 phi_t3_7;
    s32 phi_v0_7;
    s32 phi_t1_8;
    s32 phi_v1_10;
    s32 phi_t3_8;
    void *phi_return;

    temp_t6 = arg0 & 0xFF;
    phi_t0 = 0U;
loop_1:
    phi_t0_2 = phi_t0;
    if ((s32) *(phi_t0 + (void *)0x8004D090) < arg2) {
        temp_t9 = (phi_t0 + 1) & 0xFF;
        phi_t0 = temp_t9;
        phi_t0_2 = temp_t9;
        if (temp_t9 < 7U) {
            goto loop_1;
        }
    }
    temp_t6_2 = (phi_t0_2 + 1) & 0xFF;
    phi_v1 = 0U;
loop_4:
    phi_v1_2 = phi_v1;
    if ((s32) *(phi_v1 + (void *)0x8004D090) < arg3) {
        temp_t9_2 = (phi_v1 + 1) & 0xFF;
        phi_v1 = temp_t9_2;
        phi_v1_2 = temp_t9_2;
        if (temp_t9_2 < 7U) {
            goto loop_4;
        }
    }
    temp_t6_3 = (phi_v1_2 + 1) & 0xFF;
    phi_return = (void *)0x8004D090;
    if (temp_t6 < 8U) {
        goto **(&jtbl_800715f0 + (temp_t6 * 4));
    case 0:
        temp_v0_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
        temp_v0_8->unk0 = 0xFD100000;
        temp_v0_8->unk4 = arg1;
        temp_a2 = *(void *)0x8007B2FC;
        temp_t6_4 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2 + 8);
        temp_a2->unk0 = 0xF5100000;
        temp_t7 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4 = (arg5 & 3) << 0x12;
        temp_s1 = (arg4 & 3) << 8;
        temp_s2 = temp_t6_4;
        temp_a2->unk4 = (s32) ((((temp_t4 | 0x7000000) | temp_t7) | temp_s1) | temp_t6_4);
        temp_a3 = *(void *)0x8007B2FC;
        temp_a1 = arg2 * 2;
        *(void *)0x8007B2FC = (void *) (temp_a3 + 8);
        temp_a3->unk4 = 0;
        temp_a3->unk0 = 0xE6000000;
        temp_t2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t2 + 8);
        temp_t2->unk0 = 0xF3000000;
        temp_t1 = (arg2 * arg3) - 1;
        phi_t3 = 0x7FF;
        if (temp_t1 < 0x7FF) {
            phi_t3 = temp_t1;
        }
        phi_v0 = temp_a1 >> 3;
        if (temp_a1 < 0) {
            phi_v0 = (s32) (temp_a1 + 7) >> 3;
        }
        phi_t1 = phi_v0;
        if (phi_v0 <= 0) {
            phi_t1 = 1;
        }
        if (phi_v0 <= 0) {
            phi_v1_3 = 1;
        } else {
            phi_v1_3 = phi_v0;
        }
        temp_t2->unk4 = (s32) (((((s32) (phi_t1 + 0x7FF) / phi_v1_3) & 0xFFF) | 0x7000000) | ((phi_t3 & 0xFFF) << 0xC));
        temp_v0_9 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
        temp_v0_9->unk4 = 0;
        temp_v0_9->unk0 = 0xE7000000;
        temp_v0_10 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
        temp_v0_10->unk4 = (s32) (((temp_t4 | temp_t7) | temp_s1) | temp_s2);
        temp_v0_10->unk0 = (s32) (((((s32) (temp_a1 + 7) >> 3) & 0x1FF) << 9) | 0xF5100000);
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk0 = 0xF2000000;
        temp_v0_11->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        spEC = temp_v0;
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xBA000E02;
        return temp_v0;
    case 1:
        temp_a1_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_2 + 8);
        temp_a1_2->unk0 = 0xFD180000;
        temp_a1_2->unk4 = arg1;
        temp_a2_2 = *(void *)0x8007B2FC;
        temp_t7_2 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_2 + 8);
        temp_a2_2->unk0 = 0xF5180000;
        temp_t9_3 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_2 = (arg5 & 3) << 0x12;
        temp_s1_2 = (arg4 & 3) << 8;
        temp_s2_2 = temp_t7_2;
        temp_a2_2->unk4 = (s32) ((((temp_t4_2 | 0x7000000) | temp_t9_3) | temp_s1_2) | temp_t7_2);
        temp_a3_2 = *(void *)0x8007B2FC;
        temp_v0_12 = arg2 * 4;
        *(void *)0x8007B2FC = (void *) (temp_a3_2 + 8);
        temp_a3_2->unk4 = 0;
        temp_a3_2->unk0 = 0xE6000000;
        temp_t2_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t2_2 + 8);
        temp_t2_2->unk0 = 0xF3000000;
        temp_t1_2 = (arg2 * arg3) - 1;
        phi_t3_2 = 0x7FF;
        if (temp_t1_2 < 0x7FF) {
            phi_t3_2 = temp_t1_2;
        }
        phi_t9 = temp_v0_12 >> 3;
        if (temp_v0_12 < 0) {
            phi_t9 = (s32) (temp_v0_12 + 7) >> 3;
        }
        temp_v0_13 = phi_t9;
        if (phi_t9 <= 0) {
            phi_t1_2 = 1;
        } else {
            phi_t1_2 = temp_v0_13;
        }
        if (temp_v0_13 <= 0) {
            phi_v1_4 = 1;
        } else {
            phi_v1_4 = temp_v0_13;
        }
        temp_t2_2->unk4 = (s32) (((((s32) (phi_t1_2 + 0x7FF) / phi_v1_4) & 0xFFF) | 0x7000000) | ((phi_t3_2 & 0xFFF) << 0xC));
        temp_v0_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
        temp_v0_14->unk4 = 0;
        temp_v0_14->unk0 = 0xE7000000;
        temp_v0_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
        temp_v0_15->unk4 = (s32) (((temp_t4_2 | temp_t9_3) | temp_s1_2) | temp_s2_2);
        temp_v0_15->unk0 = (s32) (((((s32) ((arg2 * 2) + 7) >> 3) & 0x1FF) << 9) | 0xF5180000);
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk0 = 0xF2000000;
        temp_v0_16->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0;
        temp_v0_2->unk0 = 0xBA000E02;
        return temp_v0_2;
    case 2:
        temp_a1_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_3 + 8);
        temp_a1_3->unk0 = 0xFD900000;
        temp_a1_3->unk4 = arg1;
        temp_a2_3 = *(void *)0x8007B2FC;
        temp_t7_3 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_3 + 8);
        temp_a2_3->unk0 = 0xF5900000;
        temp_t9_4 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_3 = (arg5 & 3) << 0x12;
        temp_s1_3 = (arg4 & 3) << 8;
        temp_s2_3 = temp_t7_3;
        temp_a2_3->unk4 = (s32) ((((temp_t4_3 | 0x7000000) | temp_t9_4) | temp_s1_3) | temp_t7_3);
        temp_a3_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_3 + 8);
        temp_a3_3->unk4 = 0;
        temp_a3_3->unk0 = 0xE6000000;
        temp_v0_17 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk0 = 0xF3000000;
        spBC = temp_v0_17;
        temp_t1_3 = ((s32) ((arg2 * arg3) + 1) >> 1) - 1;
        phi_t3_3 = 0x7FF;
        if (temp_t1_3 < 0x7FF) {
            phi_t3_3 = temp_t1_3;
        }
        phi_v0_2 = arg2 >> 3;
        if (arg2 < 0) {
            phi_v0_2 = (s32) (arg2 + 7) >> 3;
        }
        phi_t1_3 = phi_v0_2;
        if (phi_v0_2 <= 0) {
            phi_t1_3 = 1;
        }
        if (phi_v0_2 <= 0) {
            phi_v1_5 = 1;
        } else {
            phi_v1_5 = phi_v0_2;
        }
        spBC->unk4 = (s32) (((((s32) (phi_t1_3 + 0x7FF) / phi_v1_5) & 0xFFF) | 0x7000000) | ((phi_t3_3 & 0xFFF) << 0xC));
        temp_v0_18 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk4 = 0;
        temp_v0_18->unk0 = 0xE7000000;
        temp_v0_19 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
        temp_v0_19->unk4 = (s32) (((temp_t4_3 | temp_t9_4) | temp_s1_3) | temp_s2_3);
        temp_v0_19->unk0 = (s32) (((((s32) (arg2 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000);
        temp_v0_20 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
        temp_v0_20->unk0 = 0xF2000000;
        temp_v0_20->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xBA000E02;
        return temp_v0_3;
    case 3:
        temp_a1_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_4 + 8);
        temp_a1_4->unk0 = 0xFD700000;
        temp_a1_4->unk4 = arg1;
        temp_a2_4 = *(void *)0x8007B2FC;
        temp_t7_4 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_4 + 8);
        temp_a2_4->unk0 = 0xF5700000;
        temp_t9_5 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_4 = (arg5 & 3) << 0x12;
        temp_s1_4 = (arg4 & 3) << 8;
        temp_s2_4 = temp_t7_4;
        temp_a2_4->unk4 = (s32) ((((temp_t4_4 | 0x7000000) | temp_t9_5) | temp_s1_4) | temp_t7_4);
        temp_a3_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_4 + 8);
        temp_a3_4->unk4 = 0;
        temp_a3_4->unk0 = 0xE6000000;
        temp_v0_21 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
        temp_v0_21->unk0 = 0xF3000000;
        sp9C = temp_v0_21;
        temp_t1_4 = ((s32) ((arg2 * arg3) + 1) >> 1) - 1;
        phi_t3_4 = 0x7FF;
        if (temp_t1_4 < 0x7FF) {
            phi_t3_4 = temp_t1_4;
        }
        phi_v0_3 = arg2 >> 3;
        if (arg2 < 0) {
            phi_v0_3 = (s32) (arg2 + 7) >> 3;
        }
        phi_t1_4 = phi_v0_3;
        if (phi_v0_3 <= 0) {
            phi_t1_4 = 1;
        }
        if (phi_v0_3 <= 0) {
            phi_v1_6 = 1;
        } else {
            phi_v1_6 = phi_v0_3;
        }
        sp9C->unk4 = (s32) (((((s32) (phi_t1_4 + 0x7FF) / phi_v1_6) & 0xFFF) | 0x7000000) | ((phi_t3_4 & 0xFFF) << 0xC));
        temp_v0_22 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
        temp_v0_22->unk4 = 0;
        temp_v0_22->unk0 = 0xE7000000;
        temp_v0_23 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
        temp_v0_23->unk4 = (s32) (((temp_t4_4 | temp_t9_5) | temp_s1_4) | temp_s2_4);
        temp_v0_23->unk0 = (s32) (((((s32) (arg2 + 7) >> 3) & 0x1FF) << 9) | 0xF5680000);
        temp_v0_24 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
        temp_v0_24->unk0 = 0xF2000000;
        temp_v0_24->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0;
        temp_v0_4->unk0 = 0xBA000E02;
        return temp_v0_4;
    case 4:
        temp_a1_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_5 + 8);
        temp_a1_5->unk0 = 0xFD900000;
        temp_a1_5->unk4 = arg1;
        temp_a2_5 = *(void *)0x8007B2FC;
        temp_t7_5 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_5 + 8);
        temp_a2_5->unk0 = 0xF5900000;
        temp_t9_6 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_5 = (arg5 & 3) << 0x12;
        temp_s1_5 = (arg4 & 3) << 8;
        temp_s2_5 = temp_t7_5;
        temp_a2_5->unk4 = (s32) ((((temp_t4_5 | 0x7000000) | temp_t9_6) | temp_s1_5) | temp_t7_5);
        temp_a3_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_5 + 8);
        temp_a3_5->unk4 = 0;
        temp_a3_5->unk0 = 0xE6000000;
        temp_t2_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t2_3 + 8);
        temp_t2_3->unk0 = 0xF3000000;
        temp_t1_5 = ((s32) ((arg2 * arg3) + 3) >> 2) - 1;
        phi_t3_5 = 0x7FF;
        if (temp_t1_5 < 0x7FF) {
            phi_t3_5 = temp_t1_5;
        }
        phi_v0_4 = arg2 >> 4;
        if (arg2 < 0) {
            phi_v0_4 = (s32) (arg2 + 0xF) >> 4;
        }
        phi_t1_5 = phi_v0_4;
        if (phi_v0_4 <= 0) {
            phi_t1_5 = 1;
        }
        if (phi_v0_4 <= 0) {
            phi_v1_7 = 1;
        } else {
            phi_v1_7 = phi_v0_4;
        }
        temp_t2_3->unk4 = (s32) (((((s32) (phi_t1_5 + 0x7FF) / phi_v1_7) & 0xFFF) | 0x7000000) | ((phi_t3_5 & 0xFFF) << 0xC));
        temp_v0_25 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
        temp_v0_25->unk4 = 0;
        temp_v0_25->unk0 = 0xE7000000;
        temp_v0_26 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
        temp_v0_26->unk4 = (s32) (((temp_t4_5 | temp_t9_6) | temp_s1_5) | temp_s2_5);
        temp_v0_26->unk0 = (s32) (((((s32) ((arg2 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5800000);
        temp_v0_27 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
        temp_v0_27->unk0 = 0xF2000000;
        temp_v0_27->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xBA000E02;
        return temp_v0_5;
    case 5:
        temp_a1_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_6 + 8);
        temp_a1_6->unk0 = 0xFD700000;
        temp_a1_6->unk4 = arg1;
        temp_a2_6 = *(void *)0x8007B2FC;
        temp_t7_6 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_6 + 8);
        temp_a2_6->unk0 = 0xF5700000;
        temp_t9_7 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_6 = (arg5 & 3) << 0x12;
        temp_s1_6 = (arg4 & 3) << 8;
        temp_s2_6 = temp_t7_6;
        temp_a2_6->unk4 = (s32) ((((temp_t4_6 | 0x7000000) | temp_t9_7) | temp_s1_6) | temp_t7_6);
        temp_a3_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_6 + 8);
        temp_a3_6->unk4 = 0;
        temp_a3_6->unk0 = 0xE6000000;
        temp_t2_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t2_4 + 8);
        temp_t2_4->unk0 = 0xF3000000;
        temp_t1_6 = ((s32) ((arg2 * arg3) + 3) >> 2) - 1;
        phi_t3_6 = 0x7FF;
        if (temp_t1_6 < 0x7FF) {
            phi_t3_6 = temp_t1_6;
        }
        phi_v0_5 = arg2 >> 4;
        if (arg2 < 0) {
            phi_v0_5 = (s32) (arg2 + 0xF) >> 4;
        }
        phi_t1_6 = phi_v0_5;
        if (phi_v0_5 <= 0) {
            phi_t1_6 = 1;
        }
        if (phi_v0_5 <= 0) {
            phi_v1_8 = 1;
        } else {
            phi_v1_8 = phi_v0_5;
        }
        temp_t2_4->unk4 = (s32) (((((s32) (phi_t1_6 + 0x7FF) / phi_v1_8) & 0xFFF) | 0x7000000) | ((phi_t3_6 & 0xFFF) << 0xC));
        temp_v0_28 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
        temp_v0_28->unk4 = 0;
        temp_v0_28->unk0 = 0xE7000000;
        temp_v0_29 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
        temp_v0_29->unk4 = (s32) (((temp_t4_6 | temp_t9_7) | temp_s1_6) | temp_s2_6);
        temp_v0_29->unk0 = (s32) (((((s32) ((arg2 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5600000);
        temp_v0_30 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_30 + 8);
        temp_v0_30->unk0 = 0xF2000000;
        temp_v0_30->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0;
        temp_v0_6->unk0 = 0xBA000E02;
        return temp_v0_6;
    case 6:
        temp_a1_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_7 + 8);
        temp_a1_7->unk0 = 0xFD500000;
        temp_a1_7->unk4 = arg1;
        temp_a2_7 = *(void *)0x8007B2FC;
        temp_t7_7 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_7 + 8);
        temp_a2_7->unk0 = 0xF5500000;
        temp_t9_8 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_7 = (arg5 & 3) << 0x12;
        temp_s1_7 = (arg4 & 3) << 8;
        temp_s2_7 = temp_t7_7;
        temp_a2_7->unk4 = (s32) ((((temp_t4_7 | 0x7000000) | temp_t9_8) | temp_s1_7) | temp_t7_7);
        temp_a3_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_7 + 8);
        temp_a3_7->unk4 = 0;
        temp_a3_7->unk0 = 0xE6000000;
        temp_t2_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t2_5 + 8);
        temp_t2_5->unk0 = 0xF3000000;
        temp_t1_7 = ((s32) ((arg2 * arg3) + 3) >> 2) - 1;
        phi_t3_7 = 0x7FF;
        if (temp_t1_7 < 0x7FF) {
            phi_t3_7 = temp_t1_7;
        }
        phi_v0_6 = arg2 >> 4;
        if (arg2 < 0) {
            phi_v0_6 = (s32) (arg2 + 0xF) >> 4;
        }
        phi_t1_7 = phi_v0_6;
        if (phi_v0_6 <= 0) {
            phi_t1_7 = 1;
        }
        if (phi_v0_6 <= 0) {
            phi_v1_9 = 1;
        } else {
            phi_v1_9 = phi_v0_6;
        }
        temp_t2_5->unk4 = (s32) (((((s32) (phi_t1_7 + 0x7FF) / phi_v1_9) & 0xFFF) | 0x7000000) | ((phi_t3_7 & 0xFFF) << 0xC));
        temp_v0_31 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_31 + 8);
        temp_v0_31->unk4 = 0;
        temp_v0_31->unk0 = 0xE7000000;
        temp_v0_32 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_32 + 8);
        temp_v0_32->unk4 = (s32) (((temp_t4_7 | temp_t9_8) | temp_s1_7) | temp_s2_7);
        temp_v0_32->unk0 = (s32) (((((s32) ((arg2 >> 1) + 7) >> 3) & 0x1FF) << 9) | 0xF5400000);
        temp_v0_33 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_33 + 8);
        temp_v0_33->unk0 = 0xF2000000;
        temp_v0_33->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = 0x8000;
        temp_v0_7->unk0 = 0xBA000E02;
        return temp_v0_7;
    case 7:
        temp_a1_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a1_8 + 8);
        temp_a1_8->unk0 = 0xFD500000;
        temp_a1_8->unk4 = arg1;
        temp_a2_8 = *(void *)0x8007B2FC;
        temp_t9_9 = (temp_t6_2 & 0xF) * 0x10;
        *(void *)0x8007B2FC = (void *) (temp_a2_8 + 8);
        temp_a2_8->unk0 = 0xF5500000;
        temp_t6_5 = (temp_t6_3 & 0xF) << 0xE;
        temp_t4_8 = (arg5 & 3) << 0x12;
        temp_s1_8 = (arg4 & 3) << 8;
        temp_s2_8 = temp_t9_9;
        temp_a2_8->unk4 = (s32) ((((temp_t4_8 | 0x7000000) | temp_t6_5) | temp_s1_8) | temp_t9_9);
        temp_a3_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_a3_8 + 8);
        temp_a3_8->unk4 = 0;
        temp_a3_8->unk0 = 0xE6000000;
        temp_v0_34 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_34 + 8);
        temp_v0_34->unk0 = 0xF3000000;
        sp1C = temp_v0_34;
        temp_t1_8 = ((s32) ((arg2 * arg3) + 1) >> 1) - 1;
        phi_t3_8 = 0x7FF;
        if (temp_t1_8 < 0x7FF) {
            phi_t3_8 = temp_t1_8;
        }
        phi_v0_7 = arg2 >> 3;
        if (arg2 < 0) {
            phi_v0_7 = (s32) (arg2 + 7) >> 3;
        }
        phi_t1_8 = phi_v0_7;
        if (phi_v0_7 <= 0) {
            phi_t1_8 = 1;
        }
        if (phi_v0_7 <= 0) {
            phi_v1_10 = 1;
        } else {
            phi_v1_10 = phi_v0_7;
        }
        sp1C->unk4 = (s32) (((((s32) (phi_t1_8 + 0x7FF) / phi_v1_10) & 0xFFF) | 0x7000000) | ((phi_t3_8 & 0xFFF) << 0xC));
        temp_v0_35 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_35 + 8);
        temp_v0_35->unk4 = 0;
        temp_v0_35->unk0 = 0xE7000000;
        temp_v0_36 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_36 + 8);
        temp_v0_36->unk4 = (s32) (((temp_t4_8 | temp_t6_5) | temp_s1_8) | temp_s2_8);
        temp_v0_36->unk0 = (s32) (((((s32) (arg2 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
        temp_v0_37 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_37 + 8);
        temp_v0_37->unk0 = 0xF2000000;
        temp_v0_37->unk4 = (s32) (((((arg2 - 1) * 4) & 0xFFF) << 0xC) | (((arg3 - 1) * 4) & 0xFFF));
        temp_v0_38 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_38 + 8);
        temp_v0_38->unk4 = 0x8000;
        temp_v0_38->unk0 = 0xBA000E02;
        phi_return = temp_v0_38;
    }
    return phi_return;
}
