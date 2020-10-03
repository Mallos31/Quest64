s32 func_24d3c(f32 arg0, f32 arg1, s32 arg2, void *arg3, void *arg4) {
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 temp_f0;
    f32 temp_f6;
    s32 phi_v1;
    s32 phi_v1_2;

    func_00035470(0x80086E88, arg0, arg1, arg2, &sp38, &sp34, &sp30);
    temp_f6 = *(void *)0x80086ECC;
    phi_v1 = 0;
    if (sp30 < -temp_f6) {
        phi_v1 = 1;
    }
    phi_v1_2 = phi_v1;
    if (phi_v1 != 0) {
        temp_f0 = sp30 * *(void *)0x80086ED4;
        *arg3 = (s32) (0xA0 - (s32) ((((f64) sp38 * 160.0) / (f64) temp_f0) * 0.75));
        *arg4 = (s32) ((s32) ((120.0f * sp34) / temp_f0) + 0x78);
        phi_v1_2 = 0;
        if (sp30 < -temp_f6) {
            phi_v1_2 = 1;
        }
    }
    return phi_v1_2;
}

