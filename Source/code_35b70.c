void func_80034F70(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 sp40;
    f32 sp3C;
    f32 sp34;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f22;

    temp_f0 = *(void *)0x80071B30;
    temp_f12 = arg1 * temp_f0;
    temp_f14 = arg2 * temp_f0;
    arg2 = temp_f14;
    arg1 = temp_f12;
    *(void *)0x80095200 = temp_f0;
    arg3 = arg3 * temp_f0;
    temp_f20 = func_80035680(temp_f12, temp_f14);
    temp_f22 = cosf(arg1);
    sp40 = func_80035680(arg2);
    sp34 = cosf(arg2);
    sp3C = func_80035680(arg3);
    temp_f0_2 = cosf(arg3);
    arg0->unk0 = (f32) ((sp34 * temp_f0_2) * arg4);
    arg0->unk4 = (f32) ((sp34 * sp3C) * arg4);
    arg0->unkC = 0.0f;
    arg0->unk8 = (f32) (-sp40 * arg4);
    arg0->unk1C = 0.0f;
    temp_f12_2 = temp_f20 * sp40;
    arg0->unk10 = (f32) (((temp_f12_2 * temp_f0_2) - (temp_f22 * sp3C)) * arg4);
    arg0->unk14 = (f32) (((temp_f12_2 * sp3C) + (temp_f22 * temp_f0_2)) * arg4);
    arg0->unk18 = (f32) ((temp_f20 * sp34) * arg4);
    arg0->unk2C = 0.0f;
    temp_f12_3 = temp_f22 * sp40;
    arg0->unk20 = (f32) (((temp_f12_3 * temp_f0_2) + (temp_f20 * sp3C)) * arg4);
    arg0->unk24 = (f32) (((temp_f12_3 * sp3C) - (temp_f20 * temp_f0_2)) * arg4);
    arg0->unk28 = (f32) ((temp_f22 * sp34) * arg4);
    arg0->unk30 = arg5;
    arg0->unk34 = arg6;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg7;
}

void func_80035120(s32 arg0, ? arg1, ? arg2, ? arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    ? sp28;

    func_80034F70(arg1, arg2, &sp28, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    func_80035200(&sp28, arg0);
}
