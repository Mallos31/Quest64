void func_23f60(void *arg0, ? arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f4;

    sp4C = func_00035680(arg1);
    temp_f20 = func_000361F0(arg1);
    sp48 = func_00035680(arg2);
    sp3C = func_000361F0(arg2);
    sp44 = func_00035680(arg3);
    temp_f0 = func_000361F0(arg3);
    temp_f12 = sp44 * sp4C;
    temp_f10 = -sp48;
    arg0->unk0 = (f32) (((temp_f0 * sp3C) + (temp_f12 * sp48)) * arg4);
    arg0->unk4 = (f32) ((sp44 * temp_f20) * arg4);
    sp34 = temp_f10;
    arg0->unkC = 0.0f;
    arg0->unk8 = (f32) (((sp34 * temp_f0) + (temp_f12 * sp3C)) * arg4);
    sp30 = -sp44;
    temp_f4 = temp_f0 * sp4C;
    sp2C = temp_f4;
    arg0->unk10 = (f32) (((sp30 * sp3C) + (sp2C * sp48)) * arg4);
    arg0->unk14 = (f32) ((temp_f0 * temp_f20) * arg4);
    arg0->unk1C = 0.0f;
    arg0->unk18 = (f32) (((sp30 * temp_f10) + (temp_f4 * sp3C)) * arg4);
    arg0->unk20 = (f32) ((temp_f20 * sp48) * arg4);
    arg0->unk2C = 0.0f;
    arg0->unk24 = (f32) (-sp4C * arg4);
    arg0->unk28 = (f32) ((temp_f20 * sp3C) * arg4);
    arg0->unk30 = arg5;
    arg0->unk34 = arg6;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg7;
}
