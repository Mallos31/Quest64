s8 func_29224(s32 arg0, s32 arg3) {
    s32 sp124;
    s32 sp11C;
    s32 sp4C;
    s32 sp44;
    s32 sp3C;
    s32 sp38;
    s16 temp_s3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t9;
    s32 temp_v0_51;
    s8 temp_s0_6;
    s8 temp_v0_53;
    s8 temp_v1;
    u16 temp_a3;
    u16 temp_v1_4;
    u8 temp_s2;
    u8 temp_t0_2;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_s0_5;
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
    void *temp_v0_39;
    void *temp_v0_3;
    void *temp_v0_40;
    void *temp_v0_41;
    void *temp_v0_42;
    void *temp_v0_43;
    void *temp_v0_44;
    void *temp_v0_45;
    void *temp_v0_46;
    void *temp_v0_47;
    void *temp_v0_48;
    void *temp_v0_49;
    void *temp_v0_4;
    void *temp_v0_50;
    void *temp_v0_52;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1_2;
    void *temp_v1_3;
    s8 phi_v1;
    s8 phi_v1_2;
    void *phi_v0;
    s32 phi_s4;
    s32 phi_a3;
    s32 phi_v0_2;
    s32 phi_t0;
    s32 phi_s2;
    s32 phi_t0_2;
    s32 phi_t4;
    void *phi_t5;
    s32 phi_s2_2;
    s32 phi_s3;
    s32 phi_a0;
    u8 phi_t0_3;
    u8 phi_s2_3;
    u8 phi_t0_4;
    s32 phi_s5;
    s16 phi_t0_5;
    s16 phi_s2_4;
    s8 phi_return;
    void *phi_v0_3;
    void *phi_v0_4;
    s32 phi_s4_2;
    s32 phi_s5_2;
    s32 phi_s4_3;
    s32 phi_s5_3;

    sp11C = 0;
    phi_s4 = 0;
    phi_a3 = arg3;
    phi_s5 = -1;
    if (-8 != *(void *)0x8005F278) {
        phi_v1 = *(void *)0x8005F278;
        phi_v0_4 = (void *)0x8005F278;
        phi_s4_3 = 0;
        phi_s5_3 = -1;
loop_2:
        if (phi_v1 != -2) {
            if (phi_v1 != -1) {
                phi_v1_2 = phi_v1;
                phi_v0 = phi_v0_4;
                phi_s4_2 = phi_s4_3;
                phi_s5_2 = phi_s5_3;
            } else {
                phi_v0_3 = phi_v0_4 + 2;
                phi_s4_2 = phi_s4_3 + 1;
                phi_s5_2 = -1;
block_7:
                phi_v1_2 = *phi_v0_3;
                phi_v0 = phi_v0_3;
            }
        } else {
            phi_v0_3 = phi_v0_4 + 2;
            phi_s4_2 = phi_s4_3;
            phi_s5_2 = phi_s5_3 + 1;
            goto block_7;
        }
        if ((*(void *)0x80084EE4 != phi_v1_2) || (phi_s4 = phi_s4_2, phi_a3 = -1, phi_s5 = phi_s5_2, (*(void *)0x80084EE8 != phi_v0->unk1))) {
            temp_v1 = phi_v0->unk2;
            phi_v1 = temp_v1;
            phi_s4 = phi_s4_2;
            phi_a3 = -1;
            phi_s5 = phi_s5_2;
            phi_v0_4 = phi_v0 + 2;
            phi_s4_3 = phi_s4_2;
            phi_s5_3 = phi_s5_2;
            if (-8 != temp_v1) {
                goto loop_2;
            }
        }
    }
    if (phi_s4 < 6) {
        if (phi_s4 != *(void *)0x8005F928) {
            temp_v0 = (((phi_s4 * 4) - phi_s4) * 4) + 0x8005F82C;
            temp_a0 = temp_v0->unk4;
            func_00024260(temp_a0, temp_v0->unk0, temp_v0->unk8 - temp_a0, phi_a3);
            *(void *)0x8005F928 = phi_s4;
        }
        temp_s0 = arg0 + 0x27;
        phi_v0_2 = temp_s0;
        phi_t0 = 0xF4;
        phi_s2 = 8;
        if (temp_s0 < 0) {
            temp_t7 = -temp_s0;
            if ((temp_s0 + 0xF4) < 0) {
                phi_v0_2 = temp_s0;
                phi_t0 = 0xF4;
                phi_s2 = 0;
            } else {
                sp11C = temp_t7;
                sp11C = temp_t7 << 5;
                phi_v0_2 = 0;
                phi_t0 = 0xF4 - temp_t7;
                phi_s2 = 8;
            }
        }
        if (phi_v0_2 >= 0x141) {
            phi_s2 = 0;
            phi_t0_2 = phi_t0;
        } else {
            phi_t0_2 = phi_t0;
            if ((phi_v0_2 + phi_t0) >= 0x141) {
                sp11C = 0;
                phi_t0_2 = ((phi_t0 - phi_v0_2) - phi_t0) + 0x140;
            }
        }
        sp124 = phi_v0_2;
        if (phi_s2 != 0) {
            temp_ra = phi_v0_2;
            temp_v0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
            temp_v0_2->unk4 = 0;
            temp_v0_2->unk0 = 0xE7000000;
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk0 = 0xFD100000;
            temp_v0_3->unk4 = (s32) ((phi_s4 * 4) + 0x80060000)->unk-A5C;
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk4 = 0;
            temp_v0_4->unk0 = 0xE8000000;
            temp_v0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk4 = 0x7000000;
            temp_v0_5->unk0 = 0xF5000100;
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xE6000000;
            temp_v0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
            temp_v0_7->unk4 = 0x73FC000;
            temp_v0_7->unk0 = 0xF0000000;
            temp_v0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            sp38 = sp11C << 0x10;
            sp3C = ((temp_ra * 4) & 0xFFF) << 0xC;
            sp44 = ((((temp_ra + phi_t0_2) * 4) & 0xFFF) << 0xC) | 0xE4000000;
            phi_t4 = 0;
            phi_t5 = (((phi_s4 * 4) - phi_s4) << 5) + 0x8005F5BC;
            phi_s3 = 0x1D;
            phi_s2_2 = phi_s2;
loop_24:
            if (phi_t4 == 0x5C) {
                phi_s2_2 = 1;
            }
            temp_v0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
            temp_v0_9->unk0 = 0xFD4800F3;
            temp_v0_9->unk4 = (s32) *phi_t5;
            temp_v0_10 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
            temp_v0_10->unk4 = 0x7000000;
            temp_v0_10->unk0 = 0xF5483E00;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk4 = 0;
            temp_v0_11->unk0 = 0xE6000000;
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_t0 = ((phi_s2_2 - 1) * 4) & 0xFFF;
            temp_v0_12->unk4 = (s32) (temp_t0 | 0x73CC000);
            temp_v0_12->unk0 = 0xF4000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk4 = 0;
            temp_v0_13->unk0 = 0xE7000000;
            temp_v0_14 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xF5483E00;
            temp_v0_15 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk4 = (s32) (temp_t0 | 0x3CC000);
            temp_v0_15->unk0 = 0xF2000000;
            temp_v0_16 = *(void *)0x8007B2FC;
            temp_s0_2 = phi_s3 + phi_s2_2;
            *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
            temp_v0_16->unk0 = (s32) (sp44 | ((temp_s0_2 * 4) & 0xFFF));
            temp_v0_16->unk4 = (s32) (sp3C | ((phi_s3 * 4) & 0xFFF));
            temp_v0_17 = *(void *)0x8007B2FC;
            temp_t4 = phi_t4 + 4;
            *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
            temp_v0_17->unk0 = 0xB4000000;
            temp_v0_17->unk4 = sp38;
            temp_v0_18 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
            temp_v0_18->unk4 = 0x4000400;
            temp_v0_18->unk0 = 0xB3000000;
            temp_v0_19 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
            temp_v0_19->unk4 = 0;
            temp_v0_19->unk0 = 0xE7000000;
            phi_t4 = temp_t4;
            phi_t5 = phi_t5 + 4;
            phi_s3 = temp_s0_2;
            if (temp_t4 != 0x60) {
                goto loop_24;
            }
            func_0002DF6C();
        }
    } else {
        func_00029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0xB4);
        temp_s0_3 = arg0 + 0x29;
        func_00029B58(0x38, temp_s0_3, 0x1F, 0xED, 1);
        func_00029B58(0x38, temp_s0_3, 0x20, 1, 0xB1);
        func_00029B58(0x39, temp_s0_3, 0xD0, 0xEE, 1);
        func_00029B58(0x39, arg0 + 0x117, 0x1F, 1, 0xB2);
        func_00029B58(0x37, arg0 + 0x2C, 0xD4, 0xF0, 3);
        func_00029B58(0x37, arg0 + 0x11A, 0x25, 2, 0xB2);
        temp_s0_4 = arg0 + 0x27;
        func_00029B58(0x37, temp_s0_4, 0x1D, 0xF2, 1);
        func_00029B58(0x37, temp_s0_4, 0xD3, 0xF2, 1);
        func_00029B58(0x37, temp_s0_4, 0x1E, 1, 0xB3);
        func_00029B58(0x37, arg0 + 0x119, 0x1E, 1, 0xB3);
        if (phi_s4 != *(void *)0x8005F928) {
            temp_v0_20 = (((phi_s4 * 4) - phi_s4) * 4) + 0x8005F82C;
            temp_a0_2 = temp_v0_20->unk4;
            func_00024260(temp_a0_2, temp_v0_20->unk0, temp_v0_20->unk8 - temp_a0_2);
            *(void *)0x8005F928 = phi_s4;
        }
        temp_v0_21 = ((phi_s4 * 4) - phi_s4) + 0x8005F8D4;
        temp_v1_2 = (phi_s4 * 4) + 0x8005F8E0;
        temp_t0_2 = temp_v0_21->unk-12;
        temp_s2 = temp_v0_21->unk-11;
        temp_a0_3 = temp_v1_2->unk-18 + arg0;
        temp_s3 = temp_v1_2->unk-16;
        phi_a0 = temp_a0_3;
        phi_t0_3 = temp_t0_2;
        phi_s2_3 = temp_s2;
        if (temp_a0_3 < 0) {
            temp_t7_2 = -temp_a0_3;
            if ((temp_a0_3 + temp_t0_2) < 0) {
                phi_a0 = temp_a0_3;
                phi_t0_3 = temp_t0_2;
                phi_s2_3 = (u8)0U;
            } else {
                sp11C = temp_t7_2;
                sp11C = temp_t7_2 << 5;
                phi_a0 = 0;
                phi_t0_3 = temp_t0_2 - temp_t7_2;
                phi_s2_3 = temp_s2;
            }
        }
        if (phi_a0 >= 0x141) {
            phi_s2_3 = (u8)0U;
            phi_t0_4 = phi_t0_3;
        } else {
            phi_t0_4 = phi_t0_3;
            if ((phi_a0 + phi_t0_3) >= 0x141) {
                sp11C = 0;
                phi_t0_4 = ((phi_t0_3 - phi_a0) - phi_t0_3) + 0x140;
            }
        }
        sp124 = phi_a0;
        if (phi_s2_3 != 0) {
            temp_v0_22 = *(void *)0x8007B2FC;
            temp_a1 = phi_s4 - 6;
            *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
            temp_v0_22->unk0 = 0xFD100000;
            temp_v0_22->unk4 = (s32) ((temp_a1 * 4) + 0x80060000)->unk-75C;
            temp_v0_23 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
            temp_v0_23->unk4 = 0;
            temp_v0_23->unk0 = 0xE8000000;
            temp_v0_24 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
            temp_v0_24->unk4 = 0x7000000;
            temp_v0_24->unk0 = 0xF5000100;
            temp_v0_25 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
            temp_v0_25->unk4 = 0;
            temp_v0_25->unk0 = 0xE6000000;
            temp_v0_26 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
            temp_v0_26->unk4 = 0x73FC000;
            temp_v0_26->unk0 = 0xF0000000;
            temp_v0_27 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
            temp_v0_27->unk4 = 0;
            temp_v0_27->unk0 = 0xE7000000;
            *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
            temp_v0_28 = *(void *)0x8007B2FC;
            temp_a0_4 = (temp_a1 * 3) + 0x8005F8D4;
            *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
            temp_s0_5 = (temp_a1 * 8) + 0x8005F8B4;
            temp_v0_28->unk0 = (s32) (((temp_a0_4->unk0 - 1) & 0xFFF) | 0xFD480000);
            temp_v0_28->unk4 = (s32) temp_s0_5->unk0;
            temp_v0_29 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
            temp_v0_29->unk4 = 0x7000000;
            temp_v0_29->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            sp4C = sp124 + phi_t0_4;
            temp_v0_30 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_30 + 8);
            temp_v0_30->unk4 = 0;
            temp_v0_30->unk0 = 0xE6000000;
            temp_v0_31 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_31 + 8);
            temp_v0_31->unk0 = 0xF4000000;
            temp_v0_31->unk4 = (s32) ((((temp_a0_4->unk1 - 1) * 4) & 0xFFF) | 0x7000000 | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_32 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_32 + 8);
            temp_v0_32->unk4 = 0;
            temp_v0_32->unk0 = 0xE7000000;
            temp_v0_33 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_33 + 8);
            temp_v0_33->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_33->unk4 = 0;
            temp_v0_34 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_34 + 8);
            temp_v0_34->unk0 = 0xF2000000;
            temp_v0_34->unk4 = (s32) ((((temp_a0_4->unk1 - 1) * 4) & 0xFFF) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_35 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_35 + 8);
            temp_v0_35->unk4 = 0;
            temp_v0_35->unk0 = 0xE7000000;
            temp_v0_36 = *(void *)0x8007B2FC;
            temp_t3 = ((sp4C * 4) & 0xFFF) << 0xC;
            *(void *)0x8007B2FC = (void *) (temp_v0_36 + 8);
            temp_v0_36->unk0 = (s32) (temp_t3 | 0xE4000000 | (((temp_s3 + phi_s2_3) * 4) & 0xFFF));
            temp_t9 = ((sp124 * 4) & 0xFFF) << 0xC;
            sp3C = temp_t9;
            temp_v0_36->unk4 = (s32) (temp_t9 | ((temp_s3 * 4) & 0xFFF));
            temp_v0_37 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_37 + 8);
            temp_v0_37->unk0 = 0xB4000000;
            temp_t6 = sp11C << 0x10;
            sp38 = temp_t6;
            temp_v0_37->unk4 = temp_t6;
            temp_v0_38 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_38 + 8);
            temp_v0_38->unk4 = 0x4000400;
            temp_v0_38->unk0 = 0xB3000000;
            temp_v0_39 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_39 + 8);
            temp_v0_39->unk4 = 0;
            temp_v0_39->unk0 = 0xE7000000;
            temp_v0_40 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_40 + 8);
            temp_v0_40->unk0 = (s32) (((temp_a0_4->unk0 - 1) & 0xFFF) | 0xFD480000);
            temp_v0_40->unk4 = (s32) temp_s0_5->unk4;
            temp_v0_41 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_41 + 8);
            temp_v0_41->unk4 = 0x7000000;
            temp_v0_41->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_42 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_42 + 8);
            temp_v0_42->unk4 = 0;
            temp_v0_42->unk0 = 0xE6000000;
            temp_v0_43 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_43 + 8);
            temp_v0_43->unk0 = 0xF4000000;
            temp_v0_43->unk4 = (s32) ((((temp_a0_4->unk2 - 1) * 4) & 0xFFF) | 0x7000000 | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_44 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_44 + 8);
            temp_v0_44->unk4 = 0;
            temp_v0_44->unk0 = 0xE7000000;
            temp_v0_45 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_45 + 8);
            temp_v0_45->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_45->unk4 = 0;
            temp_v0_46 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_46 + 8);
            temp_v0_46->unk0 = 0xF2000000;
            temp_v0_46->unk4 = (s32) ((((temp_a0_4->unk2 - 1) * 4) & 0xFFF) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_47 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_47 + 8);
            temp_v0_47->unk4 = 0;
            temp_v0_47->unk0 = 0xE7000000;
            temp_v0_48 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_48 + 8);
            temp_v0_48->unk0 = (s32) ((((temp_a0_4->unk2 + temp_s3 + phi_s2_3) * 4) & 0xFFF) | 0xE4000000 | temp_t3);
            temp_v0_48->unk4 = (s32) ((((temp_a0_4->unk1 + temp_s3) * 4) & 0xFFF) | sp3C);
            temp_v0_49 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_49 + 8);
            temp_v0_49->unk0 = 0xB4000000;
            temp_v0_49->unk4 = sp38;
            temp_v0_50 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_50 + 8);
            temp_v0_50->unk4 = 0x4000400;
            temp_v0_50->unk0 = 0xB3000000;
            func_0002DF6C(temp_a0_4, temp_a1);
        }
    }
    func_00029B58(5, arg0 + 0x45, 0x1C, 7, 7);
    func_00029B58(5, arg0 + 0xF3, 0x1C, 7, 7);
    temp_s0_6 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_00029B58(6, arg0 + temp_s0_6 + 0x36, 0x1A, 0xE, 0xB);
    func_00029B58(7, (arg0 - temp_s0_6) + 0xFB, 0x1A, 0xE, 0xB);
    func_00029B58(0x2B, arg0 + 0x8E, 0x19, 0x24, 0x10);
    if ((phi_s4 < 6) && ((*(void *)0x8008FD10 & 0x20) != 0)) {
        if (phi_s5 < 0) {
            temp_v0_51 = phi_s4 * 2;
            temp_v1_3 = temp_v0_51 + 0x8005F7FC;
            temp_a0_5 = temp_v0_51 + 0x8005F814;
            phi_t0_5 = (s16) ((((s32) (void *)0x8007BAB8->unk14 / (s32) temp_v1_3->unk0) + temp_a0_5->unk0) - 4);
            phi_s2_4 = (s16) (((s32) (void *)0x8007BAB8->unk1C / (s32) temp_v1_3->unkC) + temp_a0_5->unkC);
        } else {
            temp_v0_52 = (((phi_s4 * 8) + phi_s4) * 4) + (phi_s5 * 4) + 0x8005F4CC;
            phi_t0_5 = temp_v0_52->unk0 - 4;
            phi_s2_4 = temp_v0_52->unk2;
        }
        func_00029B58(0x2C, phi_t0_5 + arg0 + 0x27, phi_s2_4 - 0x10 + 0x1D, 0xC, 0x10);
    }
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0_53 = *(void *)0x80092871;
        if ((s32) temp_v0_53 >= 0x15) {
block_49:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_000268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1_4 = *(void *)0x80092876;
        if ((temp_v1_4 & 0x10) != 0) {
            goto block_49;
        }
        if (((s32) temp_v0_53 < -0x14) || (phi_return = temp_v0_53, ((temp_v1_4 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_000268D4(0, 0, 0xFF, temp_a3);
        }
    }
    return phi_return;
}

