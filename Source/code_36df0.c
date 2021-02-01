f32 cosf(f32 arg0) {
    f64 temp_f0;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f14_2;
    f64 temp_f16;
    f64 temp_f2;
    f32 phi_f0;
    s32 phi_v0;

    if ((((bitwise s32) arg0 >> 0x16) & 0x1FF) < 0x136) {
        if (0.0f < arg0) {
            phi_f0 = arg0;
        } else {
            phi_f0 = -arg0;
        }
        temp_f12 = (f64) phi_f0;
        temp_f14_2 = (temp_f12 * *(void *)0x80071BD8) + 0.5;
        if (0.0 <= temp_f14_2) {
            phi_v0 = (s32) (temp_f14_2 + 0.5);
        } else {
            phi_v0 = (s32) (temp_f14_2 - 0.5);
        }
        temp_f0 = (f64) phi_v0 - 0.5;
        temp_f2 = (temp_f12 - (temp_f0 * *(void *)0x80071BE0)) - (temp_f0 * *(void *)0x80071BE8);
        temp_f14 = temp_f2 * temp_f2;
        temp_f16 = (void *)0x80071BB0->unk8 + ((((((void *)0x80071BB0->unk20 * temp_f14) + (void *)0x80071BB0->unk18) * temp_f14) + (void *)0x80071BB0->unk10) * temp_f14);
        if ((phi_v0 & 1) == 0) {
            return (f32) (((temp_f2 * temp_f14) * temp_f16) + temp_f2);
        }
        return -(f32) (((temp_f2 * temp_f14) * temp_f16) + temp_f2);
    }
    if (arg0 != arg0) {
        return *(void *)0x80071F10;
    }
    return *(void *)0x80071BF0;
}
