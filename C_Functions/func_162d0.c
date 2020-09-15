void *func_162d0(void) {
    s32 temp_a0;
    s32 temp_fp;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_t2;
    s32 temp_v0_9;
    u16 temp_t3;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_s0;
    s32 phi_s7;
    void *phi_s2;
    s32 phi_s7_2;
    s32 phi_s0_2;
    s32 phi_s4;
    s32 phi_s3;
    s32 phi_fp;
    void *phi_return;
    s32 phi_s4_2;
    s32 phi_s3_2;
    s32 phi_fp_2;

    phi_s0 = (void *)0x80087170;
    phi_s7 = 4;
loop_1:
    if (phi_s0->unk0 != 0) {
        temp_t8 = phi_s0->unk2 - 1;
        phi_s0->unk2 = temp_t8;
        if ((temp_t8 & 0xFFFF) == 0) {
            temp_t3 = phi_s0->unk4 + 1;
            phi_s0->unk0 = (u16) (phi_s0->unk0 - 1);
            phi_s0->unk4 = temp_t3;
            func_00014A98(phi_s0->unk14, phi_s0->unk8, temp_t3 & 0xFFFF, phi_s0->unkC);
            phi_s0->unk2 = (u16) (phi_s0->unk10->unk22 + 1);
        }
    }
    temp_s7 = phi_s7 - 1;
    phi_s0 = phi_s0 + 0x18;
    phi_s7 = temp_s7;
    if (temp_s7 != 0) {
        goto loop_1;
    }
    phi_s2 = (void *)0x80086F18;
    phi_s7_2 = 0;
    phi_fp_2 = 0;
loop_6:
    temp_v0 = phi_s2->unk4;
    phi_fp = phi_fp_2;
    if (temp_v0 != 0) {
        temp_v1 = phi_s2->unk8;
        temp_fp = phi_fp_2 + 1;
        if (temp_v1 != 0) {
            phi_s2->unk8 = (u16) (temp_v1 - 1);
        } else {
            phi_s2->unk4 = (u16) (temp_v0 - 1);
            ((phi_s2->unk2C->unk12 * 4) + 0x80050000)->unk-32FC(phi_s2);
            temp_v0_2 = ((phi_s2->unk2C->unk16 * 4) + 0x80050000)->unk-32F0(phi_s2, phi_s7_2);
            if (temp_v0_2 != 0) {
                func_0001829C(phi_s7_2, temp_v0_2);
                if (((*temp_v0_2->unk68 & 0x100) == 0) || (phi_s2->unk2C->unk18 == 2)) {
                    if (func_000183C4(phi_s2, temp_v0_2) != 0) {
                        temp_a0 = phi_s2->unk24;
                        if (temp_v0_2 == temp_a0) {
                            func_000208B8(temp_a0);
                        } else {
                            if ((temp_v0_2->unk5E & 1) != 0) {
                                func_0000B110(temp_v0_2);
                            } else {
                                func_00006F6C(temp_a0);
                            }
                        }
                    } else {
                        ((phi_s2->unk2C->unk10 * 4) + 0x80050000)->unk-32E4(phi_s2, temp_v0_2);
                        phi_s0_2 = 0;
                        phi_s4_2 = 0;
                        phi_s3_2 = 0;
loop_19:
                        phi_s4 = phi_s4_2;
                        phi_s3 = phi_s3_2;
                        if ((phi_s2->unk2C + phi_s0_2)->unk32 != 0) {
                            temp_s4 = phi_s4_2 + 1;
                            phi_s4 = temp_s4;
                            phi_s3 = phi_s3_2;
                            if (func_00018484(phi_s2, phi_s2->unk24, phi_s0_2) != 0) {
                                func_00018524(phi_s2, temp_v0_2, phi_s0_2);
                                *((phi_s0_2 * 4) + 0x8004CD44)((phi_s2->unk2C + phi_s0_2)->unk32, temp_v0_2);
                                phi_s4 = temp_s4;
                                phi_s3 = phi_s3_2 + 1;
                            }
                        }
                        temp_s0 = phi_s0_2 + 1;
                        phi_s0_2 = temp_s0;
                        phi_s4_2 = phi_s4;
                        phi_s3_2 = phi_s3;
                        if (temp_s0 != 0xC) {
                            goto loop_19;
                        }
                        if (phi_s2->unk2C->unk10 == 5) {
                            if (phi_s4 != 0) {
                                if (phi_s3 == 0) {
                                    func_000208B8(temp_v0_2);
                                }
                            }
                        }
                    }
                } else {

                }
                func_00017D04(phi_s2, temp_v0_2);
                if ((phi_s2->unk2C->unk2 & 4) == 0) {
                    temp_v0_3 = phi_s2->unk34;
                    phi_s2->unk4 = (u16)0U;
                    if (temp_v0_3 != 0) {
                        if ((temp_v0_3->unk8 & 1) != 0) {
                            temp_v0_3->unk0 = (u16)7;
                            temp_v0_4 = phi_s2->unk34;
                            temp_v0_4->unk8 = (u16) (temp_v0_4->unk8 & 0xFFFE);
                        }
                    }
                } else {
                    phi_s2->unkA = (u16) (phi_s2->unkA | 2);
                }
            }
        }
        temp_v0_5 = phi_s2->unk34;
        if (temp_v0_5 != 0) {
            temp_v0_5->unkC = (f32) phi_s2->unkC;
            phi_s2->unk34->unk10 = (f32) phi_s2->unk10;
            phi_s2->unk34->unk14 = (f32) phi_s2->unk14;
            phi_s2->unk34->unk28 = (f32) phi_s2->unk18;
            phi_s2->unk34->unk2C = (f32) phi_s2->unk1C;
            phi_s2->unk34->unk30 = (f32) phi_s2->unk20;
            if (phi_s2->unk4 == 0) {
                temp_v0_6 = phi_s2->unk34;
                if ((temp_v0_6->unk8 & 1) != 0) {
                    temp_v0_6->unk0 = (u16)7;
                    temp_v0_7 = phi_s2->unk34;
                    temp_v0_7->unk8 = (u16) (temp_v0_7->unk8 & 0xFFFE);
                }
            }
        }
        temp_v0_8 = phi_s2->unk30;
        phi_fp = temp_fp;
        if ((s32) temp_v0_8->unk10 >= 0) {
            temp_v1_2 = phi_s2->unk6;
            if ((u32) temp_v1_2 >= (u32) ((s32) temp_v0_8->unk12 >> 8)) {
                func_00017BD4(phi_s2, phi_s2->unk28);
                phi_s2->unk6 = (u16)0U;
                phi_fp = temp_fp;
            } else {
                phi_s2->unk6 = (u16) (temp_v1_2 + 1);
                phi_fp = temp_fp;
            }
        }
    }
    temp_s7_2 = phi_s7_2 + 1;
    phi_s2 = phi_s2 + 0x3C;
    phi_s7_2 = temp_s7_2;
    phi_fp_2 = phi_fp;
    if (temp_s7_2 != 0xA) {
        goto loop_6;
    }
    temp_v0_9 = *(void *)0x80086F10;
    if ((temp_v0_9 & 1) != 0) {
        if (phi_fp == 0) {
            *(void *)0x80086F10 = 2;
            *(void *)0x80086F14 = 0x1E;
            return (void *)0x80086F14;
        }
    }
    phi_return = (void *)0x80080000;
    if ((temp_v0_9 & 2) != 0) {
        temp_t2 = *(void *)0x80086F14 - 1;
        *(void *)0x80086F14 = temp_t2;
        phi_return = (void *)0x80086F14;
        if (temp_t2 == 0) {
            *(void *)0x80086F10 = 0;
            phi_return = func_000111A4(*(void *)0x8007B340, 2, 8, 0x800EBEF8);
        }
    }
    return phi_return;
}
