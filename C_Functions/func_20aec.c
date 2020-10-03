void *func_20aec(void *arg0) {
    s32 spB4;
    s32 spB0;
    s32 spAC;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_t4;
    s8 temp_v0_3;
    s8 temp_v1_12;
    u16 temp_s1;
    u16 temp_s2;
    u16 temp_v1_11;
    u16 temp_v1_13;
    u8 temp_v1_9;
    void *temp_fp;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    f32 phi_f14;
    void *phi_s0;
    s32 phi_t4;
    s32 phi_s7;
    s32 phi_s6;
    s32 phi_s4;
    void *phi_a0;
    s32 phi_a2;
    s32 phi_s4_2;
    void *phi_return;

    temp_v0 = arg0->unk68;
    temp_fp = temp_v0;
    if ((*(void *)0x8007B2E4 & 0x800) == 0) {
        temp_v1 = arg0->unk64;
        if (temp_v1->unk0 != 1) {
            phi_f14 = arg0->unk4 + (temp_v1->unk1C * arg0->unk24);
        } else {
            phi_f14 = temp_v0->unk94;
        }
        temp_t4 = func_0002413C(arg0->unk0, phi_f14, arg0->unk8, &spB0, &spAC);
        temp_v1_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
        temp_v1_2->unk4 = 0;
        temp_v1_2->unk0 = 0xE7000000;
        temp_v1_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
        temp_v1_3->unk4 = 0x803A2960;
        temp_v1_3->unk0 = 0xFD100000;
        temp_v1_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_4 + 8);
        temp_v1_4->unk4 = 0;
        temp_v1_4->unk0 = 0xE8000000;
        temp_v1_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_5 + 8);
        temp_v1_5->unk4 = 0x7000000;
        temp_v1_5->unk0 = 0xF5000100;
        temp_v1_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_6 + 8);
        temp_v1_6->unk4 = 0;
        temp_v1_6->unk0 = 0xE6000000;
        temp_v1_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_7 + 8);
        temp_v1_7->unk4 = 0x73FC000;
        temp_v1_7->unk0 = 0xF0000000;
        temp_v1_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_8 + 8);
        temp_v1_8->unk4 = 0;
        temp_v1_8->unk0 = 0xE7000000;
        phi_s0 = temp_fp;
        phi_t4 = temp_t4;
        phi_s7 = 0;
        phi_s6 = 0;
        phi_s4 = 0;
loop_7:
        temp_v1_9 = phi_s0->unk12;
        if (temp_v1_9 != 0) {
            temp_v0_2 = (temp_v1_9 * 8) + 0x803A8D70;
            temp_s1 = temp_v0_2->unk4;
            temp_s2 = temp_v0_2->unk6;
            if (phi_t4 != 0) {
                spB4 = phi_t4;
                func_000210FC(0x803A6F70, (spB0 + phi_s7) - ((s32) temp_s1 >> 1), (spAC + phi_s6) - ((s32) temp_s2 >> 1), temp_s1, (?32) temp_s2, (?32) temp_v0_2->unk0, (?32) temp_v0_2->unk2, 0x400, 0x400);
            }
            if ((*((phi_s4 * 2) + 0x8004D2CC) & temp_fp->unk0) == 0) {
block_14:
                phi_s0->unk12 = (u8)0U;
            } else {
                temp_v0_3 = phi_s0->unk22;
                if ((s32) temp_v0_3 > 0) {
                    phi_s0->unk22 = (s8) (temp_v0_3 - 1);
                    if (phi_s0->unk22 == 0) {
                        goto block_14;
                    }
                }
            }
            phi_s7 = phi_s7 + ((s32) temp_s1 >> 1);
            phi_s6 = phi_s6 - ((s32) temp_s2 >> 1);
        }
        temp_s4 = phi_s4 + 1;
        phi_s0 = phi_s0 + 1;
        phi_s4 = temp_s4;
        if (temp_s4 != 7) {
            goto loop_7;
        }
    }
    phi_a0 = temp_fp;
    phi_a2 = 0;
    phi_s4_2 = 0;
    phi_return = NULL;
loop_18:
    if (phi_a0->unk44 != 0) {
        temp_v0_4 = (arg0->unk68 + phi_a2)->unk44;
        temp_v0_4->unkC = (f32) arg0->unk0;
        temp_s0 = temp_fp + phi_s4_2;
        temp_v0_4->unk14 = (bitwise f32) arg0->unk8;
        temp_v1_10 = arg0->unk64;
        if (1 == temp_v1_10->unk0) {
            if ((temp_v0_4->unk8 & 0x100) != 0) {
                temp_v0_4->unk10 = (f32) arg0->unk68->unk94;
            } else {
                temp_v0_4->unk10 = (f32) (arg0->unk68->unk94 - (temp_v1_10->unk18 * arg0->unk24));
            }
        } else if ((temp_v0_4->unk8 & 0x100) != 0) {
            temp_v0_4->unk10 = (f32) ((f64) arg0->unk4 + ((f64) temp_v1_10->unk1C * 0.5 * (f64) arg0->unk24));
        } else {
            temp_v0_4->unk10 = (f32) arg0->unk4;
        }
        if ((*((phi_s4_2 * 2) + 0x8004D2DC) & temp_fp->unk0) == 0) {
            phi_a0->unk44 = 0;
            temp_v1_11 = temp_v0_4->unk8;
            phi_return = temp_v0_4;
            if ((temp_v1_11 & 1) != 0) {
                temp_v0_4->unk8 = (u16) (temp_v1_11 & -2);
block_33:
                temp_v0_4->unk0 = (u16)8;
                phi_return = temp_v0_4;
            }
        } else {
            temp_v1_12 = temp_s0->unk32;
            phi_return = temp_v0_4;
            if ((s32) temp_v1_12 > 0) {
                temp_s0->unk32 = (s8) (temp_v1_12 - 1);
                phi_return = temp_v0_4;
                if (temp_s0->unk32 == 0) {
                    phi_a0->unk44 = 0;
                    temp_v1_13 = temp_v0_4->unk8;
                    phi_return = temp_v0_4;
                    if ((temp_v1_13 & 1) != 0) {
                        temp_v0_4->unk8 = (u16) (temp_v1_13 & -2);
                        goto block_33;
                    }
                }
            }
        }
    }
    temp_s4_2 = phi_s4_2 + 1;
    phi_a0 = phi_a0 + 4;
    phi_a2 = phi_a2 + 4;
    phi_s4_2 = temp_s4_2;
    if (temp_s4_2 != 4) {
        goto loop_18;
    }
    return phi_return;
}

