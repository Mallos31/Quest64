f32 func_5930(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    f32 temp_f12;
    f32 temp_ret;
    s32 temp_a1;
    void *phi_a1;
    f32 phi_f12;
    f32 phi_return;

    arg2->unk20 = 0.0f;
    arg2->unk18 = 0.0f;
    phi_a1 = (bitwise void *) arg1;
    if (arg0 != 0.0f) {
block_2:
        temp_ret = func_00034F60((arg0 * arg0) + (arg1 * arg1), arg2, phi_a1);
        temp_f12 = (f32) ((f64) temp_ret * *(void *)0x80070FD0);
        phi_f12 = temp_f12;
        if (2.0 < (f64) temp_f12) {
            phi_f12 = 2.0f;
        }
        if (!(1.5 < (f64) phi_f12)) {
            arg3->unk0 = (u16)1;
            return temp_ret;
        }
        arg3->unk0 = (u16)2;
        arg3->unk4 = (u16)0x1E;
        *(void *)0x8007BC28 = (u16)0;
        return temp_ret;
    }
    phi_a1 = (void *)0x80080000;
    if (arg1 != 0.0f) {
        goto block_2;
    }
    temp_a1 = *(void *)0x8007BC2C;
    phi_return = 0.0f;
    if (temp_a1 != arg2->unk52) {
        phi_return = 0.0f;
        if (temp_a1 != arg2->unk5A) {
            phi_return = func_0001D8B0(arg2, temp_a1, 1, temp_a1, 1, 1);
        }
    }
    return phi_return;
}
