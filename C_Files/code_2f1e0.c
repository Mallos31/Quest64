void func_8002E5E0(s32 arg0) {
    s32 temp_s0;
    s32 phi_s0;

    phi_s0 = 0;
loop_1:
    func_8002E628(phi_s0, 0);
    temp_s0 = phi_s0 + 1;
    phi_s0 = temp_s0;
    if (temp_s0 != 4) {
        goto loop_1;
    }
}

s32 func_8002E628(s32 arg0, s32 arg1) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a2;
    s32 phi_v1;
    void *phi_a2_2;
    s32 phi_v1_2;
    void *phi_a0;
    s32 phi_v1_3;

    if ((arg1 & 0xFF) == 0) {
        temp_v0 = (arg0 * 0x89C) + 0x800905E0;
        temp_v0->unk6 = (u16)0;
        temp_v0->unkA = (u16)0;
        temp_v0->unk0 = 0;
        temp_v0->unk4 = (s16) temp_v0->unk6;
        temp_v0->unk8 = (s16) temp_v0->unkA;
    }
    temp_v0_2 = (arg0 * 0x89C) + 0x800905E0;
    temp_a1 = (arg0 * 0x89C) + 0x800905E0;
    temp_v0_2->unkC = (u16)1;
    temp_v0_2->unkE = (u8)0;
    temp_v0_2->unkF = (u8)0;
    temp_v0_2->unk10 = (u8)0;
    temp_v0_2->unk12 = (u16)0;
    temp_v0_2->unk14 = (u8)0xFF;
    temp_v0_2->unk15 = (u8)0;
    temp_v0_2->unk16 = (u8)0;
    phi_a2 = temp_a1;
    phi_v1 = 0;
loop_3:
    temp_v1 = phi_v1 + 1;
    temp_a2 = phi_a2 + 1;
    temp_a2->unk16 = (u8)0xFF;
    phi_a2 = temp_a2;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x20) {
        goto loop_3;
    }
    phi_a2_2 = temp_a1;
    phi_v1_2 = 0;
loop_5:
    temp_v1_2 = phi_v1_2 + 1;
    temp_a2_2 = phi_a2_2 + 1;
    temp_a2_2->unk9B = (u8)0xFF;
    temp_a2_2->unk49B = (u8)0xFF;
    phi_a2_2 = temp_a2_2;
    phi_v1_2 = temp_v1_2;
    if (temp_v1_2 < 0x400) {
        goto loop_5;
    }
    temp_v0_2->unk38 = (u16)0;
    temp_v0_2->unk3A = (u16)0;
    phi_a0 = temp_a1;
    phi_v1_3 = 0;
loop_7:
    temp_v1_3 = phi_v1_3 + 1;
    temp_a0 = phi_a0 + 1;
    temp_a0->unk53 = (u8)0xFF;
    temp_a0->unk6B = (u8)0xFF;
    temp_a0->unk83 = (u8)0xFF;
    temp_a0->unk3B = (u8)0xFF;
    phi_a0 = temp_a0;
    phi_v1_3 = temp_v1_3;
    if (temp_v1_3 != 0x18) {
        goto loop_7;
    }
    return 0x18;
}

s32 func_8002E768(s32 arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s2;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_v0;
    s32 temp_v0_2;
    s8 temp_s1;
    u8 temp_t7_4;
    void *temp_a1;
    void *temp_a2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *phi_t2;
    s32 phi_v0;
    s32 phi_v1;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v1_3;
    void *phi_v0_3;
    void *phi_v1_4;
    void *phi_v0_4;
    s32 phi_a0;
    void *phi_a1;
    s16 phi_t8;
    s32 phi_s2;
    s32 phi_v1_5;
    void *phi_a3;

    phi_t2 = (void *)0x800905E0;
    phi_v1 = -1;
    phi_s2 = 0;
loop_1:
    temp_v0 = phi_t2->unk0;
    if ((temp_v0 & 0x20000000) != 0) {
        temp_a0 = (temp_v0 & 7) - 1;
        temp_t7 = temp_v0 & -8;
        phi_v0 = temp_v0;
        if (temp_a0 > 0) {
            temp_t9 = temp_t7 | temp_a0;
            phi_t2->unk0 = temp_t7;
            phi_t2->unk0 = temp_t9;
            temp_v0_2 = temp_t9 & 0x7FFFFFFF;
            phi_t2->unk0 = temp_v0_2;
            phi_v0 = temp_v0_2;
        }
        phi_t2->unk0 = (s32) (phi_v0 | 0x400000);
        phi_v1_5 = phi_v1;
    } else {
        phi_v1_5 = phi_v1;
        if (phi_v1 < 0) {
            temp_t9_2 = temp_v0 | 0x10000000;
            phi_t2->unk0 = temp_t9_2;
            if (arg0 < 0) {
                temp_t7_2 = temp_t9_2 | 0x40000000;
                phi_t2->unk0 = temp_t7_2;
                if (arg0 == -2) {
                    temp_t9_3 = temp_t7_2 | 0x80000;
                    phi_t2->unk0 = temp_t9_3;
                    phi_t2->unk0 = (s32) (temp_t9_3 & 0xBFFFFFFF);
                }
                if (arg0 == -3) {
                    phi_t2->unk0 = (s32) (phi_t2->unk0 | 0x80000);
                }
            }
            temp_t7_3 = phi_t2->unk0 & -8;
            phi_t2->unk0 = temp_t7_3;
            temp_t9_4 = temp_t7_3 | 4;
            phi_t2->unk0 = temp_t9_4;
            if ((temp_t9_4 & 0x80000) == 0) {
                temp_a2 = (((((((phi_s2 * 0x10) + phi_s2) * 4) + phi_s2) * 8) - phi_s2) * 4) + 0x800905E0;
                temp_s1 = *(void *)0x8005F9B0 + *(void *)0x8005FA00;
                temp_t5 = *(void *)0x800905C8;
                phi_v1_2 = (void *)0x8007C970;
                phi_v0_2 = temp_a2;
loop_13:
                temp_v1 = phi_v1_2 + 1;
                temp_v0_3 = phi_v0_2 + 1;
                temp_v0_3->unk16 = (u8) *phi_v1_2;
                phi_v1_2 = temp_v1;
                phi_v0_2 = temp_v0_3;
                if ((u32) temp_v1 < 0x8007C990U) {
                    goto loop_13;
                }
                phi_v1_3 = (void *)0x8007C570;
                phi_v0_3 = temp_a2;
loop_15:
                temp_v1_2 = phi_v1_3 + 4;
                temp_v0_4 = phi_v0_3 + 4;
                temp_v0_4->unk99 = (u8) phi_v1_3->unk1;
                temp_v0_4->unk9A = (u8) phi_v1_3->unk2;
                temp_v0_4->unk9B = (u8) phi_v1_3->unk3;
                temp_v0_4->unk98 = (u8) phi_v1_3->unk0;
                phi_v1_3 = temp_v1_2;
                phi_v0_3 = temp_v0_4;
                if (temp_v1_2 != 0x8007C970) {
                    goto loop_15;
                }
                if (temp_t5 > 0) {
                    phi_a1 = (void *)0x800905C8;
                    phi_a3 = temp_a2;
loop_18:
                    phi_v1_4 = phi_a1->unk8;
                    phi_v0_4 = phi_a3;
                    phi_a0 = 0;
loop_19:
                    temp_a0_2 = phi_a0 + 4;
                    temp_v0_5 = phi_v0_4 + 4;
                    temp_v0_5->unk38 = (u8) phi_v1_4->unk0;
                    temp_v1_3 = phi_v1_4 + 4;
                    temp_v0_5->unk39 = (u8) phi_v1_4->unk1;
                    temp_v0_5->unk3A = (u8) temp_v1_3->unk-2;
                    temp_v0_5->unk3B = (u8) temp_v1_3->unk-1;
                    phi_v1_4 = temp_v1_3;
                    phi_v0_4 = temp_v0_5;
                    phi_a0 = temp_a0_2;
                    if (temp_a0_2 != 0x18) {
                        goto loop_19;
                    }
                    temp_a1 = phi_a1 + 4;
                    phi_a1 = temp_a1;
                    phi_a3 = phi_a3 + 0x18;
                    if ((u32) temp_a1 < (u32) ((temp_t5 * 4) + (void *)0x800905C8)) {
                        goto loop_18;
                    }
                }
                phi_t2->unk38 = (s16) temp_t5;
                phi_t2->unk3A = (s16) *(void *)0x800905CC;
                if (arg0 >= 0) {
                    temp_v0_6 = (arg0 * 8) + 0x8005F9B8;
                    phi_t2->unkE = (s8) arg0;
                    phi_t2->unk4 = (s16) temp_v0_6->unk0;
                    phi_t2->unk6 = (s16) temp_v0_6->unk2;
                    phi_t2->unk8 = (s16) temp_v0_6->unk4;
                    phi_t8 = temp_v0_6->unk6;
                } else {
                    phi_t2->unk4 = (s16) (void *)0x8005F9F8->unk0;
                    phi_t2->unkE = (u8)0x80;
                    phi_t2->unk6 = (s16) (void *)0x8005F9F8->unk2;
                    phi_t2->unk8 = (s16) (void *)0x8005F9F8->unk4;
                    phi_t8 = (void *)0x8005F9F8->unk6;
                }
                phi_t2->unkA = phi_t8;
                phi_t2->unkF = temp_s1;
                phi_t2->unk10 = temp_s1;
            }
            temp_t7_4 = phi_t2->unk9D;
            phi_t2->unk12 = (u16)1;
            phi_t2->unk9D = (u8)0xFFU;
            *(void *)0x800905C0 = (s32) (*(void *)0x800905C0 + 1);
            phi_t2->unk14 = temp_t7_4;
            phi_v1_5 = phi_s2;
        }
    }
    temp_s2 = phi_s2 + 1;
    phi_t2 = phi_t2 + 0x89C;
    phi_v1 = phi_v1_5;
    phi_s2 = temp_s2;
    if (temp_s2 != 4) {
        goto loop_1;
    }
    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
    *(void *)0x80092850 = (u8)0;
    return phi_v1_5;
}

Failed to decompile function func_8002EAA0:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

s32 func_8002FB30(s32 arg0) {
    s32 sp68;
    u32 sp50;
    s32 sp40;
    s32 sp3C;
    s16 temp_a1;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_v0_2;
    void *temp_s2;
    s32 phi_s0;
    s32 phi_s1;

    temp_s2 = (arg0 * 0x89C) + 0x800905E0;
    temp_v1 = temp_s2->unk8;
    temp_a1 = temp_s2->unkA;
    sp68 = 0;
    if ((temp_s2->unk0 & 0x10000000) != 0) {
        temp_v0 = temp_s2->unkC;
        sp50 = 0xCU;
        phi_s0 = temp_v0 * ((u32) temp_v1 / 0xCU);
        phi_s1 = temp_v0 * ((u32) temp_a1 / 0xCU);
    } else {
        temp_v0_2 = 0xB - temp_s2->unkC;
        sp50 = 0xAU;
        phi_s0 = temp_v0_2 * ((u32) temp_v1 / 0xAU);
        phi_s1 = temp_v0_2 * ((u32) temp_a1 / 0xAU);
    }
    temp_s4 = ((s32) ((temp_s2->unk6 + ((s32) temp_a1 >> 1)) << 0x10) >> 0x10) - (phi_s1 >> 1);
    temp_s3 = ((s32) ((temp_s2->unk4 + ((s32) temp_v1 >> 1)) << 0x10) >> 0x10) - (phi_s0 >> 1);
    func_800307D8(0, temp_s3, temp_s4, phi_s0, phi_s1);
    temp_a1_2 = temp_s3 + phi_s0;
    sp40 = temp_a1_2;
    func_800307D8(3, temp_a1_2, temp_s4 + 3, 3, phi_s1);
    temp_a2 = temp_s4 + phi_s1;
    sp3C = temp_a2;
    func_800307D8(3, temp_s3 + 3, temp_a2, phi_s0, 3);
    func_800307D8(3, temp_s3, temp_s4, phi_s0, 1);
    func_800307D8(3, temp_s3, temp_a2 - 1, phi_s0, 1);
    func_800307D8(3, temp_s3, temp_s4, 1, phi_s1);
    func_800307D8(3, temp_a1_2 - 1, temp_s4, 1, phi_s1);
    temp_s2->unkC = (s16) (temp_s2->unkC + 1);
    if (sp50 < (u32) temp_s2->unkC) {
        sp68 = -1;
    }
    return sp68;
}

void func_8002FD90(s32 arg0) {
    void *sp2C;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk4 = 0;
    temp_v1->unk0 = 0xE7000000;
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk4 = -0x34;
    temp_v1_2->unk0 = 0xFB000000;
    temp_v0 = (arg0 * 0x89C) + 0x800905E0;
    if (temp_v0->unk17 != 0xFF) {
        sp2C = temp_v0;
        func_800307D8(1, temp_v0->unk4 + 0x1B, temp_v0->unk6 + 4, 0x28, 0xD);
        func_80030EA0(temp_v0->unk4 + 0x49, temp_v0->unk6 + 4, temp_v0 + 0x17);
        func_80030EA0(temp_v0->unk4 + 0x10, temp_v0->unk6 + 0x14, temp_v0 + 0x49C);
        return;
    }
    func_80030EA0(temp_v0->unk4 + 6, temp_v0->unk6 + 6, temp_v0 + 0x49C, 0x28);
}

void func_8002FEA4(s32 arg0) {
    s16 temp_s1;
    s16 temp_s2;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -0x34;
    temp_v0_2->unk0 = 0xFB000000;
    temp_s0 = (arg0 * 0x89C) + 0x800905E0;
    func_800307D8(0, temp_s0->unk4, temp_s0->unk6, temp_s0->unk8, (?32) temp_s0->unkA);
    func_800307D8(3, temp_s0->unk8 + temp_s0->unk4, temp_s0->unk6 + 2, 2, (?32) temp_s0->unkA);
    func_800307D8(3, temp_s0->unk4 + 2, temp_s0->unkA + temp_s0->unk6, temp_s0->unk8, 2);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = -1;
    temp_v0_4->unk0 = 0xFB000000;
    temp_s1 = temp_s0->unk4;
    temp_s2 = temp_s0->unk6;
    func_800307D8(3, temp_s1, temp_s2, temp_s0->unk8, 1);
    func_800307D8(3, temp_s1, (temp_s0->unkA + temp_s2) - 1, temp_s0->unk8, 1);
    func_800307D8(3, temp_s1, temp_s2, 1, (?32) temp_s0->unkA);
    func_800307D8(3, (temp_s0->unk8 + temp_s1) - 1, temp_s2, 1, (?32) temp_s0->unkA);
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void func_80030068(s32 arg0, s32 arg1, s32 arg3) {
    s32 sp28;
    s16 temp_t5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t5_2;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1;
    u8 temp_a2;
    u8 temp_a2_2;
    u8 temp_a2_5;
    u8 temp_t6;
    u8 temp_t7;
    u8 temp_v1_2;
    void *temp_s2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_v0_8;
    s32 phi_t9;
    s32 phi_t2;
    s32 phi_t3;
    void *phi_t0;
    s32 phi_t1;
    void *phi_t0_2;
    s32 phi_t2_2;
    void *phi_v1;
    s32 phi_t1_2;
    s32 phi_t2_3;
    s32 phi_t3_2;
    s32 phi_a2;
    s32 phi_t2_4;
    s32 phi_t3_3;
    s32 phi_a2_2;
    s32 phi_a1;
    s32 phi_t3_4;
    s32 phi_a2_3;
    s32 phi_t3_5;
    s32 phi_s1;
    s32 phi_t3_6;
    s32 phi_t2_5;
    s32 phi_a1_2;
    s32 phi_a3;
    s32 phi_t2_6;
    s32 phi_t3_7;
    void *phi_t0_3;
    s32 phi_t1_3;
    s32 phi_t3_8;
    s32 phi_t2_7;
    s32 phi_t3_9;
    s32 phi_t2_8;
    s32 phi_a1_3;
    s32 phi_a1_4;
    s32 phi_t2_9;
    s32 phi_a1_5;
    void *phi_t0_4;
    void *phi_t0_5;
    void *phi_t0_6;
    void *phi_t0_7;

    temp_s2 = (arg0 * 0x89C) + 0x800905E0;
    temp_t5 = temp_s2->unk8 - 0x20;
    phi_t9 = (s32) temp_t5 >> 3;
    if ((s32) temp_t5 < 0) {
        phi_t9 = (s32) (temp_t5 + 7) >> 3;
    }
    temp_t5_2 = phi_t9;
    temp_lo = (s32) (temp_s2->unkA - 0x14) / 0xA;
    sp28 = temp_lo;
    phi_t3_6 = -1;
    phi_t2_5 = -1;
    phi_a1_2 = arg1;
    phi_a3 = arg3;
    if (temp_lo > 0) {
        temp_a3 = (arg0 * 0x89C) + 0x800905E0;
        phi_s1 = 1;
        phi_t2_6 = -1;
        phi_t3_7 = -1;
        phi_t0_3 = temp_a3 - 1;
        phi_a1_4 = arg1;
loop_4:
        phi_t2 = phi_t2_6;
        phi_t3 = phi_t3_7;
        phi_t0 = phi_t0_3;
        phi_t0_2 = phi_t0_3;
        phi_t2_2 = phi_t2_6;
        phi_t1_3 = 0;
        phi_t3_8 = phi_t3_7;
        if (temp_t5_2 > 0) {
loop_5:
            temp_a1 = phi_t2 + 1;
            temp_v0 = phi_t3 + 1;
            (temp_a3 + temp_v0)->unk49C = (u8) (temp_a3 + temp_a1)->unk9C;
            temp_a2 = phi_t0->unk49D;
            temp_t0 = phi_t0 + 1;
            if ((temp_a2 & 0x80) != 0) {
                phi_t0_2 = temp_t0;
                phi_t2_2 = temp_a1;
                phi_t3_8 = temp_v0;
                phi_a1_4 = temp_a1;
                if (0xE0 != temp_a2) {
                    phi_t0_2 = temp_t0;
                    phi_t2_2 = temp_a1;
                    phi_t3_8 = temp_v0;
                    phi_a1_4 = temp_a1;
                    if (0xFF != temp_a2) {
                        phi_t1 = phi_t1_3;
                        if (0xF0 == temp_a2) {
                            phi_t0_2 = temp_t0;
                            phi_t2_2 = temp_a1;
                            phi_t3_8 = temp_v0;
                            phi_a1_4 = temp_a1;
                        } else {
block_11:
                            phi_t2 = temp_a1;
                            phi_t3 = temp_v0;
                            phi_t0 = temp_t0;
                            phi_t0_2 = temp_t0;
                            phi_t2_2 = temp_a1;
                            phi_t1_3 = phi_t1;
                            phi_t3_8 = temp_v0;
                            phi_a1_4 = temp_a1;
                            if (phi_t1 < temp_t5_2) {
                                goto loop_5;
                            }
                        }
                    }
                }
            } else {
                phi_t1 = phi_t1_3 + 1;
                goto block_11;
            }
        }
        temp_a2_2 = phi_t0_2->unk49C;
        phi_t3_6 = phi_t3_8;
        phi_t2_5 = phi_t2_2;
        phi_a1_2 = phi_a1_4;
        phi_a3 = temp_a3;
        if (0xFF != temp_a2_2) {
            if (0xF0 == temp_a2_2) {
                temp_s2->unk0 = (s32) (temp_s2->unk0 | 0x4000000);
                phi_t3_6 = phi_t3_8;
                phi_t2_5 = phi_t2_2;
                phi_a1_2 = phi_a1_4;
                phi_a3 = temp_a3;
            } else {
                phi_t3_9 = phi_t3_8;
                phi_t2_8 = phi_t2_2;
                phi_a1_3 = phi_a1_4;
                phi_t0_3 = phi_t0_2;
                if (0xE0 != temp_a2_2) {
                    phi_t3_9 = phi_t3_8;
                    phi_t2_8 = phi_t2_2;
                    phi_a1_3 = phi_a1_4;
                    phi_t0_3 = phi_t0_2;
                    if (0xE0 != temp_a2_2) {
                        temp_a1_2 = phi_t2_2 + 1;
                        phi_a2_3 = -1;
                        phi_t3_5 = phi_t3_8;
                        phi_t2_9 = phi_t2_2;
                        phi_a1_5 = temp_a1_2;
                        phi_t0_4 = phi_t0_2;
                        if ((s32) (temp_a3 + phi_t2_2)->unk9D >= 0x80) {
                            phi_v1 = temp_a3 + temp_a1_2;
                            phi_t1_2 = temp_a1_2;
loop_19:
                            temp_v0_2 = phi_t1_2 + 1;
                            if (0xE0 == phi_v1->unk9C) {
                                temp_v0_3 = phi_t1_2 - phi_t2_2;
                                phi_a1 = temp_a1_2;
                                phi_t3_4 = phi_t3_8;
                                phi_t0_5 = phi_t0_2;
                                if (temp_v0_3 > 0) {
                                    temp_v1 = -(s32) (temp_v0_3 & 3);
                                    phi_t2_3 = phi_t2_2;
                                    phi_t3_2 = phi_t3_8;
                                    phi_a2 = temp_v0_3;
                                    phi_t2_4 = phi_t2_2;
                                    phi_t3_3 = phi_t3_8;
                                    phi_a2_2 = temp_v0_3;
                                    phi_t0_6 = phi_t0_2;
                                    phi_t0_7 = phi_t0_2;
                                    if (((temp_v1 == 0) || (temp_a1_3 = phi_t2_3 + 1, temp_v0_4 = phi_t3_2 + 1, temp_a2_3 = phi_a2 - 1, temp_t0_2 = phi_t0_7 + 1, (temp_a3 + temp_v0_4)->unk49C = (u8) (temp_a3 + temp_a1_3)->unk9C, phi_t2_3 = temp_a1_3, phi_t3_2 = temp_v0_4, phi_a2 = temp_a2_3, phi_t0_7 = temp_t0_2, ((temp_v1 + temp_v0_3) != temp_a2_3))) || (phi_t2_4 = temp_a1_3, phi_t3_3 = temp_v0_4, phi_a2_2 = temp_a2_3, phi_t2_7 = temp_a1_3, phi_t3_4 = temp_v0_4, phi_t0_5 = temp_t0_2, phi_t0_6 = temp_t0_2, (temp_a2_3 != 0))) {
loop_24:
                                        temp_a1_4 = phi_t2_4 + 1;
                                        temp_t6 = (temp_a3 + temp_a1_4)->unk9C;
                                        temp_v0_5 = phi_t3_3 + 1;
                                        temp_a1_4 = temp_a1_4 + 1;
                                        (temp_a3 + temp_v0_5)->unk49C = temp_t6;
                                        temp_t7 = (temp_a3 + temp_a1_4)->unk9C;
                                        temp_v0_5 = temp_v0_5 + 1;
                                        temp_a1_4 = temp_a1_4 + 1;
                                        (temp_a3 + temp_v0_5)->unk49C = temp_t7;
                                        temp_v0_5 = temp_v0_5 + 1;
                                        temp_t2 = temp_a1_4 + 1;
                                        (temp_a3 + temp_v0_5)->unk49C = (u8) (temp_a3 + temp_a1_4)->unk9C;
                                        temp_t3 = temp_v0_5 + 1;
                                        temp_a2_4 = phi_a2_2 - 4;
                                        temp_t0_3 = phi_t0_6 + 4;
                                        (temp_a3 + temp_t3)->unk49C = (u8) (temp_a3 + temp_t2)->unk9C;
                                        phi_t2_4 = temp_t2;
                                        phi_t3_3 = temp_t3;
                                        phi_a2_2 = temp_a2_4;
                                        phi_t2_7 = temp_t2;
                                        phi_t3_4 = temp_t3;
                                        phi_t0_5 = temp_t0_3;
                                        phi_t0_6 = temp_t0_3;
                                        if (temp_a2_4 != 0) {
                                            goto loop_24;
                                        }
                                    } else {

                                    }
                                    phi_a1 = phi_t2_7 + 1;
                                }
                                temp_v0_6 = phi_t3_4 + 1;
                                (temp_a3 + temp_v0_6)->unk49C = (u8) (temp_a3 + phi_a1)->unk9C;
                                phi_a2_3 = 0;
                                phi_t3_5 = temp_v0_6;
                                phi_t2_9 = phi_a1;
                                phi_a1_5 = phi_a1;
                                phi_t0_4 = phi_t0_5 + 1;
                            } else {
                                phi_v1 = phi_v1 + 1;
                                phi_t1_2 = temp_v0_2;
                                phi_a2_3 = -1;
                                phi_t3_5 = phi_t3_8;
                                phi_t2_9 = phi_t2_2;
                                phi_a1_5 = temp_a1_2;
                                phi_t0_4 = phi_t0_2;
                                if ((s32) (temp_a3 + temp_v0_2)->unk9C >= 0x80) {
                                    goto loop_19;
                                }
                            }
                        }
                        temp_v0_7 = phi_t3_5 + 1;
                        phi_t3_9 = phi_t3_5;
                        phi_t2_8 = phi_t2_9;
                        phi_a1_3 = phi_a1_5;
                        phi_t0_3 = phi_t0_4;
                        if (phi_a2_3 != 0) {
                            (temp_a3 + temp_v0_7)->unk49C = (u8)0xE0;
                            phi_t3_9 = temp_v0_7;
                            phi_t2_8 = phi_t2_9;
                            phi_a1_3 = phi_a1_5;
                            phi_t0_3 = phi_t0_4 + 1;
                        }
                    }
                }
                phi_s1 = phi_s1 + 1;
                phi_t3_6 = phi_t3_9;
                phi_t2_5 = phi_t2_8;
                phi_a1_2 = phi_a1_3;
                phi_a3 = temp_a3;
                phi_t2_6 = phi_t2_8;
                phi_t3_7 = phi_t3_9;
                phi_a1_4 = phi_a1_3;
                if (phi_s1 < sp28) {
                    goto loop_4;
                }
            }
        }
    }
    temp_a2_5 = (((arg0 * 0x89C) + phi_t3_6) + 0x80090000)->unkA7C;
    if (0xFF != temp_a2_5) {
        if (0xF0 != temp_a2_5) {
            temp_s2->unk0 = (s32) (temp_s2->unk0 | 0x4000000);
            (temp_s2 + phi_t3_6)->unk49D = (u8)0xFFU;
            temp_v1_2 = temp_s2->unk14;
            if (0xFF != temp_v1_2) {
                temp_v0_8 = temp_s2 + phi_t2_5;
                (temp_s2 + temp_s2->unk12)->unk9C = temp_v1_2;
                temp_s2->unk12 = (u16) (phi_t2_5 + 1);
                temp_s2->unk14 = (u8) temp_v0_8->unk9D;
                temp_v0_8->unk9D = (u8)0xFFU;
                return;
            }
            temp_t9 = temp_s2->unk0 | 0x2000000;
            temp_s2->unk0 = temp_t9;
            temp_s2->unk0 = (s32) (temp_t9 & 0xF7FFFFFF);
            func_80030D70((u8)0xFFU, phi_a1_2, temp_a2_5, phi_a3);
        }
    }
}

void func_800303E8(s32 arg0) {
    s32 sp6C;
    ? sp64;
    ? sp5C;
    ? sp54;
    void *sp24;
    s32 temp_t2;
    u8 temp_v0_12;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    sp64.unk0 = (s32) (void *)0x8005FA08->unk0;
    sp64.unk4 = (s32) (void *)0x8005FA08->unk4;
    sp5C.unk0 = (s32) (void *)0x8005FA10->unk0;
    sp5C.unk4 = (s32) (void *)0x8005FA10->unk4;
    sp54.unk0 = (s32) (void *)0x8005FA18->unk0;
    sp54.unk4 = (s32) (void *)0x8005FA18->unk4;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -1;
    temp_v0_2->unk0 = 0xFB000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0x8000;
    temp_v0_4->unk0 = 0xBA000E02;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE7000000;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0x8005FB80;
    temp_v0_6->unk0 = 0xFD100000;
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
    temp_v0_10->unk4 = 0x73FC000;
    temp_v0_10->unk0 = 0xF0000000;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE7000000;
    temp_t0 = (arg0 * 0x89C) + 0x800905E0;
    temp_t0->unkC = (s16) (temp_t0->unkC + 1);
    temp_t2 = ((s32) temp_t0->unkC >> 1) & 7;
    sp6C = temp_t2;
    sp24 = temp_t0;
    func_800307D8(3, ((temp_t0->unk8 + temp_t0->unk4) - 0xB) - (sp + temp_t2)->unk54, (temp_t0->unkA + temp_t0->unk6) - 3, (sp + temp_t2)->unk5C, 1);
    temp_v0_12 = (sp + temp_t2)->unk64;
    func_800307D8(2, temp_v0_12 + ((temp_t0->unk8 + temp_t0->unk4) - 0xC), ((temp_t0->unkA + temp_t0->unk6) - 0xF) - temp_v0_12, 0xC, 0xC);
}

s32 func_80030668(s32 arg0) {
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_v0;
    u8 temp_t1;
    void *temp_a0;
    void *temp_a3;
    void *phi_t0;
    s32 phi_t1;
    void *phi_a0;
    s32 phi_v0;
    s32 phi_a2;
    s32 phi_a1;
    s32 phi_v0_2;
    s32 phi_return;
    s32 phi_v0_3;
    s32 phi_a2_2;
    s32 phi_return_2;
    s32 phi_a2_3;

    temp_v1 = ((arg0 * 0x89C) + 0x80090000)->unk618;
    (void *)0x8005F9F8->unk6 = (s16) ((temp_v1 * 0xA) + 0xC);
    phi_v0_2 = 0;
    phi_return = 0;
    if ((s32) temp_v1 > 0) {
        temp_a3 = (arg0 * 0x89C) + 0x800905E0;
        phi_t0 = temp_a3;
        phi_v0 = 0;
        phi_a1 = 0;
        phi_return_2 = 0;
loop_2:
        phi_a2 = 0;
        if (0xFF != phi_t0->unk3C) {
            temp_a0 = temp_a3 + (((phi_a1 * 4) - phi_a1) * 8);
            phi_t1 = (s32) temp_a0->unk3C;
            phi_a0 = temp_a0;
            phi_a2_3 = 0;
loop_4:
            phi_a2_2 = phi_a2_3;
            if (phi_t1 < 0x80) {
                phi_a2_2 = phi_a2_3 + 1;
            }
            temp_t1 = phi_a0->unk3D;
            phi_t1 = (s32) temp_t1;
            phi_a0 = phi_a0 + 1;
            phi_a2 = phi_a2_2;
            phi_a2_3 = phi_a2_2;
            if (0xFF != temp_t1) {
                goto loop_4;
            }
        }
        temp_a1 = phi_a1 + 1;
        phi_v0_3 = phi_v0;
        if (phi_v0 < phi_a2) {
            temp_v0 = phi_a2;
            phi_v0_3 = temp_v0;
            phi_return_2 = temp_v0;
        }
        phi_t0 = phi_t0 + 0x18;
        phi_v0 = phi_v0_3;
        phi_a1 = temp_a1;
        phi_v0_2 = phi_v0_3;
        phi_return = phi_return_2;
        if (temp_a1 != temp_v1) {
            goto loop_2;
        }
    }
    (void *)0x8005F9F8->unk4 = (s16) ((phi_v0_2 * 8) + 0x1C);
    return phi_return;
}

s32 func_80030754(s32 arg0, s32 arg1) {
    s32 temp_v0;
    s32 temp_v0_2;
    void *phi_a1;
    s32 phi_v0;
    void *phi_a1_2;
    s32 phi_v0_2;
    s32 phi_v1;

    if (arg0 >= 0) {
        phi_a1 = (void *)0x800905E0;
        phi_v0 = 0;
loop_2:
        if (arg0 == phi_a1->unkE) {
            phi_v1 = phi_v0;
        } else {
            temp_v0 = phi_v0 + 1;
            phi_a1 = phi_a1 + 0x89C;
            phi_v0 = temp_v0;
            if (temp_v0 != 4) {
                goto loop_2;
            }
            phi_v1 = -1;
        }
    } else {
        phi_a1_2 = (void *)0x800905E0;
        phi_v0_2 = 0;
loop_7:
        if (arg1 == (*phi_a1_2 & 7)) {
            phi_v1 = phi_v0_2;
        } else {
            temp_v0_2 = phi_v0_2 + 1;
            phi_a1_2 = phi_a1_2 + 0x89C;
            phi_v0_2 = temp_v0_2;
            phi_v1 = -1;
            if (temp_v0_2 != 4) {
                goto loop_7;
            }
        }
    }
    return phi_v1;
}

void *func_800307D8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    ? spBC;
    ? sp5C;
    ? *temp_t8;
    void *temp_a0;
    void *temp_t6;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *phi_t6;
    ? *phi_t8;
    s32 phi_t2;

    spBC.unk0 = (s32) (void *)0x8005FA20->unk0;
    spBC.unk4 = (s32) (void *)0x8005FA20->unk4;
    spBC.unkC = (s32) (void *)0x8005FA20->unkC;
    spBC.unk8 = (s32) (void *)0x8005FA20->unk8;
    phi_t6 = (void *)0x8005FA30;
    phi_t8 = &sp5C;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (s32) *phi_t6;
    temp_t8->unk-8 = (s32) temp_t6->unk-8;
    temp_t8->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t8 = temp_t8;
    if (temp_t6 != 0x8005FA90) {
        goto loop_1;
    }
    if (arg0 >= 3) {
        phi_t2 = 3;
    } else {
        phi_t2 = arg0;
    }
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE7000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    temp_a0 = (((phi_t2 * 4) - phi_t2) * 8) + &sp5C;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk0 = (s32) (((temp_a0->unk0 - 1) & 0xFFF) | 0xFD480000);
    temp_v0_3->unk4 = (s32) (sp + (phi_t2 * 4))->unkBC;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk0 = (s32) (((((s32) (temp_a0->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
    temp_v0_4->unk4 = (s32) ((((((temp_a0->unk10 & 0xF) * 0x10) | 0x7000000) | ((temp_a0->unkC & 3) << 0x12)) | ((temp_a0->unk14 & 0xF) << 0xE)) | ((temp_a0->unk8 & 3) << 8));
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE6000000;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk0 = 0xF4000000;
    temp_v0_6->unk4 = (s32) (((((temp_a0->unk4 - 1) * 4) & 0xFFF) | 0x7000000) | ((((temp_a0->unk0 - 1) * 4) & 0xFFF) << 0xC));
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = (s32) (((((s32) (temp_a0->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
    temp_v0_8->unk4 = (s32) (((((temp_a0->unk10 & 0xF) * 0x10) | ((temp_a0->unkC & 3) << 0x12)) | ((temp_a0->unk14 & 0xF) << 0xE)) | ((temp_a0->unk8 & 3) << 8));
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk0 = 0xF2000000;
    temp_v0_9->unk4 = (s32) ((((temp_a0->unk4 - 1) * 4) & 0xFFF) | ((((temp_a0->unk0 - 1) * 4) & 0xFFF) << 0xC));
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0;
    temp_v0_10->unk0 = 0xE7000000;
    if (arg0 == 0) {
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk0 = (s32) ((((((arg1 + arg3) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((arg2 + arg4) * 4) & 0xFFF));
        temp_v0_11->unk4 = (s32) ((((arg1 * 4) & 0xFFF) << 0xC) | ((arg2 * 4) & 0xFFF));
        temp_v0_12 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
        temp_v0_12->unk0 = 0xB4000000;
        temp_v0_12->unk4 = (s32) (((arg1 & 0xF) << 0x15) | (((arg2 & 0xF) << 5) & 0xFFFF));
        temp_v0_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
        temp_v0_13->unk0 = 0xB3000000;
        temp_v0_13->unk4 = 0x4000400;
    } else {
        temp_v0_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
        temp_v0_14->unk0 = (s32) ((((((arg1 + arg3) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((arg2 + arg4) * 4) & 0xFFF));
        temp_v0_14->unk4 = (s32) ((((arg1 * 4) & 0xFFF) << 0xC) | ((arg2 * 4) & 0xFFF));
        temp_v0_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
        temp_v0_15->unk4 = 0;
        temp_v0_15->unk0 = 0xB4000000;
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk4 = 0x4000400;
        temp_v0_16->unk0 = 0xB3000000;
    }
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    return temp_v0;
}

void func_80030BF0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp34;
    s32 sp30;
    s32 sp10;
    s32 temp_a1;
    s32 temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -0x34;
    temp_v0_2->unk0 = 0xFB000000;
    sp10 = arg3;
    func_800307D8(0, arg0, arg1, arg2);
    temp_a1 = arg0 + arg2;
    sp34 = temp_a1;
    sp10 = arg3;
    func_800307D8(3, temp_a1, arg1 + 2, 2);
    temp_a2 = arg1 + arg3;
    sp10 = 2;
    sp30 = temp_a2;
    func_800307D8(3, arg0 + 2, temp_a2, arg2);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE7000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = -1;
    temp_v0_4->unk0 = 0xFB000000;
    sp10 = 1;
    func_800307D8(3, arg0, arg1, arg2);
    sp10 = 1;
    func_800307D8(3, arg0, temp_a2 - 1, arg2);
    sp10 = arg3;
    func_800307D8(3, arg0, arg1, 1);
    sp10 = arg3;
    func_800307D8(3, temp_a1 - 1, arg1, 1);
}

void func_80030D70(void) {
    *(void *)0x80092852 = (u16)0;
}

? func_80030D80(void) {
    s8 temp_a0;
    s8 temp_a1;
    u16 temp_t0;
    ? phi_v1;

    phi_v1 = 0;
    if (*(void *)0x80092850 != 0) {
        temp_a0 = *(void *)0x80092871;
        temp_a1 = *(void *)0x80092872;
        if ((u32) ((temp_a0 * temp_a0) + (temp_a1 * temp_a1)) >= 0xE11U) {
            temp_t0 = *(void *)0x80092852 + 1;
            *(void *)0x80092852 = temp_t0;
            phi_v1 = 0;
            if ((temp_t0 & 0xFFFF) >= 5) {
                phi_v1 = 1;
            }
        } else {
            *(void *)0x80092852 = (u16)0U;
            phi_v1 = 0;
        }
    }
    return phi_v1;
}
