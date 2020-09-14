void func_d0c4(s32 arg0) {
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
                        func_0000D518(temp_s0, temp_a1 + 2, temp_a2, temp_a3);
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
        func_0000D518(temp_v0_3 & 0xFFFF, phi_s2_2->unk24);
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
            func_00022B40(temp_s3, (void *)0x80082C48, temp_a2_3, temp_a3_2);
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
                temp_v0_6 = func_0000DB38(temp_s1);
                phi_f26 = temp_f26;
                phi_f20 = temp_f20;
                phi_f24 = temp_f24;
                phi_f22 = temp_f22;
                if (temp_v0_6 != 0) {
                    temp_s0_2 = (temp_v0_6 * 0x1C) + 0x80084E60;
                    temp_f18 = temp_s0_2->unk-8;
                    (void *)0x80082C18->unk4 = 0.0f;
                    (void *)0x80082C18->unk0 = temp_f18;
                    func_000232F4((f32) ((f64) temp_s1->unkC * temp_f30), (void *)0x80082C18);
                    phi_f26 = temp_f26 + temp_s0_2->unk-4;
                    phi_f20 = temp_f20 - (void *)0x80082C18->unk0;
                    phi_f24 = temp_f24;
                    phi_f22 = temp_f22 - (void *)0x80082C18->unk4;
                }
            }
        }
        func_00035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0.0f, phi_f26, 0.0f, temp_s1->unk10, phi_f20, phi_f24, phi_f22);
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
        func_00035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_s1_2->unkC, 0, temp_s1_2->unk10, temp_s1_2->unk0, temp_s1_2->unk4, temp_s1_2->unk8);
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
    func_0000E588(arg0);
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
        func_0000DDB0(arg0, *(void *)0x800828E0, 0, 0x80084F40);
        func_0000DDB0(arg0, *(void *)0x800828E0, 1, *(void *)0x800828F8);
        func_0000DDB0(arg0, *(void *)0x800828E0, 2, *(void *)0x800828F8);
        func_0000DDB0(arg0, *(void *)0x800828E0, 3, *(void *)0x800828F8);
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
    func_0000EB30(temp_a0);
    func_0000EDD8();
    temp_s0_3 = *(void *)0x80084ED8;
    if (temp_s0_3 == -1) {
        phi_s0 = temp_s0_3;
        phi_s1_2 = (void *)0x80084EDC;
        if (temp_s0_3 != *(void *)0x80084EDC) {
            func_0002650C();
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
            func_0002699C(((temp_s0_3 * 4) + 0x80050000)->unk-3D15, phi_s6_5 & 0xFF);
        } else {
            func_0002650C();
            *(void *)0x80084EDC = -1;
            *(void *)0x80084ED8 = -1;
        }
        goto block_43;
    }
    *phi_s1_2 = phi_s0;
}
