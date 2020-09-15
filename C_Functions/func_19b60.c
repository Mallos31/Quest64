void func_19b60(void) {
    s32 spA4;
    s32 spA0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_fp;
    s32 temp_v1_2;
    u16 temp_a0;
    u16 temp_v0_10;
    void *temp_v0;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_3;
    void *phi_s1;
    f32 phi_f14;
    s32 phi_s7;
    s32 phi_a0;
    void *phi_a2;
    s32 phi_a3;
    s32 phi_fp;
    s32 phi_s7_2;

    phi_s1 = (void *)0x800873D0;
    phi_s7 = 0;
    phi_fp = 0xA;
loop_1:
    if (phi_s1->unkC != 0) {
        temp_v0 = phi_s1->unk0;
        temp_v1 = temp_v0->unk64;
        temp_a0 = temp_v1->unk0;
        if (temp_a0 == 0) {
            phi_f14 = temp_v0->unk4 + (temp_v1->unk1C * temp_v0->unk24);
        } else {
            if (temp_a0 == 1) {
                phi_f14 = temp_v0->unk68->unk94;
            } else {
                phi_f14 = (f32) ((f64) temp_v0->unk4 + (*(void *)0x80071580 * (f64) temp_v0->unk24));
            }
        }
        if (func_0002413C(temp_v0->unk0, phi_f14, temp_a0, temp_v0->unk8, &spA4, &spA0) != 0) {
            phi_s7_2 = phi_s7;
            if (phi_s7 == 0) {
                temp_v0_2 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
                temp_v0_2->unk4 = 0x800C47A0;
                temp_v0_2->unk0 = 0x6000000;
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk0 = 0xFD100000;
                temp_v0_3->unk4 = 0x8039CF90;
                temp_v0_4 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
                temp_v0_4->unk4 = 0x7000000;
                temp_v0_4->unk0 = 0xF5100000;
                temp_v0_5 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
                temp_v0_5->unk4 = 0;
                temp_v0_5->unk0 = 0xE6000000;
                temp_v0_6 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
                temp_v0_6->unk4 = 0x74FF040;
                temp_v0_6->unk0 = 0xF3000000;
                temp_v0_7 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
                temp_v0_7->unk4 = 0;
                temp_v0_7->unk0 = 0xE7000000;
                temp_v0_8 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
                temp_v0_8->unk4 = 0;
                temp_v0_8->unk0 = 0xF5104000;
                temp_v0_9 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
                temp_v0_9->unk4 = 0x1FC024;
                temp_v0_9->unk0 = 0xF2000000;
                phi_s7_2 = phi_s7 + 1;
            }
            temp_v0_10 = phi_s1->unkC;
            if ((s32) temp_v0_10 >= 0x1E) {
                temp_v1_2 = func_00035190(((0x2D - temp_v0_10) << 0xC) & 0xFFFF) >> 0xB;
                phi_a0 = temp_v1_2;
                if (temp_v1_2 < 0) {
                    phi_a0 = -temp_v1_2;
                }
                spA0 = spA0 - phi_a0;
            }
            spA4 = spA4 - (phi_s1->unk18 * 4);
            spA0 = (spA0 - (phi_s1->unk18 * 5)) - 8;
            temp_v1_3 = (phi_s1->unk10 * 4) + 0x8004CFA4;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk0 = 0xFB000000;
            temp_v0_11->unk4 = (s32) ((((temp_v1_3->unk2 << 8) | (temp_v1_3->unk0 << 0x18)) | (temp_v1_3->unk1 << 0x10)) | 0xFF);
            temp_a3 = phi_s1->unk14;
            spA4 = spA4 - (temp_a3 * 4);
            phi_a2 = phi_s1 + 4;
            phi_a3 = temp_a3;
            phi_s7 = phi_s7_2;
            if (temp_a3 != 0) {
loop_15:
                temp_a3_2 = phi_a3 - 1;
                if (0x20 != *phi_a2) {
                    temp_v0_12 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
                    temp_v0_12->unk0 = (s32) ((((((spA4 + 4) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((spA0 + 5) * 4) & 0xFFF));
                    temp_v0_12->unk4 = (s32) (((((spA4 - 4) * 4) & 0xFFF) << 0xC) | (((spA0 - 5) * 4) & 0xFFF));
                    temp_v0_13 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
                    temp_v0_13->unk0 = 0xB4000000;
                    temp_v0_13->unk4 = (s32) (*phi_a2 << 0x18);
                    temp_v0_14 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
                    temp_v0_14->unk4 = 0x4000400;
                    temp_v0_14->unk0 = 0xB3000000;
                    spA4 = spA4 + 8;
                }
                phi_a2 = phi_a2 + 1;
                phi_a3 = temp_a3_2;
                phi_s7 = phi_s7_2;
                if (temp_a3_2 != 0) {
                    goto loop_15;
                }
            }
        }
        phi_s1->unkC = (u16) (phi_s1->unkC - 1);
    }
    temp_fp = phi_fp - 1;
    phi_s1 = phi_s1 + 0x1C;
    phi_fp = temp_fp;
    if (temp_fp != 0) {
        goto loop_1;
    }
}
