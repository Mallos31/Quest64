void *func_199f4(s32 arg0, ?32 arg1, s32 arg2) {
    void *sp24;
    s32 temp_a3;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_v0;
    s32 phi_a3;
    void *phi_t0;
    void *phi_t0_2;
    s32 phi_a3_2;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v1_6;

    phi_a3 = 9;
    phi_t0 = (void *)0x800873D0;
    phi_t0_2 = (void *)0x800873D0;
    phi_a3_2 = 9;
    if (*(void *)0x800873DC != 0) {
loop_1:
        temp_a3 = phi_a3 - 1;
        temp_t0 = phi_t0 + 0x1C;
        phi_t0_2 = temp_t0;
        phi_a3_2 = temp_a3;
        if (temp_a3 != 0) {
            phi_a3 = temp_a3;
            phi_t0 = temp_t0;
            phi_t0_2 = temp_t0;
            phi_a3_2 = temp_a3;
            if (temp_t0->unkC != 0) {
                goto loop_1;
            }
        }
    }
    phi_t0_2->unkC = (u16)0x2D;
    phi_t0_2->unk0 = arg0;
    phi_t0_2->unk10 = arg1;
    if (arg2 < 0) {
        arg2 = -arg2;
    }
    sp24 = phi_t0_2;
    temp_t0_2 = phi_t0_2;
    temp_t0_2->unk14 = func_00024330(arg2, phi_t0_2 + 4, 1, phi_a3_2);
    phi_v1_6 = 0;
    if (*(void *)0x800873DC != 0) {
        phi_v1_6 = 0;
        if (arg0 == *(void *)0x800873D0) {
            phi_v1_6 = 1;
        }
    }
    phi_v0 = (void *)0x80087408;
    phi_v1_5 = phi_v1_6;
    if (*(void *)0x800873F8 != 0) {
        phi_v0 = (void *)0x80087408;
        phi_v1_5 = phi_v1_6;
        if (arg0 == *(void *)0x800873EC) {
            phi_v0 = (void *)0x80087408;
            phi_v1_5 = phi_v1_6 + 1;
        }
    }
loop_11:
    phi_v1_4 = phi_v1_5;
    if (phi_v0->unkC != 0) {
        phi_v1_4 = phi_v1_5;
        if (arg0 == phi_v0->unk0) {
            phi_v1_4 = phi_v1_5 + 1;
        }
    }
    phi_v1_3 = phi_v1_4;
    if (phi_v0->unk28 != 0) {
        phi_v1_3 = phi_v1_4;
        if (arg0 == phi_v0->unk1C) {
            phi_v1_3 = phi_v1_4 + 1;
        }
    }
    phi_v1_2 = phi_v1_3;
    if (phi_v0->unk44 != 0) {
        phi_v1_2 = phi_v1_3;
        if (arg0 == phi_v0->unk38) {
            phi_v1_2 = phi_v1_3 + 1;
        }
    }
    phi_v1 = phi_v1_2;
    if (phi_v0->unk60 != 0) {
        phi_v1 = phi_v1_2;
        if (arg0 == phi_v0->unk54) {
            phi_v1 = phi_v1_2 + 1;
        }
    }
    temp_v0 = phi_v0 + 0x70;
    phi_v0 = temp_v0;
    phi_v1_5 = phi_v1;
    if (temp_v0 != 0x800874E8) {
        goto loop_11;
    }
    temp_t0_2->unk18 = (s32) (phi_v1 - 1);
    return temp_v0;
}
