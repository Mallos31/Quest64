void *func_19518(f32 arg0, f32 arg1, f32 arg2, void *arg3) {
    void *sp1C;
    void *sp18;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_ret;
    f64 temp_f14;
    f64 temp_f2;
    s32 temp_a0;
    s32 temp_ret_2;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_a1;
    void *temp_a3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a1;
    f64 phi_f2;
    void *phi_v0;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v1_3;
    f32 phi_f12;
    void *phi_a3;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2F4;
    if (temp_v0 != 0) {
        phi_a1 = (void *)0x80087250;
    } else {
        phi_a1 = (void *)0x80087310;
    }
    if (temp_v0 != 0) {
        phi_v1 = (void *)0x80087310;
    } else {
        phi_v1 = (void *)0x80087250;
    }
    sp18 = phi_v1;
    sp1C = phi_a1;
    temp_ret = func_00023210(arg0 - (void *)0x80086DC0->unkC, arg2 - (void *)0x80086DC0->unk14, phi_a1);
    temp_f14 = *(void *)0x80071548;
    temp_v1 = phi_v1;
    temp_a1 = phi_a1;
    temp_a3 = arg3;
    temp_f12 = (f32) ((f64) (temp_ret - *(void *)0x80086DEC) + temp_f14);
    temp_f2 = (f64) temp_f12;
    if (temp_f2 < *(void *)0x80071550) {
        temp_f12_2 = (f32) (temp_f2 + *(void *)0x80071558);
        phi_f2 = (f64) temp_f12_2;
        phi_f12 = temp_f12_2;
    } else {
        phi_f2 = temp_f2;
        phi_f12 = temp_f12;
        if (temp_f14 < temp_f2) {
            temp_f12_3 = (f32) (temp_f2 - *(void *)0x80071560);
            phi_f2 = (f64) temp_f12_3;
            phi_f12 = temp_f12_3;
        }
    }
    phi_return = (bitwise void *) temp_ret;
    if (*(void *)0x80071568 < phi_f2) {
        phi_return = (bitwise void *) temp_ret;
        if (phi_f2 < *(void *)0x80071570) {
            temp_a0 = *(void *)0x80087200;
            phi_return = (void *)0x80080000;
            if (temp_a0 < 8) {
                temp_v0_2 = *(void *)0x80087208;
                temp_t6 = temp_a0 * 0x18;
                temp_a1 = temp_a1 + temp_t6;
                phi_v0_2 = temp_v0_2;
                phi_v1_3 = temp_v1;
                phi_return = temp_v0_2;
                if (temp_v0_2 != 0) {
                    phi_v0 = temp_v0_2;
                    phi_v1_2 = temp_v1;
                    phi_v0_2 = temp_v0_2;
                    phi_v1_3 = temp_v1;
                    phi_return = temp_v0_2;
                    if (temp_a3 != temp_v1->unk14) {
loop_15:
                        temp_v0_3 = phi_v0 - 1;
                        temp_v1_2 = phi_v1_2 + 0x18;
                        phi_v0_2 = temp_v0_3;
                        phi_v1_3 = temp_v1_2;
                        phi_return = temp_v0_3;
                        if (temp_v0_3 != 0) {
                            phi_v0 = temp_v0_3;
                            phi_v1_2 = temp_v1_2;
                            phi_v0_2 = temp_v0_3;
                            phi_v1_3 = temp_v1_2;
                            phi_return = temp_v0_3;
                            if (temp_a3 != temp_v1_2->unk14) {
                                goto loop_15;
                            }
                        }
                    }
                }
                if (phi_v0_2 != 0) {
                    *temp_a1 = (s32) *phi_v1_3;
                    phi_a3 = temp_a3;
                } else {
                    sp1C = temp_a1;
                    arg3 = temp_a3;
                    temp_ret_2 = func_00022FD0(phi_f12, temp_f14, 4, temp_a1, (void *)0x80087200, temp_a3);
                    *temp_a1 = (s32) ((temp_ret_2 * 4) + 1);
                    phi_a3 = arg3;
                    phi_return = (void *) temp_ret_2;
                }
                (temp_a1 + temp_t6)->unk4 = arg0;
                (temp_a1 + temp_t6)->unk8 = arg1;
                (temp_a1 + temp_t6)->unkC = arg2;
                (temp_a1 + temp_t6)->unk14 = phi_a3;
                (temp_a1 + temp_t6)->unk10 = (f32) phi_a3->unk10;
                *(void *)0x80087200 = (s32) (*(void *)0x80087200 + 1);
            }
        }
    }
    return phi_return;
}
