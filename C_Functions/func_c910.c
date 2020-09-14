void func_c910(void) {
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
        func_00024260(0x77560, 0x80100000, 0x87360 - 0x77560);
        func_00024260(0xD884F0, 0x800820D8, 0x600);
        func_00024260(0xD88AF0, 0x800826D8, 0x200);
    }
    if (*(void *)0x80084EEC != *(void *)0x80084EE4) {
        *(void *)0x80084EF4 = *(void *)0x80084EE4;
        *(void *)0x80084EE4 = *(void *)0x80084EEC;
        temp_t0 = (*(void *)0x80084F18)->unk0;
        temp_v1_2 = temp_t0 & 0xFFFF;
        *(void *)0x80084EE0 = temp_t0;
        if ((temp_v1_2 & 7) != 0) {
            if ((temp_v1_2 & 2) != 0) {
                func_00024260(0x87360, 0x8010FE00, 0xCAF50 - 0x87360);
            }
            temp_v0_2 = ((*(void *)0x80084F18)->unk3C * 0xC) + 0x800558A0;
            temp_a0_2 = temp_v0_2->unk0;
            temp_v1_3 = temp_v0_2->unk4;
            func_00024260(temp_a0_2, *(temp_v0_2 + 8), temp_v1_3 - temp_a0_2);
        }
        temp_a0_3 = (*(void *)0x80084F18)->unk4;
        func_00024260(temp_a0_3, (*(void *)0x80084F18)->unkC, (*(void *)0x80084F18)->unk8 - temp_a0_3);
        temp_v0_3 = *(void *)0x80084EE4;
        if ((((temp_v0_3 == 3) || (temp_v0_3 == 5)) || (temp_v0_3 == 7)) || (temp_v0_3 == 0xC)) {
            func_00024260(0x3E3200, 0x801E0000, 0x3F3D10 - 0x3E3200);
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
        func_00024260(*(((temp_a3 & 0xFFFF) * 8) + 0x8005EFA8), 0x800814D8, 0x800, temp_a3);
        func_00024260(*((*(void *)0x80084F14 * 8) + 0x8005EFA8) + 0x800, 0x8007D2D8, 0x4000);
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
            func_0000EE60(phi_s0->unk0, phi_s0->unk4, phi_s0->unk8, 0xA00, (void *)0x80082C28);
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
                    phi_s0->unk14 = (s16) (func_00022FD0(0x96) + 0x96);
                } else {
                    if ((s32) phi_s0->unk16 >= 0x11) {
                        if ((s32) phi_s0->unk16 < 0x15) {
                            phi_s0->unk14 = func_00022FD0(0x10);
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
    func_0000DB10(temp_a0_5, temp_a1, temp_a2, 0x80082C58);
    func_0000E3C4();
    *(void *)0x80084EDC = -1;
}
