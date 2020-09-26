f32 func_23b60(f32 arg0, void *arg1, void *arg2, void *arg3, void *arg4) {
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f64 temp_f14;

    temp_f0 = arg0 * arg0;
    temp_f2 = arg0 * temp_f0;
    temp_f14 = (f64) temp_f2;
    temp_f18 = temp_f2 - temp_f0;
    temp_f16 = (f32) ((((f64) temp_f0 * 3.0) - temp_f14) - temp_f14);
    *arg1 = (f32) (1.0 - (f64) temp_f16);
    *arg2 = temp_f16;
    *arg3 = (f32) ((temp_f18 - temp_f0) + arg0);
    *arg4 = temp_f18;
    return temp_f0;
}
