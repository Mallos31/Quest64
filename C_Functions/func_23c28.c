f32 func_23c28(f32 arg0) {
    f32 temp_f2;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_t1;
    s32 temp_v1;
    s32 phi_v1;
    s32 phi_v0;
    f32 phi_f12;
    s32 phi_t2;
    s32 phi_t0;
    s32 phi_a2;
    s32 phi_a0;
    f32 phi_f2;

    if (1.0f < arg0) {
        phi_v0 = 1;
        phi_f12 = 1.0f / arg0;
    } else {
        phi_v0 = 0;
        phi_f12 = arg0;
        if (arg0 < -1.0f) {
            phi_v0 = -1;
            phi_f12 = 1.0f / arg0;
        }
    }
    phi_v1 = 0xC;
    phi_t2 = 0x13;
    phi_t0 = 0x15;
    phi_a2 = 0x17;
    phi_a0 = 0x19;
    phi_f2 = 0.0f;
loop_5:
    temp_a1 = phi_v1 - 1;
    temp_a3 = phi_v1 - 2;
    temp_t1 = phi_v1 - 3;
    temp_v1 = phi_v1 - 4;
    temp_f2 = ((f32) (temp_t1 * temp_t1) * phi_f12 * phi_f12) / ((f32) phi_t2 + (((f32) (temp_a3 * temp_a3) * phi_f12 * phi_f12) / ((f32) phi_t0 + (((f32) (temp_a1 * temp_a1) * phi_f12 * phi_f12) / ((f32) phi_a2 + (((f32) (phi_v1 * phi_v1) * phi_f12 * phi_f12) / ((f32) phi_a0 + phi_f2)))))));
    phi_v1 = temp_v1;
    phi_t2 = phi_t2 - 8;
    phi_t0 = phi_t0 - 8;
    phi_a2 = phi_a2 - 8;
    phi_a0 = phi_a0 - 8;
    phi_f2 = temp_f2;
    if (temp_v1 != 0) {
        goto loop_5;
    }
    if (phi_v0 > 0) {
        return (f32) (*(void *)0x800716D0 - (f64) (phi_f12 / (1.0f + temp_f2)));
    }
    if (phi_v0 < 0) {
        return (f32) (*(void *)0x800716D8 - (f64) (phi_f12 / (1.0f + temp_f2)));
    }
    return phi_f12 / (1.0f + temp_f2);
}

