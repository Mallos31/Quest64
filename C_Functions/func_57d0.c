f32 func_57d0(void *arg0, void *arg1, ? arg2) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    u16 temp_t8;
    f64 phi_f0;
    f32 phi_f12;
    f64 phi_f14;
    f32 phi_return;
    f32 phi_f2;
    f32 phi_return_2;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    phi_f12 = (bitwise f32) arg0;
    phi_f14 = (bitwise f64) arg1;
    phi_return = 0.0f;
    if ((s32) arg1->unk4 < 0x26) {
        temp_f12 = arg0->unk10;
        temp_f14 = *(void *)0x80070F98;
        temp_f0 = (f64) (arg1->unk130 - temp_f12);
        if (temp_f0 < temp_f14) {
            phi_f2 = (f32) (temp_f0 + *(void *)0x80070FA0);
block_5:
            temp_f0_2 = (f64) phi_f2;
            phi_f0 = temp_f0_2;
            phi_return_2 = (f32) temp_f0_2;
        } else {
            phi_f0 = temp_f0;
            phi_return_2 = (f32) temp_f0;
            if (*(void *)0x80070FA8 < temp_f0) {
                phi_f2 = (f32) (temp_f0 - *(void *)0x80070FB0);
                goto block_5;
            }
        }
        temp_f16 = *(void *)0x80070FB8;
        arg0->unk10 = (f32) ((f64) temp_f12 + (phi_f0 * *(void *)0x80070FC0));
        temp_f2 = (f64) arg0->unk10;
        if (temp_f2 < temp_f14) {
            arg0->unk10 = (f32) (temp_f2 + temp_f16);
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            phi_return = phi_return_2;
        } else {
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            phi_return = phi_return_2;
            if (*(void *)0x80070FC8 < temp_f2) {
                arg0->unk10 = (f32) (temp_f2 - temp_f16);
                phi_f12 = temp_f12;
                phi_f14 = temp_f14;
                phi_return = phi_return_2;
            }
        }
    }
    temp_t8 = arg1->unk4 - 1;
    arg1->unk4 = temp_t8;
    if ((temp_t8 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
        phi_return = func_0002684C(phi_f12, phi_f14, *(void *)0x80084EE4, *(void *)0x80084EE8, 0x1E, arg0);
    }
    return phi_return;
}
