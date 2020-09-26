void func_2431c(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 sp40;
    f32 sp34;
    f32 sp28;
    f32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    s32 temp_cond;
    void *temp_a0;
    f32 phi_f18;
    f32 phi_f20;
    f32 phi_f2;
    f32 phi_f12;

    temp_f2 = arg4 - arg1;
    temp_f16 = arg6 - arg3;
    sp28 = temp_f2;
    sp24 = temp_f16;
    temp_f0 = func_00034F60((temp_f2 * temp_f2) + (temp_f16 * temp_f16));
    temp_a0 = arg0;
    temp_cond = temp_f0 == 0.0f;
    sp40 = temp_f0;
    if (temp_cond) {
        phi_f18 = 0.0f;
        phi_f20 = 1.0f;
    } else {
        phi_f18 = temp_f2 / temp_f0;
        phi_f20 = temp_f16 / temp_f0;
    }
    temp_f16_2 = arg5 - arg2;
    arg0 = temp_a0;
    sp34 = phi_f18;
    sp28 = temp_f16_2;
    temp_f0_2 = func_00034F60((sp40 * sp40) + (temp_f16_2 * temp_f16_2), 0.0f, temp_a0);
    temp_f18 = phi_f18;
    if (temp_f0_2 == 0.0f) {
        phi_f2 = 0.0f;
        phi_f12 = 1.0f;
    } else {
        phi_f2 = -temp_f16_2 / temp_f0_2;
        phi_f12 = sp40 / temp_f0_2;
    }
    arg0->unk8 = (f32) -temp_f18;
    arg0->unk0 = phi_f20;
    arg0->unk4 = 0.0f;
    arg0->unk10 = (f32) (phi_f2 * temp_f18);
    arg0->unkC = 0.0f;
    arg0->unk14 = phi_f12;
    arg0->unk18 = (f32) (phi_f2 * phi_f20);
    arg0->unk1C = 0.0f;
    arg0->unk20 = (f32) (phi_f12 * temp_f18);
    arg0->unk24 = (f32) -phi_f2;
    arg0->unk2C = 0.0f;
    arg0->unk28 = (f32) (phi_f12 * phi_f20);
    arg0->unk30 = arg1;
    arg0->unk34 = arg2;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg3;
}
