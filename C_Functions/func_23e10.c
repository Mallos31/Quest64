f32 func_23e10(f32 arg0, f32 arg1) {
    f32 phi_f2;
    f64 phi_f6;

    if (arg1 == 0.0f) {
        if (0.0f <= arg0) {
            phi_f2 = (f32) *(void *)0x800716E0;
        } else {
            phi_f6 = *(void *)0x800716E8;
block_10:
            phi_f2 = (f32) phi_f6;
        }
    } else {
        if (0.0f < arg1) {
            phi_f2 = func_00023028(arg0 / arg1);
        } else {
            if ((arg1 < 0.0f) && (arg0 <= 0.0f)) {
                phi_f2 = (f32) ((f64) func_00023028(arg0 / arg1) - *(void *)0x800716F0);
            } else {
                phi_f6 = (f64) func_00023028(arg0 / arg1) + *(void *)0x800716F8;
                goto block_10;
            }
        }
    }
    return phi_f2;
}
