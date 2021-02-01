s32 func_80030E10(void *arg0, void *arg1) {
    s32 temp_v0;
    u8 temp_a3;
    u8 phi_a3;
    void *phi_v1;
    void *phi_a2;
    s32 phi_v0;
    s32 phi_return;
    s32 phi_v0_2;

    phi_v0 = 0;
    phi_return = 0;
    if (0xFF != *arg1) {
        phi_a3 = *arg1;
        phi_v1 = arg0;
        phi_a2 = arg1;
        phi_v0_2 = 0;
loop_2:
        *phi_v1 = phi_a3;
        temp_a3 = phi_a2->unk1;
        temp_v0 = phi_v0_2 + 1;
        phi_a3 = temp_a3;
        phi_v1 = phi_v1 + 1;
        phi_a2 = phi_a2 + 1;
        phi_v0 = temp_v0;
        phi_return = temp_v0;
        phi_v0_2 = temp_v0;
        if (0xFF != temp_a3) {
            goto loop_2;
        }
    }
    *(arg0 + phi_v0) = (u8)0xFF;
    return phi_return;
}

void func_80030E58(void) {
    func_80024260(0xD3E240, 0x80331A30, 0x80);
    func_80024260(0xD3E2C0, 0x803232A0, 0xE790);
}

void *func_80030EA0(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_t3;
    s32 temp_v0_4;
    u8 temp_a3;
    u8 temp_a3_2;
    void *temp_t0;
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
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    u8 phi_a3;
    s32 phi_t5;
    s32 phi_t4;
    void *phi_s1;

    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE7000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x8000;
    temp_v0_3->unk0 = 0xBA000E02;
    temp_a3 = *arg2;
    if (0xFF != temp_a3) {
        phi_a3 = temp_a3;
        phi_t5 = arg1;
        phi_t4 = arg0;
        phi_s1 = arg2;
loop_2:
        temp_v0_4 = phi_a3 & 0x60;
        if ((phi_a3 & 0x80) != 0) {
            temp_t3 = phi_a3 & 0x1F;
            if (temp_v0_4 != 0) {
                if (temp_v0_4 != 0x20) {
                    if (temp_v0_4 != 0x40) {
                        if (temp_v0_4 != 0x60) {

                        } else {
                            if (temp_t3 != 0) {
                                if (temp_t3 != 0x13) {
                                    if (temp_t3 != 0x14) {
                                        if (temp_t3 == 0x1E) {
                                            temp_v0_5 = *(void *)0x8007B2FC;
                                            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
                                            temp_v0_5->unk4 = 0x8005FAA0;
                                            temp_v0_5->unk0 = 0x6000000;
                                        }
                                    }
                                }
                            } else {
                                phi_t5 = phi_t5 + ((*(void *)0x80092860 * 0x10) + 0x8005FA90)->unkC;
                                phi_t4 = arg0;
                            }
                        }
                    } else {
                        if (temp_t3 < 0x10) {
                            *(void *)0x80092860 = temp_t3;
                        } else {
                            *(void *)0x80092864 = temp_t3;
                        }
                    }
                } else {
                    temp_v0_6 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
                    temp_v0_6->unk0 = 0xFD100000;
                    temp_v0_6->unk4 = (s32) ((temp_t3 << 5) + 0x80331A30);
                    temp_v0_7 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
                    temp_v0_7->unk4 = 0;
                    temp_v0_7->unk0 = 0xE8000000;
                    temp_v0_8 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
                    temp_v0_8->unk4 = 0x7000000;
                    temp_v0_8->unk0 = 0xF5000100;
                    temp_v0_9 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
                    temp_v0_9->unk4 = 0;
                    temp_v0_9->unk0 = 0xE6000000;
                    temp_v0_10 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
                    temp_v0_10->unk4 = 0x703C000;
                    temp_v0_10->unk0 = 0xF0000000;
                    temp_v0_11 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
                    temp_v0_11->unk4 = 0;
                    temp_v0_11->unk0 = 0xE7000000;
                }
            } else {
                temp_v0_12 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
                temp_v0_12->unk4 = (s32) ((temp_t3 * 0x7B8) + 0x803232A0);
                temp_v0_12->unk0 = 0xFD480097;
                temp_v0_13 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
                temp_v0_13->unk4 = 0x7000000;
                temp_v0_13->unk0 = 0xF5482600;
                temp_v0_14 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
                temp_v0_14->unk4 = 0;
                temp_v0_14->unk0 = 0xE6000000;
                temp_v0_15 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
                temp_v0_15->unk4 = 0x725E030;
                temp_v0_15->unk0 = 0xF4000000;
                temp_v0_16 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
                temp_v0_16->unk4 = 0;
                temp_v0_16->unk0 = 0xE7000000;
                temp_v0_17 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
                temp_v0_17->unk4 = 0;
                temp_v0_17->unk0 = 0xF5402600;
                temp_v0_18 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
                temp_v0_18->unk0 = 0xF2000000;
                temp_v0_18->unk4 = 0x4BC030;
            }
        } else {
            temp_t0 = (*(void *)0x80092860 * 0x10) + 0x8005FA90;
            if (phi_a3 == 0x7F) {
                phi_t4 = (phi_t4 + temp_t0->unk8) + *(void *)0x80092864;
            } else {
                temp_v0_19 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
                temp_v0_19->unk0 = (s32) (((((temp_t0->unk4 + phi_t5) * 4) & 0xFFF) | 0xE4000000) | ((((phi_t4 + temp_t0->unk0) * 4) & 0xFFF) << 0xC));
                temp_v0_19->unk4 = (s32) ((((phi_t4 * 4) & 0xFFF) << 0xC) | ((phi_t5 * 4) & 0xFFF));
                temp_v0_20 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
                temp_v0_20->unk0 = 0xB4000000;
                temp_v0_20->unk4 = (s32) ((*((*(void *)0x80092860 * 0x10) + 0x8005FA90) * (phi_a3 & 0x7F)) << 0x15);
                temp_v0_21 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
                temp_v0_21->unk4 = 0x4000400;
                temp_v0_21->unk0 = 0xB3000000;
                phi_t4 = (phi_t4 + ((*(void *)0x80092860 * 0x10) + 0x8005FA90)->unk8) + *(void *)0x80092864;
            }
        }
        temp_a3_2 = phi_s1->unk1;
        phi_a3 = temp_a3_2;
        phi_s1 = phi_s1 + 1;
        if (0xFF != temp_a3_2) {
            goto loop_2;
        }
    }
    temp_v0_22 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
    temp_v0_22->unk4 = 0;
    temp_v0_22->unk0 = 0xE7000000;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xBA000E02;
    return temp_v0;
}
