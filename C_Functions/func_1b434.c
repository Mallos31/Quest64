void *func_1b434(void *arg0) {
    s32 spC0;
    s32 spB8;
    void *spA0;
    void *sp70;
    u32 sp14;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_t6_3;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_v0;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 temp_v0_11;
    u32 temp_v0_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t3;
    void *temp_t6_2;
    void *temp_t8_2;
    void *temp_v0_10;
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
    void *temp_v0_30;
    void *temp_v0_31;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_a1;
    s32 phi_t4;
    s32 phi_t2;
    u32 phi_t5;
    u32 phi_t2_2;
    u32 phi_t1;
    u32 phi_t2_3;
    u32 phi_t1_2;
    void *phi_v1;
    s32 phi_a1_2;
    void *phi_return;

    if (arg0->unk4C != 0) {
        temp_t3 = arg0 + 0x44;
        phi_a1 = 0;
        if ((arg0->unk8 & 0x20) != 0) {
            phi_a1 = 0x20000;
        }
        temp_v0 = temp_t3->unk0;
        temp_v1 = temp_v0 & 1;
        temp_t3->unkC = (s16) (temp_t3->unkC + temp_t3->unk10);
        temp_t3->unkE = (s16) (temp_t3->unkE + temp_t3->unk12);
        temp_t4 = temp_t3->unk8;
        phi_t5 = 0x20U;
        if (temp_v1 != 0) {
            phi_t5 = 0x10U;
        }
        if (temp_v1 != 0) {
            spC0 = 4;
        } else {
            spC0 = 5;
        }
        if ((temp_v0 & 4) != 0) {
            phi_t4 = temp_t4 + ((((s32) arg0->unk4 >> temp_t3->unk4) * phi_t5) * phi_t5);
        } else {
            phi_t4 = temp_t4;
            if ((temp_v0 & 8) != 0) {
                phi_t4 = temp_t4 + (((((s32) arg0->unk4 >> temp_t3->unk4) & temp_t3->unk2) * phi_t5) * phi_t5);
            }
        }
        if ((temp_v0 & 0x10) != 0) {
            phi_t2 = 1;
        } else {
            phi_t2 = 0;
        }
        spB8 = phi_a1;
        if ((temp_v0 & 2) != 0) {
            temp_a0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0 + 8);
            temp_a0->unk4 = phi_t4;
            temp_a0->unk0 = 0xFD900000;
            temp_a1 = *(void *)0x8007B2FC;
            temp_a2 = phi_t2 & 3;
            *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
            temp_a1->unk0 = 0xF5900000;
            spC = temp_a2 << 0x12;
            temp_t6 = spC0 & 0xF;
            sp8 = temp_t6 << 0xE;
            sp4 = temp_a2 << 8;
            sp0 = temp_t6 * 0x10;
            temp_v0_2 = phi_t5 >> 3;
            temp_a1->unk4 = (s32) ((((spC | 0x7000000) | sp8) | sp4) | sp0);
            temp_t0 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t0 + 8);
            temp_t0->unk4 = 0;
            temp_t0->unk0 = 0xE6000000;
            temp_t6_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t6_2 + 8);
            spA0 = temp_t6_2;
            temp_t6_2->unk0 = 0xF3000000;
            temp_t1 = ((u32) ((phi_t5 * phi_t5) + 1) >> 1) - 1;
            if (temp_t1 < 0x7FFU) {
                sp14 = temp_t1;
            } else {
                sp14 = 0x7FFU;
            }
            phi_t2_2 = temp_v0_2;
            if (temp_v0_2 == 0) {
                phi_t2_2 = 1U;
            }
            if (temp_v0_2 == 0) {
                phi_t1 = 1U;
            } else {
                phi_t1 = temp_v0_2;
            }
            spA0->unk4 = (s32) (((((u32) (phi_t2_2 + 0x7FF) / phi_t1) & 0xFFF) | 0x7000000) | ((sp14 & 0xFFF) << 0xC));
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk4 = 0;
            temp_v0_3->unk0 = 0xE7000000;
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk0 = (s32) (((((u32) (phi_t5 + 7) >> 3) & 0x1FF) << 9) | 0xF5880000);
            temp_v0_4->unk4 = (s32) (((spC | sp8) | sp4) | sp0);
            temp_v0_5 = *(void *)0x8007B2FC;
            temp_t9 = ((phi_t5 - 1) * 4) & 0xFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk0 = 0xF2000000;
            temp_v0_5->unk4 = (s32) ((temp_t9 << 0xC) | temp_t9);
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xBA000E02;
            if ((temp_t3->unk0 & 0x40) != 0) {
                if ((arg0->unk8 & 0x20) != 0) {
                    temp_v0_7 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
                    temp_v0_7->unk0 = 0xFC629A04;
                    temp_v0_7->unk4 = 0x1F10FFFF;
                } else {
                    temp_v0_8 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
                    temp_v0_8->unk4 = 0x1F10FE3F;
                    temp_v0_8->unk0 = 0xFC629BFF;
                }
            } else {
                if ((arg0->unk8 & 0x20) != 0) {
                    temp_v0_9 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
                    temp_v0_9->unk0 = 0xFC62FE04;
                    temp_v0_9->unk4 = 0x1F10FBFF;
                } else {
                    temp_v0_10 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
                    temp_v0_10->unk4 = 0x1F10FA3F;
                    temp_v0_10->unk0 = 0xFC62FFFF;
                }
            }
        } else {
            temp_a0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_a0_2 + 8);
            temp_a0_2->unk4 = phi_t4;
            temp_a0_2->unk0 = 0xFD500000;
            temp_a1_2 = *(void *)0x8007B2FC;
            temp_a2_2 = phi_t2 & 3;
            *(void *)0x8007B2FC = (void *) (temp_a1_2 + 8);
            temp_a1_2->unk0 = 0xF5500000;
            spC = temp_a2_2 << 0x12;
            temp_t8 = spC0 & 0xF;
            sp8 = temp_t8 << 0xE;
            sp4 = temp_a2_2 << 8;
            sp0 = temp_t8 * 0x10;
            temp_v0_11 = phi_t5 >> 3;
            temp_a1_2->unk4 = (s32) ((((spC | 0x7000000) | sp8) | sp4) | sp0);
            temp_t0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t0_2 + 8);
            temp_t0_2->unk4 = 0;
            temp_t0_2->unk0 = 0xE6000000;
            temp_t8_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_t8_2 + 8);
            sp70 = temp_t8_2;
            temp_t8_2->unk0 = 0xF3000000;
            temp_t1_2 = ((u32) ((phi_t5 * phi_t5) + 1) >> 1) - 1;
            if (temp_t1_2 < 0x7FFU) {
                sp14 = temp_t1_2;
            } else {
                sp14 = 0x7FFU;
            }
            if (temp_v0_11 == 0) {
                phi_t2_3 = 1U;
            } else {
                phi_t2_3 = temp_v0_11;
            }
            if (temp_v0_11 == 0) {
                phi_t1_2 = 1U;
            } else {
                phi_t1_2 = temp_v0_11;
            }
            sp70->unk4 = (s32) (((((u32) (phi_t2_3 + 0x7FF) / phi_t1_2) & 0xFFF) | 0x7000000) | ((sp14 & 0xFFF) << 0xC));
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk0 = (s32) (((((u32) (phi_t5 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_13->unk4 = (s32) (((spC | sp8) | sp4) | sp0);
            temp_v0_14 = *(void *)0x8007B2FC;
            temp_t6_3 = ((phi_t5 - 1) * 4) & 0xFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk0 = 0xF2000000;
            temp_v0_14->unk4 = (s32) ((temp_t6_3 << 0xC) | temp_t6_3);
            temp_v0_15 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk4 = 0x8000;
            temp_v0_15->unk0 = 0xBA000E02;
            if ((arg0->unk8 & 0x20) != 0) {
                temp_v0_16 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
                temp_v0_16->unk4 = 0xFF17FFFF;
                temp_v0_16->unk0 = 0xFC129804;
            } else {
                temp_v0_17 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
                temp_v0_17->unk4 = 0xFF17FE3F;
                temp_v0_17->unk0 = 0xFC1299FF;
            }
            temp_t2 = temp_t3->unk6;
            if (temp_t2 != *(void *)0x800883E8) {
                *(void *)0x800883E8 = temp_t2;
                temp_v0_18 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
                temp_v0_18->unk0 = 0xFD100000;
                temp_v0_18->unk4 = (s32) ((*(void *)0x800883E8 * 4) + 0x80050000)->unk-2FC0;
                temp_v0_19 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
                temp_v0_19->unk4 = 0;
                temp_v0_19->unk0 = 0xE8000000;
                temp_v0_20 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
                temp_v0_20->unk4 = 0x7000000;
                temp_v0_20->unk0 = 0xF5000100;
                temp_v0_21 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
                temp_v0_21->unk4 = 0;
                temp_v0_21->unk0 = 0xE6000000;
                temp_v0_22 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
                temp_v0_22->unk4 = 0x73FC000;
                temp_v0_22->unk0 = 0xF0000000;
                temp_v0_23 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
                temp_v0_23->unk4 = 0;
                temp_v0_23->unk0 = 0xE7000000;
            }
        }
        temp_v0_24 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
        temp_v0_24->unk0 = (s32) ((((temp_t3->unkC & 0xFFF) << 0xC) | 0xF2000000) | (temp_t3->unkE & 0xFFF));
        temp_v0_24->unk4 = (s32) ((((temp_t3->unkC + phi_t5) & 0xFFF) << 0xC) | ((temp_t3->unkE + phi_t5) & 0xFFF));
        if ((temp_t3->unk0 & 0x20) != 0) {
            temp_v0_25 = *(void *)0x8007B2FC;
            temp_t8_3 = (phi_t5 << 6) & 0xFFFF;
            *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
            temp_v0_25->unk0 = 0xBB000001;
            temp_v0_25->unk4 = (s32) ((temp_t8_3 << 0x10) | temp_t8_3);
            spB8 = spB8 | 0x60000;
        } else {
            temp_v0_26 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
            temp_v0_26->unk4 = 0x80008000;
            temp_v0_26->unk0 = 0xBB000001;
        }
        phi_v1 = (void *)0x8007B2FC;
        phi_a1_2 = spB8;
    } else {
        temp_v0_27 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
        temp_v0_27->unk4 = 0;
        temp_v0_27->unk0 = 0xE7000000;
        temp_v0_28 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
        temp_v0_28->unk0 = 0xFC62CBFF;
        temp_v0_28->unk4 = 0x4FFE7E38;
        temp_v0_29 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
        temp_v0_29->unk0 = 0xBB000000;
        temp_v0_29->unk4 = 0x80008000;
        phi_v1 = (void *)0x8007B2FC;
        phi_a1_2 = 0;
    }
    temp_v0_30 = *phi_v1;
    *phi_v1 = (void *) (temp_v0_30 + 8);
    temp_v0_30->unk4 = 0x60000;
    temp_v0_30->unk0 = 0xB6000000;
    phi_return = temp_v0_30;
    if (phi_a1_2 != 0) {
        temp_v0_31 = *phi_v1;
        *phi_v1 = (void *) (temp_v0_31 + 8);
        temp_v0_31->unk4 = phi_a1_2;
        temp_v0_31->unk0 = 0xB7000000;
        phi_return = temp_v0_31;
    }
    return phi_return;
}
