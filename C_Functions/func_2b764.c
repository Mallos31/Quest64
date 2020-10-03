void *func_2b764(s32 arg0, s32 arg1, s32 arg2, u32 arg3, s32 arg4) {
    u32 spC4;
    void *spC0;
    u32 spBC;
    s32 spB8;
    s8 spAC;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_t5;
    s32 temp_t8;
    u32 temp_t9;
    u32 temp_v1;
    void *temp_ret;
    void *temp_t3;
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
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s8 phi_v0;
    void *phi_s1;
    s32 phi_s0;
    s32 phi_s2;
    s32 phi_s0_2;
    void *phi_t3;
    s32 phi_s3;
    void *phi_return;
    void *phi_return_2;
    void *phi_return_3;

    spC0 = NULL;
    spC4 = 0x3B9ACA00U;
    spB8 = 0;
    spBC = arg3;
    phi_s2 = arg0;
    if (arg0 >= 0xA) {
        phi_s2 = 9;
    }
    phi_s1 = &spAC + 9;
    phi_s0 = 0;
loop_3:
    phi_v0 = (u8)0;
loop_4:
    temp_t9 = spBC - spC4;
    temp_t8 = (spB8 - spC0) - (spBC < spC4);
    spB8 = temp_t8;
    spBC = temp_t9;
    if (temp_t8 > 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    if (temp_t8 >= 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    temp_t9 = temp_t9 + spC4;
    spB8 = (temp_t9 < spC4) + temp_t8 + spC0;
    spBC = temp_t9;
    *phi_s1 = phi_v0;
    temp_ret = func_00039B38(spC0, spC4, 0, 0xA);
    temp_v1 = (u32) (u64) temp_ret;
    temp_s0 = phi_s0 + 1;
    spC0 = temp_ret;
    spC4 = temp_v1;
    phi_s1 = phi_s1 - 1;
    phi_s0 = temp_s0;
    if (temp_s0 < 9) {
        goto loop_3;
    }
    spAC = (s8) spBC;
    phi_return_3 = temp_ret;
    if ((*(void *)0x8008FD0C & 0x10) == 0) {
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xE7000000;
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0x80060138;
        temp_v0_2->unk0 = 0xFD100000;
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xE8000000;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5000100;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0x73FC000;
        temp_v0_6->unk0 = 0xF0000000;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C | 0x10);
        phi_return_3 = temp_v0_7;
    }
    temp_a0 = phi_s2 - 1;
    phi_return = phi_return_3;
    if (temp_a0 >= 0) {
        phi_s0_2 = 0;
        phi_t3 = temp_a0 + &spAC;
        phi_s3 = 0;
        phi_return_2 = phi_return_3;
loop_14:
        temp_s0_2 = phi_s0_2 + *phi_t3;
        if ((temp_s0_2 != 0) || (phi_t3 == &spAC)) {
            temp_v0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
            temp_v0_8->unk0 = 0xFD480007;
            temp_v0_8->unk4 = (s32) *((*phi_t3 * 4) + 0x8005F0D0 + (arg4 * 4));
            temp_v0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
            temp_v0_9->unk4 = 0x7010030;
            temp_v0_9->unk0 = 0xF5480200;
            temp_v0_10 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
            temp_v0_10->unk4 = 0;
            temp_v0_10->unk0 = 0xE6000000;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk4 = 0x701C024;
            temp_v0_11->unk0 = 0xF4000000;
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk4 = 0x10030;
            temp_v0_13->unk0 = 0xF5480200;
            temp_v0_14 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk0 = 0xF2000000;
            temp_v0_14->unk4 = 0x1C024;
            temp_v0_15 = *(void *)0x8007B2FC;
            temp_t5 = arg1 + phi_s3;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk0 = (s32) (((((temp_t5 + 8) * 4) & 0xFFF) << 0xC) | 0xE4000000 | (((arg2 + 0xA) * 4) & 0xFFF));
            temp_v0_15->unk4 = (s32) ((((temp_t5 * 4) & 0xFFF) << 0xC) | ((arg2 * 4) & 0xFFF));
            temp_v0_16 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xB4000000;
            temp_v0_17 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
            temp_v0_17->unk4 = 0x4000400;
            temp_v0_17->unk0 = 0xB3000000;
            temp_v0_18 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
            temp_v0_18->unk4 = 0;
            temp_v0_18->unk0 = 0xE7000000;
            phi_return_2 = temp_v0_18;
        }
        temp_t3 = phi_t3 - 1;
        phi_s0_2 = temp_s0_2;
        phi_t3 = temp_t3;
        phi_s3 = phi_s3 + 7;
        phi_return = phi_return_2;
        if ((u32) temp_t3 >= (u32) &spAC) {
            goto loop_14;
        }
    }
    return phi_return;
}

