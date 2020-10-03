void *func_2acb8(s32 arg0, s32 arg1) {
    s32 sp114;
    ? spFC;
    ? spDC;
    s32 spB8;
    s32 spB4;
    ? *sp44;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_fp;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_v0_15;
    s32 temp_v0_27;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
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
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t4;
    s32 phi_s0;
    s32 phi_s6;
    s32 phi_t4_2;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 phi_v0;
    s32 phi_s5;
    s32 phi_ra;
    s32 phi_fp;
    s32 phi_s4;
    s32 phi_s7;

    spFC.unk0 = (s32) (void *)0x8005F92C->unk0;
    spFC.unk4 = (s32) (void *)0x8005F92C->unk4;
    spFC.unkC = (s32) (void *)0x8005F92C->unkC;
    spFC.unk8 = (s32) (void *)0x8005F92C->unk8;
    spDC.unk0 = (s32) (void *)0x8005F93C->unk0;
    spDC.unk4 = (s32) (void *)0x8005F93C->unk4;
    spDC.unkC = (s32) (void *)0x8005F93C->unkC;
    spDC.unk8 = (s32) (void *)0x8005F93C->unk8;
    spDC.unk10 = (s32) (void *)0x8005F93C->unk10;
    spDC.unk14 = (s32) (void *)0x8005F93C->unk14;
    spDC.unk1C = (s32) (void *)0x8005F93C->unk1C;
    spDC.unk18 = (s32) (void *)0x8005F93C->unk18;
    sp44 = &spFC;
    sp114 = 0;
loop_1:
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x504240;
    temp_v0_2->unk0 = 0xB900031D;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x2000;
    temp_v0_3->unk0 = 0xBA000C02;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE7000000;
    if (sp114 != 1) {
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk0 = 0x6000000;
        temp_v0_5->unk4 = 0x8005F228;
    } else {
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk0 = 0x6000000;
        temp_v0_6->unk4 = 0x8005F240;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = -0x80;
        temp_v0_7->unk0 = 0xFB000000;
    }
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk0 = 0xFD100000;
    temp_v0_9->unk4 = (s32) *sp44;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0;
    temp_v0_10->unk0 = 0xE8000000;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0x7000000;
    temp_v0_11->unk0 = 0xF5000100;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk4 = 0;
    temp_v0_12->unk0 = 0xE6000000;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0x73FC000;
    temp_v0_13->unk0 = 0xF0000000;
    temp_v0_14 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
    temp_v0_14->unk4 = 0;
    temp_v0_14->unk0 = 0xE7000000;
    phi_s6 = 0;
loop_5:
    spB8 = 0;
    if (sp114 != 2) {
        spB4 = 0;
        if (sp114 != 3) {
            phi_t4 = arg1 + 0x87;
            phi_s0 = 0x19;
            phi_s5 = 0x19;
            phi_ra = 0x32;
            phi_fp = 0;
            phi_s4 = 0x52;
            phi_s7 = 0x32;
        } else {
            phi_t4 = arg1 + 0x84;
            phi_s0 = 0x1C;
            phi_s5 = 0x1C;
            phi_ra = 0x38;
            phi_fp = 0;
            phi_s4 = 0x4F;
            phi_s7 = 0x38;
        }
    } else {
        temp_fp = 0x32 - (arg0 / 2);
        spB4 = temp_fp << 5;
        phi_t4 = arg1 + 0x87;
        phi_s0 = 0x19;
        phi_s5 = 0x19;
        phi_ra = 0x32;
        phi_fp = temp_fp;
        phi_s4 = temp_fp + 0x52;
        phi_s7 = 0x32;
    }
    temp_a1 = phi_s5 - 1;
    temp_t4 = phi_t4 + (phi_s0 * phi_s6);
    phi_t4_2 = temp_t4;
    phi_s0_2 = phi_s0;
    if (temp_t4 < 0) {
        temp_v0_15 = -temp_t4;
        phi_t4_2 = temp_t4;
        phi_s0_2 = phi_s0;
        if ((temp_t4 + phi_s0) >= 0) {
            spB8 = temp_v0_15 << 5;
            phi_t4_2 = 0;
            phi_s0_2 = phi_s0 - temp_v0_15;
        }
    }
    temp_t5 = phi_t4_2 + phi_s0_2;
    if (phi_t4_2 >= 0x141) {
        phi_s0_3 = phi_s0_2;
        phi_v0 = -1;
    } else {
        phi_s0_3 = phi_s0_2;
        phi_v0 = 0;
        if (temp_t5 >= 0x141) {
            phi_s0_3 = (phi_s0_2 - temp_t5) + 0x140;
            phi_v0 = 0;
        }
    }
    if (phi_s0_3 <= 0) {
        phi_v0 = -1;
    }
    if (phi_v0 >= 0) {
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk0 = (s32) ((temp_a1 & 0xFFF) | 0xFD480000);
        temp_v0_16->unk4 = (s32) (sp + ((sp114 * 8) + (phi_s6 * 4)))->unkDC;
        temp_v0_17 = *(void *)0x8007B2FC;
        temp_a3 = ((((s32) (phi_s5 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk4 = 0x7000000;
        temp_v0_17->unk0 = temp_a3;
        temp_v0_18 = *(void *)0x8007B2FC;
        temp_t7 = (phi_fp * 4) & 0xFFF;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk4 = 0;
        temp_v0_18->unk0 = 0xE6000000;
        temp_v0_19 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
        temp_s2 = ((temp_a1 * 4) & 0xFFF) << 0xC;
        temp_s3 = ((phi_ra - 1) * 4) & 0xFFF;
        temp_v0_19->unk4 = (s32) (temp_s2 | 0x7000000 | temp_s3);
        temp_v0_19->unk0 = (s32) (temp_t7 | 0xF4000000);
        temp_v0_20 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
        temp_v0_20->unk4 = 0;
        temp_v0_20->unk0 = 0xE7000000;
        temp_v0_21 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
        temp_v0_21->unk4 = 0;
        temp_v0_21->unk0 = temp_a3;
        temp_v0_22 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
        temp_v0_22->unk4 = (s32) (temp_s2 | temp_s3);
        temp_v0_22->unk0 = (s32) (temp_t7 | 0xF2000000);
        temp_v0_23 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
        temp_v0_23->unk0 = (s32) (((((phi_t4_2 + phi_s0_3) * 4) & 0xFFF) << 0xC) | 0xE4000000 | ((((phi_s4 + phi_s7) - phi_fp) * 4) & 0xFFF));
        temp_v0_23->unk4 = (s32) ((((phi_t4_2 * 4) & 0xFFF) << 0xC) | ((phi_s4 * 4) & 0xFFF));
        temp_v0_24 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
        temp_v0_24->unk0 = 0xB4000000;
        temp_v0_24->unk4 = (s32) ((spB8 << 0x10) | (spB4 & 0xFFFF));
        temp_v0_25 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
        temp_v0_25->unk0 = 0xB3000000;
        temp_v0_25->unk4 = 0x4000400;
        temp_v0_26 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
        temp_v0_26->unk4 = 0;
        temp_v0_26->unk0 = 0xE7000000;
    }
    temp_s6 = phi_s6 + 1;
    phi_s6 = temp_s6;
    if (temp_s6 != 2) {
        goto loop_5;
    }
    temp_v0_27 = sp114 + 1;
    sp114 = temp_v0_27;
    sp44 = sp44 + 4;
    if (temp_v0_27 != 4) {
        goto loop_1;
    }
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
    return (void *)0x8008FD0C;
}

