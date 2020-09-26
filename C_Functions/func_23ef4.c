void func_23ef4(f32 arg0, void *arg1) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;

    sp1C = func_00035680(arg0);
    temp_f0 = func_000361F0(arg0);
    temp_f12 = arg1->unk4;
    temp_f2 = arg1->unk0;
    temp_f10 = temp_f12 * temp_f0;
    temp_f16 = temp_f2 * sp1C;
    arg1->unk0 = (f32) ((temp_f12 * sp1C) - (temp_f2 * temp_f0));
    arg1->unk4 = (f32) (temp_f10 + temp_f16);
}
