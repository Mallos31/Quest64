void func_8764(void) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f8;
    f64 temp_f28;
    f64 temp_f30;
    s32 temp_s4;
    s32 temp_v0_3;
    u16 temp_a1;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *phi_s1;
    f32 phi_f8;
    s32 phi_s4;
    s32 phi_s4_2;

    temp_s4 = *(void *)0x8007BCE4;
    if (temp_s4 != 0) {
        temp_f30 = *(void *)0x80071110;
        temp_f28 = *(void *)0x80071118;
        phi_s1 = (void *)0x8007BD30;
        phi_s4_2 = temp_s4;
loop_2:
        temp_v0 = phi_s1->unk0;
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                if (temp_v0 != 2) {
                    if (temp_v0 != 3) {

                    } else {
                        temp_s0 = phi_s1 + 0x14;
                        phi_s1->unk2 = (u16) (phi_s1->unk2 - 1);
                        temp_s0->unk10 = (f32) (temp_s0->unk10 - (phi_s1->unk10 / 15.0f));
                        if (phi_s1->unk2 == 0) {
                            phi_s1->unk0 = (u16)0U;
                            phi_s1->unk2 = (u16) phi_s1->unk80->unk10->unk2;
                            temp_s0->unk10 = (f32) phi_s1->unkC;
                            func_0001D8B0(temp_s0, 0, 1, 0, 1, 1);
                        }
                    }
block_25:
                    phi_s4 = phi_s4_2 - 1;
                } else {
                    temp_v0_2 = phi_s1->unk2;
                    if (temp_v0_2 == 0) {
                        phi_s4 = phi_s4_2 - 1;
                    } else {
                        phi_s1->unk2 = (u16) (temp_v0_2 - 1);
                        temp_s0_2 = phi_s1 + 0x14;
                        temp_s0_2->unk10 = (f32) (temp_s0_2->unk10 + (phi_s1->unk10 / 15.0f));
                        if (phi_s1->unk2 == 0) {
                            temp_a1 = phi_s1->unk80->unk18;
                            func_0001D8B0(temp_s0_2, temp_a1, 1, temp_a1, 1, 1);
                        }
                        goto block_25;
                    }
                }
            } else {
                temp_s0_3 = phi_s1 + 0x14;
                (void *)0x8007BCB8->unk0 = 0.0f;
                (void *)0x8007BCB8->unk4 = (f32) *(void *)0x80071120;
                func_000232F4(temp_s0_3->unk10, (void *)0x8007BCB8);
                func_00008290((void *)0x8007BCB8->unk0, (void *)0x8007BCB8->unk4, temp_s0_3);
                temp_t8 = phi_s1->unk2 - 1;
                phi_s1->unk2 = temp_t8;
                if ((temp_t8 & 0xFFFF) == 0) {
                    phi_s1->unk0 = (u16)0U;
                    phi_s1->unk2 = (u16) phi_s1->unk80->unk10->unk2;
                    func_0001D8B0(temp_s0_3, 0, 1, 0, 1, 1);
                    *(void *)0x8007BCB4 = (u16) (*(void *)0x8007BCB4 - 1);
                }
                goto block_25;
            }
        } else {
            if (2 == phi_s1->unk80->unk4) {
                temp_t9 = phi_s1->unk2 - 1;
                phi_s1->unk2 = temp_t9;
                if ((temp_t9 & 0xFFFF) == 0) {
                    if ((s32) *(void *)0x8007BCB4 < 3) {
                        phi_s1->unk0 = (u16)1U;
                        temp_s0_4 = phi_s1 + 0x14;
                        phi_s1->unk2 = (u16) ((func_00022FD0(2) + 1) * phi_s1->unk80->unk10->unkE);
                        func_0001D8B0(temp_s0_4, 1, 1, 1, 1, 1);
                        temp_f20 = phi_s1->unk4 - temp_s0_4->unk0;
                        temp_f22 = phi_s1->unk8 - temp_s0_4->unk8;
                        if (50.0 < (f64) func_00034F60((temp_f20 * temp_f20) + (temp_f22 * temp_f22))) {
                            temp_s0_4->unk10 = func_00023210(temp_f20, temp_f22);
                        } else {
                            temp_v0_3 = func_00022FD0(0x10);
                            temp_f8 = (f32) temp_v0_3;
                            phi_f8 = temp_f8;
                            if (temp_v0_3 < 0) {
                                phi_f8 = temp_f8 + 4294967296.0f;
                            }
                            temp_s0_4->unk10 = (f32) (((f64) phi_f8 * temp_f28) - temp_f30);
                        }
                        *(void *)0x8007BCB4 = (u16) (*(void *)0x8007BCB4 + 1);
                    } else {
                        phi_s1->unk2 = (u16) ((func_00022FD0(2) + 1) * phi_s1->unk80->unk10->unk2);
                    }
                }
            }
            goto block_25;
        }
        phi_s1 = phi_s1 + 0x84;
        phi_s4_2 = phi_s4;
        if (phi_s4 != 0) {
            goto loop_2;
        }
    }
}

