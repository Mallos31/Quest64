void func_8000BD10(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_s1;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_6;
    s32 temp_v1_7;
    u16 temp_s1_2;
    u16 temp_s1_3;
    u16 temp_t0;
    u32 temp_v0_6;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a1;
    void *temp_a2;
    void *temp_s0;
    void *temp_s2;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_8;
    void *phi_v0;
    void *phi_v1;
    s32 phi_s1;
    void *phi_a0;
    void *phi_s0;
    void *phi_s2;
    s32 phi_s4;
    u16 phi_s1_2;
    u32 phi_v0_2;
    void *phi_a0_2;
    void *phi_a1;
    void *phi_a2;
    void *phi_v1_2;

    temp_v0 = *(void *)0x80084EEC;
    temp_a0 = *(void *)0x80084EE4;
    *(void *)0x80084F18 = (void *) ((temp_v0 * 0x44) + 0x80054F10);
    if (temp_a0 != -1) {
        if (temp_v0 == 0xB) {
            if (*(void *)0x80084EE8 == 2) {
                temp_v1 = *(void *)0x80084EF0;
                if (temp_v1 == 0) {
                    *(void *)0x80084EF8 = temp_v0;
                    *(void *)0x80084EFC = temp_v1;
                    *(void *)0x80084F00 = (s32) *(void *)0x80085370;
                }
            }
        } else {
            if (temp_v0 == 6) {
                *(void *)0x80084EF8 = temp_v0;
                *(void *)0x80084EFC = (s32) *(void *)0x80084EF0;
                *(void *)0x80084F00 = (s32) *(void *)0x80085370;
            } else {
                if (((*(void *)0x80084EE0 & 1) != 0) && (((*(void *)0x80084F18)->unk0 & 4) != 0)) {
                    *(void *)0x80084EF8 = temp_v0;
                    *(void *)0x80084EFC = (s32) *(void *)0x80084EF0;
                    *(void *)0x80084F00 = (s32) *(void *)0x80085370;
                } else {
                    if (temp_a0 != temp_v0) {
                        if (((*(void *)0x80084F18)->unk0 & 8) != 0) {
                            *(void *)0x80084F04 = temp_v0;
                            temp_t3 = *(void *)0x80084EF0;
                            *(void *)0x80084F08 = temp_t3;
                            *(void *)0x80084F0C = (s32) *(void *)0x80085370;
                            if (temp_v0 == 0x1A) {
                                if (temp_t3 == 4) {
                                    *(void *)0x80084F08 = 2;
                                    *(void *)0x80084F0C = 1;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (temp_a0 == -1) {
        func_80024260(0x77560, 0x80100000, 0x87360 - 0x77560);
        func_80024260(0xD884F0, 0x800820D8, 0x600);
        func_80024260(0xD88AF0, 0x800826D8, 0x200);
    }
    if (*(void *)0x80084EEC != *(void *)0x80084EE4) {
        *(void *)0x80084EF4 = *(void *)0x80084EE4;
        *(void *)0x80084EE4 = *(void *)0x80084EEC;
        temp_t0 = (*(void *)0x80084F18)->unk0;
        temp_v1_2 = temp_t0 & 0xFFFF;
        *(void *)0x80084EE0 = temp_t0;
        if ((temp_v1_2 & 7) != 0) {
            if ((temp_v1_2 & 2) != 0) {
                func_80024260(0x87360, 0x8010FE00, 0xCAF50 - 0x87360);
            }
            temp_v0_2 = ((*(void *)0x80084F18)->unk3C * 0xC) + 0x800558A0;
            temp_a0_2 = temp_v0_2->unk0;
            temp_v1_3 = temp_v0_2->unk4;
            func_80024260(temp_a0_2, *(temp_v0_2 + 8), temp_v1_3 - temp_a0_2);
        }
        temp_a0_3 = (*(void *)0x80084F18)->unk4;
        func_80024260(temp_a0_3, (*(void *)0x80084F18)->unkC, (*(void *)0x80084F18)->unk8 - temp_a0_3);
        temp_v0_3 = *(void *)0x80084EE4;
        if ((((temp_v0_3 == 3) || (temp_v0_3 == 5)) || (temp_v0_3 == 7)) || (temp_v0_3 == 0xC)) {
            func_80024260(0x3E3200, 0x801E0000, 0x3F3D10 - 0x3E3200);
        } else {

        }
    }
    phi_v0 = (void *)0x800827A0;
    phi_v1 = (void *)0x800827A2;
    phi_s1 = 0x65;
loop_28:
    temp_s1 = phi_s1 - 1;
    temp_v1_4 = phi_v1 + 2;
    temp_v1_4->unk-2 = (u16) *phi_v0;
    phi_v0 = phi_v0 - 2;
    phi_v1 = temp_v1_4;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_28;
    }
    temp_t1 = *(void *)0x80084EF0;
    *(void *)0x80084EE8 = temp_t1;
    temp_s0 = *(void *)0x80084F18;
    *(void *)0x80084F1C = (void *) (temp_s0->unk18 + (temp_t1 * 0x18));
    *(void *)0x80084F28 = (s32) temp_s0->unk10;
    temp_v0_4 = *(void *)0x80084F1C;
    temp_a0_4 = temp_s0->unk14 + (temp_v0_4->unk0 * 0x2C);
    *(void *)0x80084F20 = temp_a0_4;
    *(void *)0x800859E4 = (void *) (temp_s0->unk1C + (temp_v0_4->unk2 << 5));
    *(void *)0x80084F24 = (void *) temp_a0_4->unk18;
    *(void *)0x80084F2C = (s32) temp_s0->unk2C;
    *(void *)0x80084F30 = (s32) temp_s0->unk28;
    *(void *)0x80084F10 = (u16) temp_v0_4->unk14;
    temp_v1_5 = *(void *)0x800859E4;
    *(void *)0x80084F12 = (u16) temp_v1_5->unk18;
    temp_a3 = temp_v1_5->unk1C;
    phi_a0 = temp_a0_4;
    if (temp_a3 != *(void *)0x80084F14) {
        *(void *)0x80084F14 = (u16) temp_a3;
        func_80024260(*(((temp_a3 & 0xFFFF) * 8) + 0x8005EFA8), 0x800814D8, 0x800, temp_a3);
        func_80024260(*((*(void *)0x80084F14 * 8) + 0x8005EFA8) + 0x800, 0x8007D2D8, 0x4000);
        phi_a0 = *(void *)0x80084F20;
    }
    temp_v1_6 = *(void *)0x80085370;
    if (temp_v1_6 != -1) {
        temp_v0_5 = (*(void *)0x80084F1C)->unkC + (temp_v1_6 * 0x14);
        *(void *)0x8007BA40 = (f32) temp_v0_5->unk0;
        *(void *)0x8007BA44 = (f32) temp_v0_5->unk4;
        *(void *)0x8007BA48 = (f32) temp_v0_5->unk8;
        *(void *)0x8007BA50 = (?32) temp_v0_5->unkE;
    }
    temp_s1_2 = *phi_a0;
    *(void *)0x80084F38 = 0;
    if (temp_s1_2 != 0) {
        phi_s0 = *(void *)0x80084F24;
        phi_s2 = (void *)0x80084260;
        phi_s4 = 0;
        phi_s1_2 = temp_s1_2;
loop_35:
        if ((phi_s0->unk16 & 0x8000) != 0) {
            func_8000EE60(phi_s0->unk0, phi_s0->unk4, phi_s0->unk8, 0xA00, (void *)0x80082C28);
            phi_s0->unk4 = (f32) (void *)0x80082C28->unk4;
        }
        temp_v1_7 = (s32) phi_s0->unk16 & 0xFF;
        if (temp_v1_7 == 0x10) {
            *phi_s2 = (f32) (void *)0x80082C28->unkC;
            temp_s2 = phi_s2 + 0xC;
            temp_s2->unk-8 = (f32) (void *)0x80082C28->unk10;
            temp_s2->unk-4 = (f32) (void *)0x80082C28->unk14;
            phi_s0->unkC = (f32) phi_s4;
            phi_s2 = temp_s2;
            phi_s4 = phi_s4 + 1;
        } else {
            if (temp_v1_7 == 0x83) {
                phi_s0->unk14 = (u16)0;
            } else {
                if (temp_v1_7 == 0x84) {
                    phi_s0->unk14 = (s16) (func_80022FD0(0x96) + 0x96);
                } else {
                    if ((s32) phi_s0->unk16 >= 0x11) {
                        if ((s32) phi_s0->unk16 < 0x15) {
                            phi_s0->unk14 = func_80022FD0(0x10);
                        }
                    }
                }
            }
        }
        temp_s1_3 = phi_s1_2 - 1;
        phi_s0 = phi_s0 + 0x18;
        phi_s1_2 = temp_s1_3;
        if (temp_s1_3 != 0) {
            goto loop_35;
        }
    }
    phi_v0_2 = 0x80082C70U;
loop_48:
    temp_v0_6 = phi_v0_2 + 4;
    temp_v0_6->unk-4 = (u16)0;
    temp_v0_6->unk-2 = (u16)0;
    phi_v0_2 = temp_v0_6;
    if (temp_v0_6 < 0x80082C80U) {
        goto loop_48;
    }
    phi_a0_2 = (void *)0x80082910;
    phi_a1 = (void *)0x80082928;
    phi_a2 = (void *)0x80082940;
    phi_v1_2 = (void *)0x80082958;
loop_50:
    phi_a0_2->unk0 = (s32) (void *)0x8004C2F8->unk0;
    phi_a0_2->unk4 = (s32) (void *)0x8004C2F8->unk4;
    phi_a0_2->unk8 = (s32) (void *)0x8004C2F8->unk8;
    phi_a0_2->unkC = (s32) (void *)0x8004C2F8->unkC;
    phi_a0_2->unk10 = (s32) (void *)0x8004C2F8->unk10;
    phi_a0_2->unk14 = (s32) (void *)0x8004C2F8->unk14;
    phi_a1->unk4 = (s32) (void *)0x8004C2F8->unk4;
    phi_a1->unk0 = (s32) (void *)0x8004C2F8->unk0;
    phi_a1->unk8 = (s32) (void *)0x8004C2F8->unk8;
    phi_a1->unkC = (s32) (void *)0x8004C2F8->unkC;
    phi_a1->unk10 = (s32) (void *)0x8004C2F8->unk10;
    phi_a1->unk14 = (s32) (void *)0x8004C2F8->unk14;
    phi_a2->unk4 = (s32) (void *)0x8004C2F8->unk4;
    phi_a2->unk0 = (s32) (void *)0x8004C2F8->unk0;
    phi_a2->unk8 = (s32) (void *)0x8004C2F8->unk8;
    phi_a2->unkC = (s32) (void *)0x8004C2F8->unkC;
    phi_a2->unk10 = (s32) (void *)0x8004C2F8->unk10;
    phi_a2->unk14 = (s32) (void *)0x8004C2F8->unk14;
    phi_v1_2->unk4 = (s32) (void *)0x8004C2F8->unk4;
    phi_v1_2->unk0 = (s32) (void *)0x8004C2F8->unk0;
    temp_v1_8 = phi_v1_2 + 0x60;
    temp_v1_8->unk-58 = (s32) (void *)0x8004C2F8->unk8;
    temp_v1_8->unk-54 = (s32) (void *)0x8004C2F8->unkC;
    temp_a0_5 = phi_a0_2 + 0x60;
    temp_a1 = phi_a1 + 0x60;
    temp_a2 = phi_a2 + 0x60;
    temp_v1_8->unk-4C = (s32) (void *)0x8004C2F8->unk14;
    temp_v1_8->unk-50 = (s32) (void *)0x8004C2F8->unk10;
    phi_a0_2 = temp_a0_5;
    phi_a1 = temp_a1;
    phi_a2 = temp_a2;
    phi_v1_2 = temp_v1_8;
    if (temp_v1_8 != 0x80082C58) {
        goto loop_50;
    }
    *(void *)0x80082908 = 1;
    func_8000DB10(temp_a0_5, temp_a1, temp_a2, 0x80082C58);
    func_8000E3C4();
    *(void *)0x80084EDC = -1;
}

void *func_8000C42C(void) {
    s32 temp_v0;
    u16 temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    s32 phi_v0;
    void *phi_return;

    *(void *)0x8007D2D4 = 0;
    phi_return = (void *)0x80120000;
    if (*(void *)0x80084EE4 == 0x1D) {
        temp_a0 = *(void *)0x80124E24;
        *(void *)0x80124E24 = (u16) (void *)0x80124E22->unk0;
        temp_v1 = (void *)0x80124E22 - 2;
        temp_v1->unk2 = (u16) (void *)0x80124E22->unk-2;
        phi_v1 = temp_v1;
        phi_v0 = 0x10;
loop_2:
        temp_v0 = phi_v0 - 4;
        temp_v1_2 = phi_v1 - 8;
        temp_v1_2->unk8 = (u16) phi_v1->unk-2;
        temp_v1_2->unk6 = (u16) phi_v1->unk-4;
        temp_v1_2->unk4 = (u16) phi_v1->unk-6;
        temp_v1_2->unk2 = (u16) phi_v1->unk-8;
        phi_v1 = temp_v1_2;
        phi_v0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_2;
        }
        temp_v1_2->unk0 = temp_a0;
        *(void *)0x80084ED0 = (u16) (*(void *)0x80084ED0 + 1);
        phi_return = (void *)0x80084ED0;
    }
    return phi_return;
}

void func_8000C4C4(s32 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    f64 temp_f0_3;
    f64 temp_f30;
    s16 temp_a1_2;
    s16 temp_a3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_s0_3;
    s32 temp_s6;
    s32 temp_s6_2;
    s32 temp_s6_3;
    s32 temp_s6_4;
    s32 temp_s6_5;
    s32 temp_t1;
    s32 temp_v0_2;
    s32 temp_v0_6;
    s32 temp_v1;
    u16 temp_s0;
    u16 temp_v0;
    u16 temp_v0_3;
    u16 temp_v1_3;
    void *temp_a0;
    void *temp_a1;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s2;
    void *temp_s3;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1_2;
    void *temp_v1_4;
    s32 phi_s6;
    void *phi_s1;
    s32 phi_s3;
    s32 phi_s4;
    void *phi_s2;
    s32 phi_s6_2;
    void *phi_s2_2;
    s32 phi_v0;
    f32 phi_f26;
    f32 phi_f20;
    f32 phi_f24;
    f32 phi_f22;
    s32 phi_s6_3;
    s32 phi_s6_4;
    void *phi_v1;
    void *phi_a0;
    s32 phi_s6_5;
    s32 phi_s0;
    void *phi_s1_2;
    void *phi_s2_3;

    *(void *)0x800828DC = 0;
    *(void *)0x800828D8 = 0;
    *(void *)0x800828E0 = 0;
    *(void *)0x800828E4 = 0;
    *(void *)0x800828E8 = 0;
    *(void *)0x800828EC = 0;
    *(void *)0x80084F38 = 0;
    *(void *)0x800828F0 = (void *)0x80082C80;
    *(void *)0x800828F4 = 0x80083080;
    *(void *)0x800828F8 = 0x80084F40;
    *(void *)0x800828FC = 0x80083488;
    *(void *)0x80082900 = 0x80083888;
    *(void *)0x80082904 = 0x80083C90;
    *(void *)0x80082C10 = 0x80082910;
    temp_s2 = *(void *)0x80084F20;
    *(void *)0x80084ED4 = 600.0f;
    *(void *)0x80084ED8 = -1;
    temp_v0 = temp_s2->unk28;
    temp_f0 = (void *)0x8007BAB8->unk14;
    temp_f2 = (void *)0x8007BAB8->unk1C;
    if (temp_v0 != 1) {
        if (temp_v0 != 2) {
            if (temp_v0 != 3) {
                if (temp_v0 != 4) {
                    phi_s6 = 1;
                    phi_s3 = 0;
                    phi_s4 = 0;
                    phi_s1 = (void *)0x800558E8;
                } else {
                    phi_s6 = 0x15;
                    phi_s3 = (s32) ((temp_f0 - temp_s2->unk8) / temp_s2->unk10);
                    phi_s4 = (s32) ((temp_f2 - temp_s2->unkC) / temp_s2->unk14);
                    phi_s1 = (void *)0x80055AF0;
                }
            } else {
                phi_s6 = 9;
                phi_s3 = (s32) ((temp_f0 - temp_s2->unk8) / temp_s2->unk10);
                phi_s4 = (s32) ((temp_f2 - temp_s2->unkC) / temp_s2->unk14);
                phi_s1 = (void *)0x80055ADC;
            }
        } else {
            phi_s6 = 0x59;
            phi_s3 = (s32) ((temp_f0 - temp_s2->unk8) / temp_s2->unk10);
            phi_s4 = (s32) ((temp_f2 - temp_s2->unkC) / temp_s2->unk14);
            phi_s1 = (void *)0x80055A28;
        }
    } else {
        phi_s6 = 0x9D;
        phi_s3 = (s32) ((temp_f0 - temp_s2->unk8) / temp_s2->unk10);
        phi_s4 = (s32) ((temp_f2 - temp_s2->unkC) / temp_s2->unk14);
        phi_s1 = (void *)0x800558EC;
    }
    phi_s2 = temp_s2;
    phi_s6_2 = phi_s6;
    phi_s2_2 = temp_s2;
    if (phi_s6 != 0) {
loop_10:
        temp_v0_2 = phi_s1->unk0 + phi_s3;
        temp_v1 = phi_s1->unk1 + phi_s4;
        phi_s2_3 = phi_s2;
        if (temp_v0_2 >= 0) {
            phi_s2_3 = phi_s2;
            if (temp_v1 >= 0) {
                temp_a3 = phi_s2->unk4;
                phi_s2_3 = phi_s2;
                if (temp_v0_2 < (s32) temp_a3) {
                    phi_s2_3 = phi_s2;
                    if (temp_v1 < (s32) phi_s2->unk6) {
                        temp_a2 = (temp_a3 * temp_v1) + temp_v0_2;
                        temp_a1 = (*(phi_s2->unk1C + (temp_a2 * 2)) * 2) + phi_s2->unk20;
                        temp_s0 = *temp_a1;
                        func_8000D518(temp_s0, temp_a1 + 2, temp_a2, temp_a3);
                        phi_s2_3 = *(void *)0x80084F20;
                    }
                }
            }
        }
        temp_s6 = phi_s6_2 - 1;
        phi_s1 = phi_s1 + 2;
        phi_s2 = phi_s2_3;
        phi_s6_2 = temp_s6;
        phi_s2_2 = phi_s2_3;
        if (temp_s6 != 0) {
            goto loop_10;
        }
    }
    temp_v0_3 = phi_s2_2->unk2;
    if (temp_v0_3 != 0) {
        func_8000D518(temp_v0_3 & 0xFFFF, phi_s2_2->unk24);
    }
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk0 = 0x6000000;
    temp_v1_2->unk4 = 0x10000E8;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk0 = 0xBC000008;
    temp_a1_2 = *(void *)0x8007B318;
    temp_a2_2 = *(void *)0x8007B31A - temp_a1_2;
    temp_v0_4->unk4 = (s32) ((((0x1F400 / temp_a2_2) & 0xFFFF) << 0x10) | (((s32) ((-(s32) temp_a1_2 << 8) + 0x1F400) / temp_a2_2) & 0xFFFF));
    *(void *)0x80084F34 = 0;
    *(void *)0x800828F0 = (void *)0x80082C80;
    temp_s6_2 = *(void *)0x800828D8;
    if (temp_s6_2 != 0) {
        temp_f30 = *(void *)0x800711F0;
        phi_s6_3 = temp_s6_2;
loop_20:
        temp_v0_5 = *(void *)0x800828F0;
        temp_s1 = *temp_v0_5;
        *(void *)0x800828F0 = (void *) (temp_v0_5 + 4);
        temp_v1_3 = temp_s1->unk16;
        temp_f20 = temp_s1->unk0;
        temp_f24 = temp_s1->unk4;
        temp_f22 = temp_s1->unk8;
        temp_f26 = temp_s1->unkC;
        if ((temp_v1_3 & 0x2000) != 0) {
            temp_a3_2 = temp_v1_3 & 0xF00;
            temp_a2_3 = temp_v1_3 & 0xFF;
            temp_s3 = ((temp_a3_2 >> 8) << 5) + 0x800566FC;
            temp_t1 = (temp_a2_3 + 1) & 0xFFFF;
            func_80022B40(temp_s3, (void *)0x80082C48, temp_a2_3, temp_a3_2);
            temp_f0_2 = temp_s1->unk10;
            phi_v0 = temp_t1;
            if (temp_t1 >= (s32) temp_s3->unk6) {
                phi_v0 = 0;
            }
            temp_s1->unk16 = (u16) ((temp_s1->unk16 & 0xFF00) | phi_v0);
            phi_f26 = temp_f26;
            phi_f20 = temp_f20 + ((void *)0x80082C48->unk0 * temp_f0_2);
            phi_f24 = temp_f24 + ((void *)0x80082C48->unk4 * temp_f0_2);
            phi_f22 = temp_f22 + ((void *)0x80082C48->unk8 * temp_f0_2);
        } else {
            phi_f26 = temp_f26;
            phi_f20 = temp_f20;
            phi_f24 = temp_f24;
            phi_f22 = temp_f22;
            if ((temp_v1_3 & 0x100) != 0) {
                temp_v0_6 = func_8000DB38(temp_s1);
                phi_f26 = temp_f26;
                phi_f20 = temp_f20;
                phi_f24 = temp_f24;
                phi_f22 = temp_f22;
                if (temp_v0_6 != 0) {
                    temp_s0_2 = (temp_v0_6 * 0x1C) + 0x80084E60;
                    temp_f18 = temp_s0_2->unk-8;
                    (void *)0x80082C18->unk4 = 0.0f;
                    (void *)0x80082C18->unk0 = temp_f18;
                    func_800232F4((f32) ((f64) temp_s1->unkC * temp_f30), (void *)0x80082C18);
                    phi_f26 = temp_f26 + temp_s0_2->unk-4;
                    phi_f20 = temp_f20 - (void *)0x80082C18->unk0;
                    phi_f24 = temp_f24;
                    phi_f22 = temp_f22 - (void *)0x80082C18->unk4;
                }
            }
        }
        func_80035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0.0f, phi_f26, 0.0f, temp_s1->unk10, phi_f20, phi_f24, phi_f22);
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk0 = 0x1020040;
        temp_v0_7->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
        temp_v0_8->unk0 = 0x6000000;
        temp_v0_8->unk4 = (s32) (*(void *)0x80084F28 + (temp_s1->unk14 << 5))->unk10;
        temp_s6_3 = phi_s6_3 - 1;
        *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        phi_s6_3 = temp_s6_3;
        if (temp_s6_3 != 0) {
            goto loop_20;
        }
    }
    temp_s6_4 = *(void *)0x800828DC;
    *(void *)0x800828F0 = (void *)0x80083080;
    phi_s6_4 = temp_s6_4;
    if (temp_s6_4 != 0) {
loop_29:
        temp_v0_9 = *(void *)0x800828F0;
        temp_s1_2 = *temp_v0_9;
        *(void *)0x800828F0 = (void *) (temp_v0_9 + 4);
        func_80035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_s1_2->unkC, 0, temp_s1_2->unk10, temp_s1_2->unk0, temp_s1_2->unk4, temp_s1_2->unk8);
        temp_v0_10 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
        temp_v0_10->unk0 = 0x1020040;
        temp_v0_10->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk0 = 0x6000000;
        temp_v0_11->unk4 = (s32) (*(void *)0x80084F28 + (temp_s1_2->unk14 << 5))->unk10;
        temp_s6_5 = phi_s6_4 - 1;
        *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        phi_s6_4 = temp_s6_5;
        if (temp_s6_5 != 0) {
            goto loop_29;
        }
    }
    func_8000E588(arg0);
    if (*(void *)0x800828E0 != 0) {
        temp_v0_12 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
        temp_v0_12->unk4 = 0;
        temp_v0_12->unk0 = 0xE7000000;
        temp_v0_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
        temp_v0_13->unk4 = 0xC8113078;
        temp_v0_13->unk0 = 0xB900031D;
        *(void *)0x800828F8 = 0x80084F40;
        func_8000DDB0(arg0, *(void *)0x800828E0, 0, 0x80084F40);
        func_8000DDB0(arg0, *(void *)0x800828E0, 1, *(void *)0x800828F8);
        func_8000DDB0(arg0, *(void *)0x800828E0, 2, *(void *)0x800828F8);
        func_8000DDB0(arg0, *(void *)0x800828E0, 3, *(void *)0x800828F8);
    }
    temp_v0_14 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
    temp_v0_14->unk4 = 0x2000;
    temp_v0_14->unk0 = 0xBA000C02;
    temp_v0_15 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
    temp_v0_15->unk4 = 0;
    temp_v0_15->unk0 = 0xBA000E02;
    phi_v1 = (void *)0x80082C70;
    phi_a0 = (void *)0x8004C2D4;
loop_33:
    temp_a0 = phi_a0 + 4;
    temp_v1_4 = phi_v1 + 4;
    temp_v1_4->unk-4 = (s16) (phi_v1->unk0 + phi_a0->unk0);
    temp_v1_4->unk-2 = (s16) (phi_v1->unk2 + phi_a0->unk2);
    phi_v1 = temp_v1_4;
    phi_a0 = temp_a0;
    if ((u32) temp_a0 < 0x8004C2E4U) {
        goto loop_33;
    }
    *(void *)0x80082908 = 0;
    func_8000EB30(temp_a0);
    func_8000EDD8();
    temp_s0_3 = *(void *)0x80084ED8;
    if (temp_s0_3 == -1) {
        phi_s0 = temp_s0_3;
        phi_s1_2 = (void *)0x80084EDC;
        if (temp_s0_3 != *(void *)0x80084EDC) {
            func_8002650C();
block_43:
            phi_s0 = (void *)0x80080000->unk4ED8;
        }
    } else {
        temp_f0_3 = (f64) *(void *)0x80084ED4;
        if (200.0 < temp_f0_3) {
            phi_s6_5 = (s32) ((*(void *)0x800711F8 - temp_f0_3) * *(void *)0x80071200);
        } else {
            phi_s6_5 = 0xFF;
        }
        if (phi_s6_5 >= 2) {
            func_8002699C(((temp_s0_3 * 4) + 0x80050000)->unk-3D15, phi_s6_5 & 0xFF);
        } else {
            func_8002650C();
            *(void *)0x80084EDC = -1;
            *(void *)0x80084ED8 = -1;
        }
        goto block_43;
    }
    *phi_s1_2 = phi_s0;
}

void *func_8000CE8C(s32 arg0) {
    s16 temp_s4;
    s16 temp_s4_2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_t3;
    u16 temp_a1;
    void *temp_a2;
    void *temp_a3;
    void *temp_t1;
    void *temp_v0;
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
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_2;
    s32 phi_s3;
    s32 phi_t0;
    s32 phi_t0_2;
    s32 phi_t3;
    s32 phi_s3_2;

    *(void *)0x800828FC = (void *)0x80083488;
    temp_s3 = *(void *)0x800828E4;
    if (temp_s3 != 0) {
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0;
        temp_v0_2->unk0 = 0xE7000000;
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk0 = 0xB900031D;
        temp_v0_3->unk4 = 0xC1849D8;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk0 = 0xFB000000;
        temp_v0_4->unk4 = (?32) (*(void *)0x80084EE4 + 0x80060000)->unk-1018;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0x2000;
        temp_v0_5->unk0 = 0xBA000C02;
    }
    if (temp_s3 != 0) {
        phi_s3 = temp_s3;
loop_4:
        temp_v1 = *(void *)0x800828FC;
        temp_v0_6 = *temp_v1;
        *(void *)0x800828FC = (void *) (temp_v1 + 4);
        temp_s4 = temp_v0_6->unk14;
        func_80035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_v0_6->unkC, 0, temp_v0_6->unk10, temp_v0_6->unk0, temp_v0_6->unk4, temp_v0_6->unk8);
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk0 = 0x1020040;
        temp_v0_7->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
        temp_v0_8->unk0 = 0x6000000;
        temp_v0_8->unk4 = (s32) (*(void *)0x80084F28 + (temp_s4 << 5))->unk10;
        temp_s3_2 = phi_s3 - 1;
        *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        phi_s3 = temp_s3_2;
        if (temp_s3_2 != 0) {
            goto loop_4;
        }
    }
    if (*(void *)0x800828EC != 0) {
        temp_v0_9 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
        temp_v0_9->unk0 = 0xFB000000;
        temp_v0_9->unk4 = (?32) (*(void *)0x80084EE4 + 0x80060000)->unk-1018;
        temp_v0_10 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
        temp_v0_10->unk4 = 0xC81049D8;
        temp_v0_10->unk0 = 0xB900031D;
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk4 = -8;
        temp_v0_11->unk0 = 0xFC121A04;
    }
    *(void *)0x80082904 = (void *)0x80083C90;
    if (*(void *)0x800828EC != 0) {
        phi_s3_2 = *(void *)0x800828EC;
loop_9:
        temp_v1_2 = *(void *)0x80082904;
        temp_v0_12 = *temp_v1_2;
        *(void *)0x80082904 = (void *) (temp_v1_2 + 4);
        temp_s4_2 = temp_v0_12->unk14;
        temp_s2 = (temp_v0_12->unk16 & 0xFF) - 0x40;
        func_80035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_v0_12->unkC, 0, temp_v0_12->unk10, temp_v0_12->unk0, temp_v0_12->unk4, temp_v0_12->unk8);
        temp_v0_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
        temp_v0_13->unk0 = 0x1020040;
        temp_v0_13->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
        temp_v0_14->unk0 = 0xFD10001F;
        temp_v0_14->unk4 = (s32) ((temp_s2 * 4) + 0x80050000)->unk-3CEC;
        temp_a2 = *(void *)0x8007B2FC;
        temp_a3 = (temp_s2 * 2) + 0x8004C328;
        *(void *)0x8007B2FC = (void *) (temp_a2 + 8);
        temp_a2->unk0 = 0xF5101000;
        phi_t0 = 6;
        if (0x20 == *temp_a3) {
            phi_t0 = 5;
        }
        temp_a2->unk4 = (s32) ((((phi_t0 & 0xF) << 0xE) | 0x7000000) | 0x50);
        temp_v0_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
        temp_v0_15->unk4 = 0;
        temp_v0_15->unk0 = 0xE6000000;
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk0 = 0xF4000000;
        temp_v0_16->unk4 = (s32) ((((*temp_a3 - 1) * 4) & 0xFFF) | 0x707C000);
        temp_v0_17 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk4 = 0;
        temp_v0_17->unk0 = 0xE7000000;
        temp_t1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_t1 + 8);
        temp_t1->unk0 = 0xF5101000;
        phi_t0_2 = 6;
        if (0x20 == *temp_a3) {
            phi_t0_2 = 5;
        }
        temp_t1->unk4 = (s32) (((phi_t0_2 & 0xF) << 0xE) | 0x50);
        temp_v0_18 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk0 = 0xF2000000;
        temp_v0_18->unk4 = (s32) ((((*temp_a3 - 1) * 4) & 0xFFF) | 0x7C000);
        temp_v0_19 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
        temp_a1 = *(void *)0x8004C310;
        temp_t3 = temp_a1 & 0xFF;
        phi_t3 = temp_t3;
        if ((s32) temp_a1 < 0) {
            phi_t3 = temp_t3;
            if (temp_t3 != 0) {
                phi_t3 = temp_t3 - 0x100;
            }
        }
        temp_v0_19->unk0 = (s32) (((phi_t3 * 4) & 0xFFF) | 0xF2000000);
        temp_v0_19->unk4 = (s32) ((((*temp_a3 + phi_t3) * 4) & 0xFFF) | 0x80000);
        temp_v0_20 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
        temp_v0_20->unk0 = 0x6000000;
        temp_v0_20->unk4 = (s32) (*(void *)0x80084F28 + (temp_s4_2 << 5))->unk10;
        temp_s3_3 = phi_s3_2 - 1;
        *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        phi_s3_2 = temp_s3_3;
        if (temp_s3_3 != 0) {
            goto loop_9;
        }
    }
    if (*(void *)0x800828E8 != 0) {
        temp_v0_21 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
        temp_v0_21->unk4 = 0;
        temp_v0_21->unk0 = 0xE7000000;
        temp_v0_22 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
        temp_v0_22->unk4 = 0xC1849D8;
        temp_v0_22->unk0 = 0xB900031D;
        temp_v0_23 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
        temp_v0_23->unk4 = 0x2000;
        temp_v0_23->unk0 = 0xBA000C02;
        *(void *)0x80082900 = 0x80083888;
        func_8000E774(arg0, *(void *)0x800828E8, 0x11, 0x80083888);
        func_8000E774(arg0, *(void *)0x800828E8, 0x12, *(void *)0x80082900);
    }
    *(void *)0x8004C2D0 = (u16) (*(void *)0x8004C2D0 + 1);
    temp_v0_24 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
    temp_v0_24->unk4 = 0;
    temp_v0_24->unk0 = 0xE7000000;
    temp_v0_25 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
    temp_v0_25->unk4 = 0x2000;
    temp_v0_25->unk0 = 0xBA000C02;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xBA000E02;
    *(void *)0x8004C310 = (u16) (*(void *)0x8004C310 + 2);
    return temp_v0;
}

void func_8000D518(s32 arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_s6;
    s32 temp_v0;
    u16 temp_a0;
    void *temp_s0;
    void *temp_s2;
    void *temp_t8;
    void *phi_s7;
    s32 phi_v1;
    s32 phi_s6;

    if (arg0 != 0) {
        phi_s7 = arg1;
        phi_s6 = arg0;
loop_2:
        temp_s0 = (*phi_s7 * 0x18) + *(void *)0x80084F24;
        if ((temp_s0->unk16 & 0x1000) != 0) {
            temp_f0 = temp_s0->unk0 - (void *)0x8007BAB8->unk14;
            temp_f2 = temp_s0->unk4 - (void *)0x8007BAB8->unk18;
            temp_f14 = temp_s0->unk8 - (void *)0x8007BAB8->unk1C;
            temp_f0_2 = sqrtf(((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) + (temp_f14 * temp_f14), temp_f14);
            if (temp_f0_2 < *(void *)0x80084ED4) {
                *(void *)0x80084ED4 = temp_f0_2;
                *(void *)0x80084ED8 = (s32) ((s32) (temp_s0->unk16 & 0xF00) >> 8);
            }
        }
        temp_a0 = temp_s0->unk16;
        if ((temp_a0 & 0x2000) != 0) {
            phi_v1 = 0;
        } else {
            phi_v1 = temp_a0 & 0xFF;
        }
        if ((phi_v1 == 0) || (temp_v0 = phi_v1, (phi_v1 == 8))) {
            if ((temp_a0 & 0x4000) != 0) {
                **(void *)0x800828F4 = temp_s0;
                *(void *)0x800828F4 = (void *) (*(void *)0x800828F4 + 4);
                *(void *)0x800828DC = (s32) (*(void *)0x800828DC + 1);
            } else {
                **(void *)0x800828F0 = temp_s0;
                *(void *)0x800828F0 = (void *) (*(void *)0x800828F0 + 4);
                *(void *)0x800828D8 = (s32) (*(void *)0x800828D8 + 1);
            }
        } else {
            if (temp_v0 < 4) {
                temp_s1 = phi_v1 * 4;
                if (*(void *)0x80082908 != 0) {
                    temp_t8 = *(void *)0x80082C10;
                    temp_t8->unk0 = (bitwise s32) temp_s0->unk0;
                    temp_t8->unk4 = (bitwise s32) temp_s0->unk4;
                    temp_t8->unk8 = (bitwise s32) temp_s0->unk8;
                    temp_t8->unkC = (s32) temp_s0->unkC;
                    temp_t8->unk10 = (s32) temp_s0->unk10;
                    temp_t8->unk14 = (s32) temp_s0->unk14;
                }
                temp_s2 = temp_s1 + 0x80082C70;
                temp_s0->unk0 = (f32) (((f32) func_80035190((temp_s2->unk0 + 0xA000) & 0xFFFF) / (temp_s1 + 0x80050000)->unk-3CCC) + (*(void *)0x80082C10)->unk0);
                temp_s0->unk8 = (f32) (((f32) func_80035190((temp_s2->unk0 + 0x2000) & 0xFFFF) / (temp_s1 + 0x80050000)->unk-3CAC) + (*(void *)0x80082C10)->unk8);
                temp_s0->unk4 = (f32) (((f32) func_80035190(temp_s2->unk2) / (temp_s1 + 0x80050000)->unk-3CBC) + (*(void *)0x80082C10)->unk4);
                **(void *)0x800828FC = temp_s0;
                *(void *)0x800828FC = (void *) (*(void *)0x800828FC + 4);
                *(void *)0x800828E4 = (s32) (*(void *)0x800828E4 + 1);
                *(void *)0x80082C10 = (void *) (*(void *)0x80082C10 + 0x18);
            } else {
                if ((temp_v0 == 0x11) || (temp_v0 == 0x12)) {
                    **(void *)0x80082900 = temp_s0;
                    *(void *)0x80082900 = (void *) (*(void *)0x80082900 + 4);
                    *(void *)0x800828E8 = (s32) (*(void *)0x800828E8 + 1);
                } else {
                    if (temp_v0 == 0x10) {
                        **(void *)0x800828F8 = temp_s0;
                        *(void *)0x800828F8 = (void *) (*(void *)0x800828F8 + 4);
                        *(void *)0x800828E0 = (s32) (*(void *)0x800828E0 + 1);
                        *(void *)0x80084F38 = (s32) (*(void *)0x80084F38 + 1);
                    } else {
                        if ((temp_v0 == 0x7F) || (temp_v0 == 0x80)) {
                            **(void *)0x800828FC = temp_s0;
                            *(void *)0x800828FC = (void *) (*(void *)0x800828FC + 4);
                            *(void *)0x800828E4 = (s32) (*(void *)0x800828E4 + 1);
                        } else {
                            if (temp_v0 == 0x81) {
                                func_80018918(temp_s0->unk0, temp_s0->unk4, temp_a0, (bitwise s32) temp_s0->unk8, temp_s0);
                            } else {
                                if (temp_v0 == 0x83) {
                                    func_8000E10C(temp_s0, temp_s0);
                                } else {
                                    if (temp_v0 == 0x84) {
                                        func_8000E2C0(temp_s0, temp_s0);
                                    } else {
                                        if (temp_v0 == 0x82) {
                                            func_8000E418(temp_s0->unk0, temp_s0->unk4, temp_a0, (bitwise s32) temp_s0->unk8, temp_s0->unkC, temp_s0);
                                        } else {
                                            if (temp_v0 >= 0x40) {
                                                if (temp_v0 < 0x46) {
                                                    **(void *)0x80082904 = temp_s0;
                                                    *(void *)0x80082904 = (void *) (*(void *)0x80082904 + 4);
                                                    *(void *)0x800828EC = (s32) (*(void *)0x800828EC + 1);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        temp_s6 = phi_s6 - 1;
        phi_s7 = phi_s7 + 2;
        phi_s6 = temp_s6;
        if (temp_s6 != 0) {
            goto loop_2;
        }
    }
}

void *func_8000D9BC(s32 arg0) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    func_80023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, 0, 0, 1.0f, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10 - 10.0f, (void *)0x80086DC0->unk14);
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x1020040;
    temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk0 = 0xFB000000;
    temp_v0_3->unk4 = (s32) ((((*(void *)0x80085BB0 << 0x18) | ((*(void *)0x80085BB4 & 0xFF) << 0x10)) | ((*(void *)0x80085BB8 & 0xFF) << 8)) | 0xFF);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = (s32) (((*(void *)0x800859E4)->unk1C * 8) + 0x80060000)->unk-1054;
    return temp_v0;
}

void *func_8000DB10(void) {
    void *temp_v0;
    void *phi_v0;
    s32 phi_a0;

    phi_v0 = (void *)0x80084E60;
    phi_a0 = 3;
loop_1:
    *phi_v0 = 0;
    temp_v0 = phi_v0 + 0x1C;
    phi_v0 = temp_v0;
    phi_a0 = phi_a0 - 1;
    if (phi_a0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_8000DB38(s32 arg0) {
    s32 temp_v1;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_v0 = (void *)0x80084E60;
    phi_v1 = 4;
loop_1:
    if ((phi_v0->unk0 != 0) && (arg0 == phi_v0->unk10)) {
        phi_v1_2 = 5 - phi_v1;
    } else {
        temp_v1 = phi_v1 - 1;
        phi_v0 = phi_v0 + 0x1C;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0) {
            goto loop_1;
        }
    }
    return phi_v1_2;
}

f32 func_8000DB7C(s32 arg0, s32 arg1, s32 arg2, ?32 arg3) {
    s32 temp_t8;
    s32 temp_v0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    void *phi_v0_2;
    f32 phi_return;

    phi_v0 = 3;
    phi_v1 = (void *)0x80084E60;
    phi_v1_2 = (void *)0x80084E60;
    if (*(void *)0x80084E60 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x1C;
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
    phi_v1_2->unk4 = arg0;
    phi_v1_2->unk8 = arg1;
    phi_v1_2->unkC = arg2;
    phi_v1_2->unk10 = arg3;
    phi_v1_2->unk18 = 0.0f;
    phi_v1_2->unk14 = 0.0f;
    if (arg0 != 0) {
        temp_t8 = (arg2 >> 8) & 0xF;
        if ((temp_t8 != 2) && (temp_t8 != 3)) {
            if (temp_t8 != 4) {
                phi_v0_2 = sp4;
                phi_return = (bitwise f32) sp4;
            } else {
                phi_v0_2 = (void *)0x80056368;
                phi_return = (bitwise f32) (void *)0x80056368;
            }
        } else {
            if ((phi_v1_2->unkC & 1) != 0) {
                phi_v0_2 = (void *)0x800562E0;
                phi_return = (bitwise f32) (void *)0x800562E0;
            } else {
                phi_v0_2 = (void *)0x80055D58;
                phi_return = (bitwise f32) (void *)0x80055D58;
            }
        }
        phi_v1_2->unk0 = (s32) ((phi_v0_2->unk6 - arg1) + 1);
        return phi_return;
    }
    phi_v1_2->unk0 = 7;
    return 0.0f;
}

void func_8000DC4C(void) {
    s32 sp44;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v1;
    void *phi_s0;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s2_2;
    s32 phi_s2_3;

    phi_s0 = (void *)0x80084E60;
    phi_s1 = 4;
    phi_s2_3 = sp44;
loop_1:
    temp_v1 = phi_s0->unk0;
    phi_s2_2 = phi_s2_3;
    if (temp_v1 != 0) {
        temp_v0 = phi_s0->unk4;
        temp_t6 = temp_v1 - 1;
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                phi_s2_2 = phi_s2_3;
            } else {
                temp_a0 = phi_s0->unkC;
                phi_s0->unk0 = (s32) (temp_v1 - 1);
                temp_t2 = (temp_a0 >> 8) & 0xF;
                if ((temp_t2 != 2) && (temp_t2 != 3)) {
                    if (temp_t2 != 4) {
                        phi_s2 = phi_s2_3;
                    } else {
                        phi_s2 = 0x80056368;
                    }
                } else {
                    if ((temp_a0 & 1) != 0) {
                        phi_s2 = 0x800562E0;
                    } else {
                        phi_s2 = 0x80055D58;
                    }
                }
                temp_a2 = phi_s0->unk8;
                phi_s0->unk8 = (s32) (temp_a2 + 1);
                func_80022B40(phi_s2, (void *)0x80082C48, temp_a2);
                phi_s0->unk14 = (f32) (void *)0x80082C48->unk0;
                phi_s0->unk18 = (f32) (void *)0x80082C48->unkC;
                phi_s2_2 = phi_s2;
            }
        } else {
            phi_s0->unk0 = temp_t6;
            phi_s2_2 = phi_s2_3;
            if (temp_t6 == 0) {
                phi_s0->unk0 = 0x50;
                phi_s0->unk4 = (s32) (phi_s0->unk4 + 1);
                phi_s2_2 = phi_s2_3;
            }
        }
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x1C;
    phi_s1 = temp_s1;
    phi_s2_3 = phi_s2_2;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    sp44 = phi_s2_2;
}

void *func_8000DDB0(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    ? spB0;
    s32 spA4;
    s32 spA0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_ret;
    f32 temp_ret_2;
    f64 temp_f24;
    f64 temp_f26;
    f64 temp_f2;
    f64 temp_f30;
    s32 temp_s4;
    void *temp_ret_3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1;
    void *phi_s5;
    f32 phi_f12;
    f32 phi_f12_2;
    s32 phi_s3;
    s32 phi_s4;
    void *phi_return;
    void *phi_return_2;

    temp_v0 = (*(void *)0x80084F18)->unk20 + (arg2 * 8);
    spA4 = temp_v0->unk0;
    spA0 = temp_v0->unk4;
    phi_return = temp_v0;
    if (arg1 != 0) {
        temp_f30 = *(void *)0x80071208;
        temp_f26 = *(void *)0x80071210;
        temp_f24 = *(void *)0x80071218;
        phi_s5 = arg3;
        phi_s3 = 0;
        phi_s4 = arg1;
        phi_return_2 = temp_v0;
loop_2:
        temp_s0 = *phi_s5;
        if (arg2 == temp_s0->unk14) {
            temp_f20 = temp_s0->unk0 - (void *)0x80086DC0->unkC;
            temp_f22 = temp_s0->unk8 - (void *)0x80086DC0->unk14;
            temp_ret = sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22));
            phi_return_2 = (bitwise void *) temp_ret;
            if (temp_ret < *(void *)0x80071220) {
                temp_ret_2 = func_80023210(temp_f20, temp_f22);
                temp_f12 = (f32) ((f64) (temp_ret_2 - (void *)0x80086DC0->unk2C) + temp_f24);
                temp_f2 = (f64) temp_f12;
                if (temp_f2 < temp_f30) {
                    phi_f12 = (f32) (temp_f2 + temp_f26);
                } else {
                    phi_f12 = temp_f12;
                    if (temp_f24 < temp_f2) {
                        phi_f12 = (f32) (temp_f2 - temp_f26);
                    }
                }
                phi_f12_2 = phi_f12;
                if (phi_f12 < 0.0f) {
                    phi_f12_2 = -phi_f12;
                }
                temp_f12_2 = (f32) ((f64) phi_f12_2 * *(void *)0x80071228);
                phi_return_2 = (bitwise void *) temp_ret_2;
                if (temp_f12_2 < *(void *)0x80086EC8) {
                    if (phi_s3 == 0) {
                        temp_v0_2 = *(void *)0x8007B2FC;
                        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
                        temp_v0_2->unk0 = 0x6000000;
                        temp_v0_2->unk4 = spA4;
                        temp_v0_3 = *(void *)0x8007B2FC;
                        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                        temp_v0_3->unk4 = 0x2000;
                        temp_v0_3->unk0 = 0xBA000C02;
                        phi_s3 = phi_s3 + 1;
                    }
                    func_80023360(temp_f12_2, (void *)0x80086DC0->unk2C, &spB0, 0.0f, (void *)0x80086DC0->unk2C, 0.0f, temp_s0->unk10, temp_s0->unk0, temp_s0->unk4, temp_s0->unk8);
                    func_80035200(&spB0, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
                    temp_v0_4 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
                    temp_v0_4->unk0 = 0x1020040;
                    temp_v0_4->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
                    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
                    temp_v0_5 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
                    temp_v0_5->unk0 = 0x6000000;
                    temp_v0_5->unk4 = spA0;
                    temp_v1 = ((s32) temp_s0->unkC * 0xC) + 0x80084260;
                    temp_ret_3 = func_80011860(temp_s0->unk0, temp_s0->unk4, (bitwise s32) temp_s0->unk8, temp_v1->unk0, temp_v1->unk4, temp_v1->unk8, 8.0f);
                    *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
                    phi_return_2 = temp_ret_3;
                }
            }
        }
        temp_s4 = phi_s4 - 1;
        phi_s5 = phi_s5 + 4;
        phi_s4 = temp_s4;
        phi_return = phi_return_2;
        if (temp_s4 != 0) {
            goto loop_2;
        }
    }
    return phi_return;
}

void func_8000E10C(void *arg0) {
    f32 temp_f6;
    f64 temp_f0;

    arg0->unk14 = (s16) (arg0->unk14 + 1);
    if ((s32) arg0->unk14 >= 0) {
        *(void *)0x8004C37C = (f32) arg0->unk0;
        *(void *)0x8004C380 = (f32) arg0->unk4;
        *(void *)0x8004C384 = (f32) arg0->unk8;
        temp_f6 = (f32) ((f64) arg0->unk10 * 10.0);
        *(void *)0x8004C390 = temp_f6;
        *(void *)0x8004C38C = temp_f6;
        (void *)0x80082C18->unk4 = 0.0f;
        temp_f0 = (f64) arg0->unk10;
        (void *)0x80082C18->unk0 = (f32) (temp_f0 + temp_f0);
        func_800232F4(arg0->unkC, (void *)0x80082C18);
        *(void *)0x8004C394 = (f32) (void *)0x80082C18->unk0;
        *(void *)0x8004C39C = (f32) (void *)0x80082C18->unk4;
        *(void *)0x8004C374 = (s32) ((arg0->unk14 << 0xA) + 0x8005CD58);
        func_8001B108(0x8004C364, (void *)0x80082C18);
        if ((s32) arg0->unk14 >= 7) {
            arg0->unk14 = (s16) (func_80022FD0(0x3C) - 0x78);
        }
    }
}

void *func_8000E224(void *arg0) {
    f32 temp_f0;
    void *temp_v0;
    s32 phi_v1;

    temp_f0 = arg0->unk34;
    arg0->unk18 = (f32) (arg0->unk18 + arg0->unk30);
    arg0->unk1C = (f32) (arg0->unk1C + temp_f0);
    arg0->unk20 = (f32) (arg0->unk20 + arg0->unk38);
    arg0->unk34 = (f32) ((f64) temp_f0 - *(void *)0x80071230);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0xFB000000;
    phi_v1 = 0x78;
    if ((*(void *)0x80084ED0 & 1) != 0) {
        phi_v1 = 0xDC;
    }
    temp_v0->unk4 = (s32) ((phi_v1 & 0xFF) | -0x100);
    return temp_v0;
}

void func_8000E2C0(void *arg0) {
    f32 temp_f10;
    void *temp_a1;

    temp_a1 = arg0;
    temp_a1->unk14 = (s16) (temp_a1->unk14 - 1);
    if (temp_a1->unk14 == 0) {
        *(void *)0x8004C3BC = (f32) temp_a1->unk0;
        *(void *)0x8004C3C0 = (f32) temp_a1->unk4;
        *(void *)0x8004C3C4 = (f32) temp_a1->unk8;
        temp_f10 = temp_a1->unk10;
        arg0 = temp_a1;
        *(void *)0x8004C3D0 = temp_f10;
        *(void *)0x8004C3CC = (f32) *(void *)0x8004C3D0;
        func_8001B108(0x8004C3A4, temp_a1);
        arg0->unk14 = (s16) (func_80022FD0(0x96) + 0x96);
    }
}

f32 func_8000E350(void *arg0) {
    f32 temp_f0;
    void *temp_v1;

    temp_f0 = arg0->unk34;
    arg0->unk1C = (f32) (arg0->unk1C + (temp_f0 / 2.0f));
    arg0->unk34 = (f32) ((f64) temp_f0 - *(void *)0x80071238);
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0xFB000000;
    temp_v1->unk4 = (s32) (((arg0->unk0 * 5) & 0xFF) | -0x100);
    return temp_f0;
}

s32 func_8000E3C4(void) {
    s32 temp_v0;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x8007D2D0 = 0;
    phi_a0 = (void *)0x80084180;
    phi_v1 = (void *)0x80084098;
    phi_v0 = 8;
loop_1:
    phi_a0->unk0 = 0;
    phi_v1->unk0 = 0;
    phi_a0->unk1C = 0;
    phi_v1->unk1C = 0;
    phi_a0->unk38 = 0;
    phi_v1->unk38 = 0;
    phi_a0->unk54 = 0;
    temp_v0 = phi_v0 - 4;
    phi_v1->unk54 = 0;
    phi_a0 = phi_a0 + 0x70;
    phi_v1 = phi_v1 + 0x70;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

void *func_8000E418(f32 arg0, f32 arg1, f32 arg2, f32 arg3, s32 arg4) {
    void *sp18;
    s32 temp_a0;
    s32 temp_t6;
    s32 temp_v0;
    u32 temp_ret;
    void *temp_a1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    void *phi_v1;
    void *phi_v0;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v1_3;
    s32 phi_a1;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2F4;
    if (temp_v0 != 0) {
        phi_a1 = 0x80084098;
    } else {
        phi_a1 = 0x80084180;
    }
    if (temp_v0 != 0) {
        phi_v1 = (void *)0x80084180;
    } else {
        phi_v1 = (void *)0x80084098;
    }
    temp_a0 = *(void *)0x8007D2D4;
    phi_return = (void *)0x80080000;
    if (temp_a0 < 8) {
        temp_v0_2 = *(void *)0x8007D2D0;
        temp_t6 = temp_a0 * 0x1C;
        temp_a1 = phi_a1 + temp_t6;
        phi_v0_2 = temp_v0_2;
        phi_v1_3 = phi_v1;
        phi_return = temp_v0_2;
        if (temp_v0_2 != 0) {
            phi_v0 = temp_v0_2;
            phi_v1_2 = phi_v1;
            phi_v0_2 = temp_v0_2;
            phi_v1_3 = phi_v1;
            phi_return = temp_v0_2;
            if (arg4 != phi_v1->unk18) {
loop_9:
                temp_v0_3 = phi_v0 - 1;
                temp_v1 = phi_v1_2 + 0x1C;
                phi_v0_2 = temp_v0_3;
                phi_v1_3 = temp_v1;
                phi_return = temp_v0_3;
                if (temp_v0_3 != 0) {
                    phi_v0 = temp_v0_3;
                    phi_v1_2 = temp_v1;
                    phi_v0_2 = temp_v0_3;
                    phi_v1_3 = temp_v1;
                    phi_return = temp_v0_3;
                    if (arg4 != temp_v1->unk18) {
                        goto loop_9;
                    }
                }
            }
        }
        if (phi_v0_2 != 0) {
            temp_a1->unk0 = (s32) phi_v1_3->unk0;
            temp_a1->unk14 = (f32) phi_v1_3->unk14;
        } else {
            temp_a1->unk0 = 1;
            sp18 = temp_a1;
            temp_ret = func_80022FD0(8, temp_a1, arg4, (void *)0x8007D2D4);
            temp_a1->unk14 = (f32) (((f64) (f32) temp_ret * *(void *)0x80071240) / 4.0);
            phi_return = (void *) temp_ret;
        }
        (phi_a1 + temp_t6)->unk4 = arg0;
        (phi_a1 + temp_t6)->unk8 = arg1;
        (phi_a1 + temp_t6)->unkC = arg2;
        (phi_a1 + temp_t6)->unk18 = arg4;
        (phi_a1 + temp_t6)->unk10 = arg3;
        *(void *)0x8007D2D4 = (s32) (*(void *)0x8007D2D4 + 1);
    }
    return phi_return;
}

s32 func_8000E588(s32 arg0) {
    s32 temp_s4;
    s32 temp_v0;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_s1;
    s32 phi_s4;
    s32 phi_return;

    *(void *)0x8007D2D0 = (s32) *(void *)0x8007D2D4;
    phi_s1 = (void *)0x80084180;
    if (*(void *)0x8007B2F4 != 0) {
        phi_s1 = (void *)0x80084098;
    }
    temp_s4 = *(void *)0x8007D2D0;
    temp_v0 = temp_s4;
    phi_return = temp_v0;
    if (temp_s4 != 0) {
        phi_s4 = temp_s4 - 1;
loop_4:
        if (phi_s1->unk0 != 0) {
            temp_s0 = phi_s1->unk18;
            phi_s1->unk14 = (f32) ((f64) phi_s1->unk14 - *(void *)0x80071250);
            func_80023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, (f32) ((f64) phi_s1->unk10 * *(void *)0x80071248), (bitwise s32) phi_s1->unk14, temp_s0->unk10, temp_s0->unk0, temp_s0->unk4, temp_s0->unk8);
            temp_v0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
            temp_v0_2->unk0 = 0x1020040;
            temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk0 = 0x6000000;
            temp_v0_3->unk4 = (s32) (*(void *)0x80084F28 + (temp_s0->unk14 << 5))->unk10;
            *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        }
        phi_s1 = phi_s1 + 0x1C;
        phi_s4 = phi_s4 - 1;
        phi_return = phi_s4;
        if (phi_s4 != 0) {
            goto loop_4;
        }
    }
    return phi_return;
}

void func_8000E774(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 sp68;
    s32 sp60;
    s32 sp5C;
    s32 temp_a2;
    s32 temp_s5;
    u16 temp_a1;
    void *temp_a0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s2;
    void *temp_t2;
    void *temp_v1;
    void *phi_s6;
    s32 phi_s4;
    s32 phi_v0;
    s32 phi_t4;
    s32 phi_t1;
    s32 phi_t3;
    s32 phi_s5;

    sp68 = arg2 - 0x11;
    sp5C = ((arg2 * 8) + 0x80060000)->unk-3784;
    sp60 = ((arg2 * 4) + 0x80060000)->unk-36F4;
    if (arg1 != 0) {
        phi_s6 = arg3;
        phi_s4 = 0;
        phi_s5 = arg1;
loop_2:
        temp_s2 = *phi_s6;
        if (arg2 == (temp_s2->unk16 & 0xFF)) {
            temp_t2 = (arg2 * 2) + 0x8004C3E4;
            if (phi_s4 == 0) {
                temp_s0 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_s0 + 8);
                temp_s0->unk0 = 0x6000000;
                temp_s0->unk4 = (s32) ((sp68 * 8) + 0x80060000)->unk-3700;
                phi_s4 = phi_s4 + 1;
            }
            temp_s0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_2 + 8);
            temp_s0_2->unk0 = 0xFD500000;
            temp_s0_2->unk4 = (s32) *(sp60 + ((((s32) temp_s2->unk14 >> 1) & 7) * 4));
            temp_v1 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
            temp_v1->unk4 = 0x7000000;
            temp_v1->unk0 = 0xF5500000;
            temp_a0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
            temp_a0->unk4 = 0;
            temp_a0->unk0 = 0xE6000000;
            temp_s0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_3 + 8);
            temp_s0_3->unk0 = 0xF3000000;
            temp_a1 = temp_t2->unk-22;
            temp_a2 = ((s32) ((temp_a1 << 5) + 1) >> 1) - 1;
            phi_t3 = 0x7FF;
            if (temp_a2 < 0x7FF) {
                phi_t3 = temp_a2;
            }
            phi_v0 = (s32) temp_a1 >> 3;
            if ((s32) temp_a1 < 0) {
                phi_v0 = (s32) (temp_a1 + 7) >> 3;
            }
            if (phi_v0 <= 0) {
                phi_t4 = 1;
            } else {
                phi_t4 = phi_v0;
            }
            if (phi_v0 <= 0) {
                phi_t1 = 1;
            } else {
                phi_t1 = phi_v0;
            }
            temp_s0_3->unk4 = (s32) (((((s32) (phi_t4 + 0x7FF) / phi_t1) & 0xFFF) | 0x7000000) | ((phi_t3 & 0xFFF) << 0xC));
            temp_s0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_4 + 8);
            temp_s0_4->unk4 = 0;
            temp_s0_4->unk0 = 0xE7000000;
            temp_s0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_5 + 8);
            temp_s0_5->unk0 = (s32) (((((s32) (temp_t2->unk-22 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_s0_5->unk4 = 0;
            temp_s0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_6 + 8);
            temp_s0_6->unk0 = 0xF2000000;
            temp_s0_6->unk4 = (s32) (((((temp_t2->unk-22 - 1) * 4) & 0xFFF) << 0xC) | 0x7C);
            func_80023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, *(void *)0x80086DEC, 0, temp_s2->unk10, temp_s2->unk0, temp_s2->unk4, temp_s2->unk8);
            temp_s0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_7 + 8);
            temp_s0_7->unk0 = 0x1020040;
            temp_s0_7->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_s0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_8 + 8);
            temp_s0_8->unk0 = 0xFB000000;
            temp_s0_8->unk4 = (?32) ((temp_s2->unk14 & 3) + 0x80050000)->unk-3C18;
            temp_s0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_s0_9 + 8);
            temp_s0_9->unk0 = 0x6000000;
            temp_s0_9->unk4 = sp5C;
            temp_s2->unk14 = (s16) (temp_s2->unk14 + 1);
            *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        }
        temp_s5 = phi_s5 - 1;
        phi_s6 = phi_s6 + 4;
        phi_s5 = temp_s5;
        if (temp_s5 != 0) {
            goto loop_2;
        }
    }
}

s32 func_8000EB30(void) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    u16 temp_s1;
    u16 temp_t1;
    u16 temp_v1;
    void *temp_a1;
    void *temp_a1_2;
    void *phi_a1;
    void *phi_a1_2;
    void *phi_a2;
    void *phi_a3;
    void *phi_a1_3;
    s32 phi_t2;
    s32 phi_return;

    phi_a1_2 = (void *)0x8004C3F8;
    if (0xFF != (void *)0x8004C3F8->unk6) {
        temp_v0 = *(void *)0x800859D0;
        phi_a1 = (void *)0x8004C3F8;
loop_2:
        if ((temp_v0 >= phi_a1->unk0) && (temp_v0 < phi_a1->unk8)) {
            *(void *)0x8004C3EC = (s32) phi_a1->unk6;
            phi_a1_2 = phi_a1;
        } else {
            temp_a1 = phi_a1 + 8;
            phi_a1 = temp_a1;
            phi_a1_2 = temp_a1;
            if (0xFF != phi_a1->unkE) {
                goto loop_2;
            }
        }
    }
    temp_a0 = *(void *)0x8004C3EC;
    temp_a2 = *(void *)0x8004C3F4;
    if (temp_a0 != temp_a2) {
        *(void *)0x80083C88 = (void *) ((temp_a2 << 9) + 0x800820D8);
        temp_v1 = phi_a1_2->unk4;
        *(void *)0x80084090 = (void *) ((temp_a0 << 9) + 0x800820D8);
        *(void *)0x80084178 = (void *)0x80081CD8;
        *(void *)0x8004C3F0 = (s32) temp_v1;
        *(void *)0x80083480 = (s32) temp_v1;
    }
    temp_v0_2 = *(void *)0x8004C3F0;
    temp_v1_2 = *(void *)0x80083480;
    phi_return = temp_v0_2;
    if (temp_v0_2 != 0) {
        temp_t0 = temp_v1_2 - temp_v0_2;
        phi_a2 = *(void *)0x80083C88;
        phi_a3 = *(void *)0x80084090;
        phi_a1_3 = *(void *)0x80084178;
        phi_t2 = 0xFF;
loop_10:
        temp_t1 = *phi_a2;
        temp_s1 = *phi_a3;
        temp_a1_2 = phi_a1_3 + 2;
        temp_a1_2->unk-2 = (s16) (((((s32) (((((s32) (temp_t1 & 0xF800) >> 0xB) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0xF800) >> 0xB) & 0xFFFF) * temp_t0)) / temp_v1_2) << 0xB) | (((s32) (((((s32) (temp_t1 & 0x7C0) >> 6) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0x7C0) >> 6) & 0xFFFF) * temp_t0)) / temp_v1_2) << 6)) | (((s32) (((((s32) (temp_t1 & 0x3E) >> 1) & 0xFFFF) * temp_v0_2) + ((((s32) (temp_s1 & 0x3E) >> 1) & 0xFFFF) * temp_t0)) / temp_v1_2) * 2));
        phi_a2 = phi_a2 + 2;
        phi_a3 = phi_a3 + 2;
        phi_a1_3 = temp_a1_2;
        phi_t2 = phi_t2 - 1;
        if (phi_t2 != 0) {
            goto loop_10;
        }
        *(void *)0x80083480 = temp_v1_2;
        temp_v0_2 = temp_v0_2 - 1;
        *(void *)0x8004C3F0 = temp_v0_2;
        phi_return = temp_v0_2;
    }
    *(void *)0x8004C3EC = temp_a0;
    *(void *)0x8004C3F4 = temp_a0;
    return phi_return;
}

s32 func_8000EDD8(void) {
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a0;
    void *phi_a0;
    s32 phi_v0;

    temp_v0_2 = *(void *)0x8004C428;
    if (temp_v0_2 >= 0) {
        *(void *)0x8004C428 = 0;
        *(void *)0x8008286A = (u16) *(void *)0x80082868;
        phi_a0 = (void *)0x80082866;
        phi_v0 = 0xC8;
loop_2:
        temp_v0 = phi_v0 - 4;
        temp_a0 = phi_a0 - 8;
        temp_a0->unkA = (u16) phi_a0->unk0;
        temp_a0->unk8 = (u16) phi_a0->unk-2;
        temp_a0->unk6 = (u16) phi_a0->unk-4;
        temp_a0->unk4 = (u16) phi_a0->unk-6;
        phi_a0 = temp_a0;
        phi_v0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_2;
        }
        (void *)0x800826D8->unk0 = (u16) (void *)0x800826D8->unk192;
        return temp_v0;
    }
    temp_v0_2 = temp_v0_2 + 1;
    *(void *)0x8004C428 = temp_v0_2;
    return temp_v0_2;
}
