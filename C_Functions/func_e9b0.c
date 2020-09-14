void *func_e9b0(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    ? spB0;
    s32 spA4;
    s32 spA0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_ret;
    f32 temp_ret_2;
    f64 temp_f24;
    f64 temp_f26;
    f64 temp_f2;
    f64 temp_f30;
    s32 temp_s4;
    void *temp_ret_3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1;
    void *phi_s5;
    f32 phi_f12;
    f32 phi_f12_2;
    s32 phi_s3;
    s32 phi_s4;
    void *phi_return;
    void *phi_return_2;

    temp_v0 = (*(void *)0x80084F18)->unk20 + (arg2 * 8);
    spA4 = temp_v0->unk0;
    spA0 = temp_v0->unk4;
    phi_return = temp_v0;
    if (arg1 != 0) {
        temp_f30 = *(void *)0x80071208;
        temp_f26 = *(void *)0x80071210;
        temp_f24 = *(void *)0x80071218;
        phi_s5 = arg3;
        phi_s3 = 0;
        phi_s4 = arg1;
        phi_return_2 = temp_v0;
loop_2:
        temp_s0 = *phi_s5;
        if (arg2 == temp_s0->unk14) {
            temp_f20 = temp_s0->unk0 - (void *)0x80086DC0->unkC;
            temp_f22 = temp_s0->unk8 - (void *)0x80086DC0->unk14;
            temp_ret = func_00034F60((temp_f20 * temp_f20) + (temp_f22 * temp_f22));
            phi_return_2 = (bitwise void *) temp_ret;
            if (temp_ret < *(void *)0x80071220) {
                temp_ret_2 = func_00023210(temp_f20, temp_f22);
                temp_f12 = (f32) ((f64) (temp_ret_2 - (void *)0x80086DC0->unk2C) + temp_f24);
                temp_f2 = (f64) temp_f12;
                if (temp_f2 < temp_f30) {
                    phi_f12 = (f32) (temp_f2 + temp_f26);
                } else {
                    phi_f12 = temp_f12;
                    if (temp_f24 < temp_f2) {
                        phi_f12 = (f32) (temp_f2 - temp_f26);
                    }
                }
                phi_f12_2 = phi_f12;
                if (phi_f12 < 0.0f) {
                    phi_f12_2 = -phi_f12;
                }
                temp_f12_2 = (f32) ((f64) phi_f12_2 * *(void *)0x80071228);
                phi_return_2 = (bitwise void *) temp_ret_2;
                if (temp_f12_2 < *(void *)0x80086EC8) {
                    if (phi_s3 == 0) {
                        temp_v0_2 = *(void *)0x8007B2FC;
                        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
                        temp_v0_2->unk0 = 0x6000000;
                        temp_v0_2->unk4 = spA4;
                        temp_v0_3 = *(void *)0x8007B2FC;
                        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                        temp_v0_3->unk4 = 0x2000;
                        temp_v0_3->unk0 = 0xBA000C02;
                        phi_s3 = phi_s3 + 1;
                    }
                    func_00023360(temp_f12_2, (void *)0x80086DC0->unk2C, &spB0, 0.0f, (void *)0x80086DC0->unk2C, 0.0f, temp_s0->unk10, temp_s0->unk0, temp_s0->unk4, temp_s0->unk8);
                    func_00035200(&spB0, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
                    temp_v0_4 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
                    temp_v0_4->unk0 = 0x1020040;
                    temp_v0_4->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
                    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
                    temp_v0_5 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
                    temp_v0_5->unk0 = 0x6000000;
                    temp_v0_5->unk4 = spA0;
                    temp_v1 = ((s32) temp_s0->unkC * 0xC) + 0x80084260;
                    temp_ret_3 = func_00011860(temp_s0->unk0, temp_s0->unk4, (bitwise s32) temp_s0->unk8, temp_v1->unk0, temp_v1->unk4, temp_v1->unk8, 8.0f);
                    *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
                    phi_return_2 = temp_ret_3;
                }
            }
        }
        temp_s4 = phi_s4 - 1;
        phi_s5 = phi_s5 + 4;
        phi_s4 = temp_s4;
        phi_return = phi_return_2;
        if (temp_s4 != 0) {
            goto loop_2;
        }
    }
    return phi_return;
}
