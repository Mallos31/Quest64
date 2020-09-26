void func_24608(void *arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 sp3C;
    f32 sp34;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f4;
    f32 temp_f6;
    void *temp_a0;
    f32 phi_f18;
    f32 phi_f22;

    temp_f14 = arg3;
    arg3 = temp_f14;
    temp_f0 = func_00034F60((arg1 * arg1) + (temp_f14 * temp_f14), temp_f14);
    temp_f16 = temp_f0;
    temp_f6 = temp_f16 * temp_f16;
    temp_a0 = arg0;
    if (temp_f0 != 0.0f) {
        phi_f18 = arg3 / temp_f0;
        phi_f22 = arg1 / temp_f0;
    } else {
        if (0.0f <= arg2) {
            phi_f18 = (f32) 1.0;
            phi_f22 = 0.0f;
        } else {
            phi_f18 = (f32) -1.0;
            phi_f22 = 0.0f;
        }
    }
    arg0 = temp_a0;
    sp34 = temp_f16;
    sp3C = phi_f18;
    temp_f0_2 = func_00034F60(temp_f6 + (arg2 * arg2), arg3, temp_a0);
    temp_f4 = sp34 / temp_f0_2;
    temp_f18 = phi_f18;
    temp_f14_2 = -phi_f22;
    temp_f12 = 0.0f * temp_f4;
    sp2C = temp_f4;
    arg0->unk0 = (f32) ((1.0f * temp_f18) + (temp_f12 * phi_f22));
    arg0->unkC = 0.0f;
    temp_f20 = arg2 / temp_f0_2;
    arg0->unk4 = (f32) (0.0f * temp_f20);
    arg0->unk8 = (f32) ((temp_f14_2 * 1.0f) + (temp_f12 * temp_f18));
    arg0->unk1C = 0.0f;
    temp_f16_2 = 1.0f * temp_f4;
    arg0->unk10 = (f32) ((-0.0f * temp_f18) + (temp_f16_2 * phi_f22));
    arg0->unk14 = (f32) (1.0f * temp_f20);
    arg0->unk20 = (f32) (temp_f20 * phi_f22);
    arg0->unk18 = (f32) ((-0.0f * temp_f14_2) + (temp_f16_2 * temp_f18));
    arg0->unk2C = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk24 = (f32) -temp_f4;
    arg0->unk34 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unk28 = (f32) (temp_f20 * temp_f18);
    arg0->unk3C = 1.0f;
}
