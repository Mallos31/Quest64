f32 func_15320(void *arg0, f32 arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_v0;
    void *temp_s0;
    void *phi_s2;
    s32 phi_s1;
    f32 phi_f24;

    temp_v0 = *(void *)0x8007BCE8;
    phi_f24 = arg1;
    if (temp_v0 != 0) {
        phi_f24 = arg1;
        if (temp_v0 != 0) {
            phi_s2 = (void *)0x8007BCF0;
            phi_s1 = temp_v0;
loop_3:
            temp_s0 = *phi_s2;
            if (((f64) (temp_s0->unk4 - arg1) < 20.0) && (temp_f2 = temp_s0->unk0 - arg0->unkC, temp_f0 = temp_s0->unk8 - arg0->unk14, ((f64) func_00034F60((temp_f2 * temp_f2) + (temp_f0 * temp_f0)) < 30.0))) {
                phi_f24 = (f32) ((f64) temp_s0->unk4 + 30.0);
            } else {
                temp_s1 = phi_s1 - 1;
                phi_s2 = phi_s2 + 4;
                phi_s1 = temp_s1;
                phi_f24 = arg1;
                if (temp_s1 != 0) {
                    goto loop_3;
                }
            }
        }
    }
    return phi_f24;
}
