void *func_da8c(s32 arg0) {
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
        func_00035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_v0_6->unkC, 0, temp_v0_6->unk10, temp_v0_6->unk0, temp_v0_6->unk4, temp_v0_6->unk8);
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
        func_00035120((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, temp_v0_12->unkC, 0, temp_v0_12->unk10, temp_v0_12->unk0, temp_v0_12->unk4, temp_v0_12->unk8);
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
        func_0000E774(arg0, *(void *)0x800828E8, 0x11, 0x80083888);
        func_0000E774(arg0, *(void *)0x800828E8, 0x12, *(void *)0x80082900);
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
