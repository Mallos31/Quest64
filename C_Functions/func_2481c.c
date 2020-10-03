void func_2481c(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f20_2;

    temp_f0 = *(void *)0x8004D74C;
    temp_f20 = arg4 * temp_f0;
    arg5 = arg5 * temp_f0;
    arg6 = arg6 * temp_f0;
    sp4C = func_00035680(temp_f20);
    temp_f20_2 = func_000361F0(temp_f20);
    sp48 = func_00035680(arg5);
    sp3C = func_000361F0(arg5);
    sp44 = func_00035680(arg6);
    temp_f0_2 = func_000361F0(arg6);
    temp_f12 = sp44 * sp4C;
    arg0->unk0 = (f32) (((temp_f0_2 * sp3C) + (temp_f12 * sp48)) * arg7);
    arg0->unk4 = (f32) (sp44 * temp_f20_2 * arg7);
    sp34 = -sp48;
    arg0->unkC = 0.0f;
    arg0->unk8 = (f32) (((sp34 * temp_f0_2) + (temp_f12 * sp3C)) * arg7);
    sp30 = -sp44;
    sp2C = temp_f0_2 * sp4C;
    arg0->unk10 = (f32) (((sp30 * sp3C) + (sp2C * sp48)) * arg8);
    arg0->unk14 = (f32) (temp_f0_2 * temp_f20_2 * arg8);
    arg0->unk1C = 0.0f;
    arg0->unk18 = (f32) (((sp30 * sp34) + (sp2C * sp3C)) * arg8);
    arg0->unk20 = (f32) (temp_f20_2 * sp48 * arg9);
    arg0->unk2C = 0.0f;
    arg0->unk24 = (f32) (-sp4C * arg9);
    arg0->unk28 = (f32) (temp_f20_2 * sp3C * arg9);
    arg0->unk30 = arg1;
    arg0->unk34 = arg2;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg3;
}

