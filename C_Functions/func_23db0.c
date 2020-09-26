void func_23db0(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f0 = *arg1;
    temp_f2 = *arg0;
    temp_f2_2 = 1.0f / func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    *arg0 = (f32) (*arg0 * temp_f2_2);
    *arg1 = (f32) (*arg1 * temp_f2_2);
}
