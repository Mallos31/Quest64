void *func_11df8(s32 arg0) {
    s32 sp88;
    s32 *sp84;
    s32 sp78;
    ? sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    ? *temp_a3;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_v0_6;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1_2;
    s32 temp_v1_3;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1;
    s32 phi_a0;
    s32 phi_t0;
    s32 phi_t1;
    void *phi_v0;
    ? *phi_a3;
    s32 phi_v1;
    s32 *phi_v0_2;
    s32 *phi_a3_2;
    s32 phi_v1_2;
    s32 *phi_a3_3;
    s32 *phi_a3_4;

    if (*(void *)0x8007B2F4 != 0) {
        sp88 = (arg0 * 0x38) + 0x80085810;
    } else {
        sp88 = (arg0 * 0x38) + 0x80085650;
    }
    temp_a1 = (arg0 * 0x30) + 0x800859E8;
    temp_a2 = temp_a1->unk4;
    if (temp_a2 != 0) {
        temp_v1 = temp_a1->unk10;
        temp_a0 = temp_v1->unk0;
        temp_t0 = temp_v1->unk4;
        temp_t1 = temp_v1->unk8;
        if (temp_a2 != 1) {
            if (temp_a2 != 2) {
                if (temp_a2 != 3) {
                    phi_a0 = temp_a0;
                    phi_t0 = temp_t0;
                    phi_t1 = temp_t1;
                } else {
                    temp_t5 = temp_a1->unk8 - 1;
                    temp_a1->unk8 = temp_t5;
                    if (temp_t5 == 0) {
                        temp_a1->unk8 = (s32) temp_a1->unkC;
                        temp_a1->unk10 = (void *) temp_a1->unk14;
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    } else {
                        temp_a1->unk10 = (void *) (temp_a1->unk10 + 0xC);
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    }
                }
            } else {
                temp_v0 = temp_a1->unk8;
                temp_t6 = temp_v0 - 1;
                phi_a0 = temp_a0;
                phi_t0 = temp_t0;
                phi_t1 = temp_t1;
                if (temp_v0 != 0) {
                    temp_a1->unk8 = temp_t6;
                    phi_a0 = temp_a0;
                    phi_t0 = temp_t0;
                    phi_t1 = temp_t1;
                    if (temp_t6 != 0) {
                        temp_a1->unk10 = (void *) (temp_a1->unk10 + 0xC);
                        phi_a0 = temp_a0;
                        phi_t0 = temp_t0;
                        phi_t1 = temp_t1;
                    }
                }
            }
        } else {
            temp_a1->unk10 = (void *) (temp_v1 + 0xC);
            temp_t4 = temp_a1->unk8 - 1;
            temp_a1->unk8 = temp_t4;
            phi_a0 = temp_a0;
            phi_t0 = temp_t0;
            phi_t1 = temp_t1;
            if (temp_t4 == 0) {
                temp_a1->unk4 = 0;
                phi_a0 = temp_a0;
                phi_t0 = temp_t0;
                phi_t1 = temp_t1;
            }
        }
    } else {
        phi_a0 = 0;
        phi_t0 = 0;
        phi_t1 = 0;
    }
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xFB000000;
    temp_v0_2->unk4 = (s32) ((((phi_a0 << 0x18) | ((phi_t0 & 0xFF) << 0x10)) | ((phi_t1 & 0xFF) << 8)) | 0xB4);
    if (temp_a1->unk18 != 0) {
        temp_a0_2 = temp_a1->unk24;
        temp_lo = (void *)0x80085B68->unk0 * *temp_a0_2;
        temp_a0_2 = temp_a0_2 + 0xC;
        sp48 = temp_lo >> 8;
        sp4C = (s32) ((void *)0x80085B68->unk4 * temp_a0_2->unk-8) >> 8;
        sp50 = (s32) ((void *)0x80085B68->unk8 * temp_a0_2->unk-4) >> 8;
        phi_v0 = (void *)0x80085B74;
        phi_a3 = &sp54;
        phi_v1 = 3;
loop_19:
        temp_v1_2 = phi_v1 - 1;
        temp_v0_3 = phi_v0 + 0xC;
        temp_a3 = phi_a3 + 0xC;
        temp_a3->unk-C = (s32) ((s32) (*phi_v0 * temp_a0_2->unk0) >> 8);
        temp_a3->unk-8 = (s32) ((s32) (temp_v0_3->unk-8 * temp_a0_2->unk4) >> 8);
        temp_a3->unk-4 = (s32) ((s32) (temp_v0_3->unk-4 * temp_a0_2->unk8) >> 8);
        phi_v0 = temp_v0_3;
        phi_a3 = temp_a3;
        phi_v1 = temp_v1_2;
        if (temp_v1_2 != 0) {
            goto loop_19;
        }
        *(void *)0x80085BB0 = (s32) temp_a0_2->unk0;
        *(void *)0x80085BB4 = (s32) temp_a0_2->unk4;
        *(void *)0x80085BB8 = (s32) temp_a0_2->unk8;
        temp_v0_4 = temp_a1->unk18;
        if (temp_v0_4 != 1) {
            if (temp_v0_4 != 2) {
                if (temp_v0_4 != 3) {
                    phi_a3_4 = &sp48;
                } else {
                    temp_t5_2 = temp_a1->unk20 - 1;
                    temp_a1->unk20 = temp_t5_2;
                    if (temp_t5_2 == 0) {
                        temp_a1->unk20 = (s32) temp_a1->unk1C;
                        temp_a1->unk24 = (void *) temp_a1->unk28;
                        phi_a3_4 = &sp48;
                    } else {
                        temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
                        phi_a3_4 = &sp48;
                    }
                }
            } else {
                temp_v0_5 = temp_a1->unk20;
                temp_t7 = temp_v0_5 - 1;
                phi_a3_4 = &sp48;
                if (temp_v0_5 != 0) {
                    temp_a1->unk20 = temp_t7;
                    phi_a3_4 = &sp48;
                    if (temp_t7 != 0) {
                        temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
                        phi_a3_4 = &sp48;
                    }
                }
            }
        } else {
            temp_t6_2 = temp_a1->unk20 - 1;
            temp_a1->unk24 = (void *) (temp_a1->unk24 + 0x18);
            temp_a1->unk20 = temp_t6_2;
            phi_a3_4 = &sp48;
            if (temp_t6_2 == 0) {
                temp_a1->unk18 = 0;
                phi_a3_4 = &sp48;
            }
        }
    } else {
        *(void *)0x80085BB4 = 0xFF;
        *(void *)0x80085BB8 = 0xFF;
        *(void *)0x80085BB0 = 0xFF;
        phi_a3_4 = (void *)0x80085B68;
    }
    temp_t8 = temp_a1->unk2C;
    sp78 = temp_t8;
    if (temp_t8 == 0) {
        sp78 = 0x80085B98;
    }
    phi_a3_3 = phi_a3_4;
    if (temp_a1->unk0 == 2) {
        phi_v0_2 = phi_a3_4;
        phi_a3_2 = &sp48;
        phi_v1_2 = 3;
loop_37:
        temp_a0_3 = phi_v0_2->unk0;
        temp_v1_3 = phi_v1_2 - 1;
        temp_a3_2 = phi_a3_2 + 0xC;
        temp_a3_2->unk-C = (s32) ((temp_a0_3 - (temp_a0_3 >> 2)) + 0x3F);
        temp_a1_2 = phi_v0_2->unk4;
        temp_v0_6 = phi_v0_2 + 0xC;
        temp_a3_2->unk-8 = (s32) ((temp_a1_2 - (temp_a1_2 >> 2)) + 0x3F);
        temp_a2_2 = temp_v0_6->unk-4;
        temp_a3_2->unk-4 = (s32) ((temp_a2_2 - (temp_a2_2 >> 2)) + 0x3F);
        phi_v0_2 = temp_v0_6;
        phi_a3_2 = temp_a3_2;
        phi_v1_2 = temp_v1_3;
        if (temp_v1_3 != 0) {
            goto loop_37;
        }
        temp_a3_2->unk0 = (s32) temp_v0_6->unk0;
        temp_a3_2->unk4 = (s32) temp_v0_6->unk4;
        temp_a3_2->unk8 = (s32) temp_v0_6->unk8;
        phi_a3_3 = &sp48;
    }
    sp84 = phi_a3_3;
    func_00011768(sp88, phi_a3_3, sp78, phi_a3_3);
    temp_a3_3 = phi_a3_3;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk0 = 0xBC000002;
    temp_v0_7->unk4 = 0x80000080;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = (s32) (sp88 + 8);
    temp_v0_8->unk0 = 0x3860010;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = (s32) (sp88 + 0x18);
    temp_v0_9->unk0 = 0x3880010;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = (s32) (sp88 + 0x28);
    temp_v0_10->unk0 = 0x38A0010;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = sp88;
    temp_v0_11->unk0 = 0x38C0010;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk0 = 0xF8000000;
    temp_v0_12->unk4 = (s32) (((((temp_a3_3->unk2C & 0xFF) << 8) | (temp_a3_3->unk24 << 0x18)) | ((temp_a3_3->unk28 & 0xFF) << 0x10)) | 0xFF);
    if ((*(void *)0x80084EE0 & 0x80) != 0) {
        *(void *)0x8007B300 = (s32) temp_a3_3->unk24;
        *(void *)0x8007B304 = (s32) temp_a3_3->unk28;
        *(void *)0x8007B308 = (s32) temp_a3_3->unk2C;
    } else {
        *(void *)0x8007B308 = 0;
        *(void *)0x8007B304 = 0;
        *(void *)0x8007B300 = 0;
    }
    *(void *)0x80085BBC = (s32) temp_a3_3->unk24;
    *(void *)0x80085BC0 = (s32) temp_a3_3->unk28;
    *(void *)0x80085BC4 = (s32) temp_a3_3->unk2C;
    return (void *)0x8007B304;
}
