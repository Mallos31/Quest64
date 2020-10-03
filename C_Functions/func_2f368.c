s32 func_2f368(s32 arg0) {
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

