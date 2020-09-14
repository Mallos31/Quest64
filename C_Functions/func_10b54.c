? func_10b54(f32 arg0) {
    f64 temp_f0;
    f32 phi_f12;
    f32 phi_f12_2;
    ? phi_return;

    temp_f0 = (f64) arg0;
    if (*(void *)0x80071280 < temp_f0) {
        phi_f12 = (f32) (temp_f0 - *(void *)0x80071288);
    } else {
        phi_f12 = arg0;
        if (temp_f0 < *(void *)0x80071290) {
            phi_f12 = (f32) (temp_f0 + *(void *)0x80071298);
        }
    }
    phi_f12_2 = phi_f12;
    if (phi_f12 < 0.0f) {
        phi_f12_2 = -phi_f12;
    }
    phi_return = 0;
    if ((f64) phi_f12_2 < *(void *)0x800712A0) {
        phi_return = 1;
    }
    return phi_return;
}
