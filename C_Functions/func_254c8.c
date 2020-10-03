s32 func_254c8(s32 arg0, s32 arg1, ? arg2) {
    s32 sp38;
    void *sp30;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_s1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    void *temp_a0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_v0_2;
    void *phi_s0;
    void *phi_a2;
    s32 phi_a3;

    temp_a3 = arg0;
    temp_s0 = (void *)0x8008F698->unk4;
    phi_s0 = temp_s0;
    phi_a2 = NULL;
    phi_a2 = NULL;
    if (temp_s0 != 0) {
loop_1:
        temp_v0 = phi_s0->unk8;
        if (temp_a3 >= temp_v0) {
            temp_a2 = phi_s0;
            if ((temp_v0 + 0x500) >= (temp_a3 + arg1)) {
                phi_s0->unkC = (s32) *(void *)0x800538F8;
                return func_00034DD0((phi_s0->unk10 + temp_a3) - temp_v0, temp_a2, temp_a3);
            }
            temp_s0_2 = phi_s0->unk0;
            phi_s0 = temp_s0_2;
            phi_a2 = temp_a2;
            phi_a2 = temp_a2;
            if (temp_s0_2 != 0) {
                goto loop_1;
            }
        }
    }
    temp_s0_3 = (void *)0x8008F698->unk8;
    arg0 = temp_a3;
    sp30 = phi_a2;
    temp_a0 = temp_s0_3;
    (void *)0x8008F698->unk8 = (void *) temp_s0_3->unk0;
    func_00036820(temp_a0, phi_a2, temp_a3);
    temp_a2_2 = phi_a2;
    temp_a3_2 = arg0;
    if (temp_a2_2 != 0) {
        arg0 = temp_a3_2;
        func_00036850(temp_s0_3, temp_a2_2, temp_a2_2, temp_a3_2);
        phi_a3 = arg0;
    } else {
        temp_v0_2 = (void *)0x8008F698->unk4;
        if (temp_v0_2 != 0) {
            (void *)0x8008F698->unk4 = temp_s0_3;
            temp_s0_3->unk0 = temp_v0_2;
            temp_s0_3->unk4 = 0;
            temp_v0_2->unk4 = temp_s0_3;
            phi_a3 = temp_a3_2;
        } else {
            (void *)0x8008F698->unk4 = temp_s0_3;
            temp_s0_3->unk0 = NULL;
            temp_s0_3->unk4 = 0;
            phi_a3 = temp_a3_2;
        }
    }
    temp_v0_3 = phi_a3 & 1;
    temp_s1 = temp_s0_3->unk10;
    sp38 = temp_v0_3;
    temp_a3_3 = phi_a3 - temp_v0_3;
    temp_s0_3->unk8 = temp_a3_3;
    temp_s0_3->unkC = (s32) *(void *)0x800538F8;
    temp_v1 = *(void *)0x800538F4;
    temp_t3 = temp_v1 * 0x18;
    *(void *)0x800538F4 = (s32) (temp_v1 + 1);
    func_00036510(temp_t3 + 0x8008F2A8, 0, 0, temp_a3_3, temp_s1, 0x500, 0x8008F270);
    return func_00034DD0(temp_s1) + sp38;
}

