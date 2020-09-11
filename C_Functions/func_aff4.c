f64 func_aff4(void *arg0, f32 arg1, f32 arg2) {
    f32 temp_f14;
    f64 temp_f0;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f2;
    f64 phi_f2;
    f32 phi_f12;

    temp_f16 = *(void *)0x80071160;
    temp_f14 = arg0->unk10;
    temp_f2 = (f64) (func_00023210(arg1 - arg0->unk0, arg2 - arg0->unk8) - temp_f14);
    if (temp_f16 < temp_f2) {
        phi_f12 = (f32) (temp_f2 - *(void *)0x80071168);
block_4:
        phi_f2 = (f64) phi_f12;
    } else {
        phi_f2 = temp_f2;
        if (temp_f2 < *(void *)0x80071170) {
            phi_f12 = (f32) (temp_f2 + *(void *)0x80071178);
            goto block_4;
        }
    }
    temp_f18 = *(void *)0x80071180;
    arg0->unk10 = (f32) ((f64) temp_f14 + (phi_f2 * *(void *)0x80071188));
    temp_f0 = (f64) arg0->unk10;
    if (temp_f16 < temp_f0) {
        arg0->unk10 = (f32) (temp_f0 - temp_f18);
        return temp_f0;
    }
    if (temp_f0 < *(void *)0x80071190) {
        arg0->unk10 = (f32) (temp_f0 + temp_f18);
    }
    return temp_f0;
}
