void bzero(s32 arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *phi_a0;
    void *phi_a0_2;
    void *phi_a0_3;
    void *phi_a0_4;
    s32 phi_a1;
    void *phi_a0_5;
    void *phi_a0_6;

    phi_a1 = arg1;
    phi_a0_6 = (void *) arg0;
    if (arg1 >= 0xC) {
        temp_v1 = -arg0 & 3;
        temp_a1 = arg1 - temp_v1;
        phi_a0_2 = (void *) arg0;
        if (temp_v1 != 0) {
            *arg0 = (unaligned s32) 0;
            phi_a0_2 = arg0 + temp_v1;
        }
        temp_a3 = temp_a1 & -0x20;
        temp_a1 = temp_a1 - temp_a3;
        phi_a0_4 = phi_a0_2;
        if (temp_a3 != 0) {
            phi_a0 = phi_a0_2;
loop_5:
            temp_a0 = phi_a0 + 0x20;
            temp_a0->unk-20 = 0;
            temp_a0->unk-1C = 0;
            temp_a0->unk-18 = 0;
            temp_a0->unk-14 = 0;
            temp_a0->unk-10 = 0;
            temp_a0->unk-C = 0;
            temp_a0->unk-8 = 0;
            temp_a0->unk-4 = 0;
            phi_a0 = temp_a0;
            phi_a0_4 = temp_a0;
            if (temp_a0 != (temp_a3 + phi_a0_2)) {
                goto loop_5;
            }
        }
        temp_a3_2 = temp_a1 & -4;
        temp_a1 = temp_a1 - temp_a3_2;
        phi_a1 = temp_a1;
        phi_a0_6 = phi_a0_4;
        if (temp_a3_2 != 0) {
            phi_a0_3 = phi_a0_4;
loop_8:
            temp_a0_2 = phi_a0_3 + 4;
            temp_a0_2->unk-4 = 0;
            phi_a0_3 = temp_a0_2;
            phi_a1 = temp_a1;
            phi_a0_6 = temp_a0_2;
            if (temp_a0_2 != (temp_a3_2 + phi_a0_4)) {
                goto loop_8;
            }
        }
    }
    if (phi_a1 > 0) {
        phi_a0_5 = phi_a0_6;
loop_11:
        temp_a0_3 = phi_a0_5 + 1;
        temp_a0_3->unk-1 = (u8)0;
        phi_a0_5 = temp_a0_3;
        if (temp_a0_3 != (phi_a1 + phi_a0_6)) {
            goto loop_11;
        }
    }
}
