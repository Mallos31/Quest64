f32 func_80035C90(void *arg0, void *arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA) {
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f30;
    f64 temp_f12;
    f64 temp_f12_2;
    f64 temp_f12_3;
    f64 temp_f12_4;
    f64 temp_f12_5;
    f64 temp_f12_6;
    f64 temp_f2_3;
    f64 phi_f0;
    f64 phi_f0_2;
    f64 phi_f0_3;
    f64 phi_f0_4;
    f64 phi_f0_5;
    f64 phi_f0_6;

    func_80035300();
    temp_f0 = arg5 - arg2;
    temp_f22 = arg6 - arg3;
    temp_f24 = arg7 - arg4;
    temp_f2 = (f32) (-1.0 / (f64) func_80034F60(((temp_f0 * temp_f0) + (temp_f22 * temp_f22)) + (temp_f24 * temp_f24)));
    temp_f20 = temp_f0 * temp_f2;
    temp_f22 = temp_f22 * temp_f2;
    temp_f24 = temp_f24 * temp_f2;
    temp_f26 = (arg9 * temp_f24) - (argA * temp_f22);
    temp_f28 = (argA * temp_f20) - (arg8 * temp_f24);
    temp_f30 = (arg8 * temp_f22) - (arg9 * temp_f20);
    temp_f14 = (f32) (1.0 / (f64) func_80034F60(((temp_f26 * temp_f26) + (temp_f28 * temp_f28)) + (temp_f30 * temp_f30)));
    temp_f26 = temp_f26 * temp_f14;
    temp_f28 = temp_f28 * temp_f14;
    temp_f30 = temp_f30 * temp_f14;
    temp_f2_2 = (temp_f22 * temp_f30) - (temp_f24 * temp_f28);
    arg8 = temp_f2_2;
    temp_f16 = (temp_f24 * temp_f26) - (temp_f20 * temp_f30);
    arg9 = temp_f16;
    temp_f18 = (temp_f20 * temp_f28) - (temp_f22 * temp_f26);
    argA = temp_f18;
    temp_f2_3 = *(void *)0x80071BA0;
    temp_f14_2 = (f32) (1.0 / (f64) func_80034F60(((temp_f2_2 * temp_f2_2) + (temp_f16 * temp_f16)) + (temp_f18 * temp_f18), temp_f14));
    temp_f10 = arg9 * temp_f14_2;
    arg8 = arg8 * temp_f14_2;
    arg9 = temp_f10;
    temp_f12 = (f64) temp_f26 * 128.0;
    argA = argA * temp_f14_2;
    if (temp_f12 < temp_f2_3) {
        phi_f0 = temp_f12;
    } else {
        phi_f0 = temp_f2_3;
    }
    temp_f12_2 = (f64) temp_f28 * 128.0;
    arg1->unk8 = (s8) (s32) phi_f0;
    if (temp_f12_2 < temp_f2_3) {
        phi_f0_2 = temp_f12_2;
    } else {
        phi_f0_2 = temp_f2_3;
    }
    temp_f12_3 = (f64) temp_f30 * 128.0;
    arg1->unk9 = (s8) (s32) phi_f0_2;
    if (temp_f12_3 < temp_f2_3) {
        phi_f0_3 = temp_f12_3;
    } else {
        phi_f0_3 = temp_f2_3;
    }
    arg1->unkA = (s8) (s32) phi_f0_3;
    temp_f12_4 = (f64) arg8 * 128.0;
    if (temp_f12_4 < temp_f2_3) {
        phi_f0_4 = temp_f12_4;
    } else {
        phi_f0_4 = temp_f2_3;
    }
    arg1->unk18 = (s8) (s32) phi_f0_4;
    temp_f12_5 = (f64) arg9 * 128.0;
    if (temp_f12_5 < temp_f2_3) {
        phi_f0_5 = temp_f12_5;
    } else {
        phi_f0_5 = temp_f2_3;
    }
    arg1->unk19 = (s8) (s32) phi_f0_5;
    temp_f12_6 = (f64) argA * 128.0;
    if (temp_f12_6 < temp_f2_3) {
        phi_f0_6 = temp_f12_6;
    } else {
        phi_f0_6 = temp_f2_3;
    }
    arg1->unk0 = (u8)0;
    arg1->unk1 = (u8)0;
    arg1->unk2 = (u8)0;
    arg1->unk3 = (u8)0;
    arg1->unk4 = (u8)0;
    arg1->unk5 = (u8)0;
    arg1->unk6 = (u8)0;
    arg1->unk7 = (u8)0;
    arg1->unk10 = (u8)0;
    arg1->unk11 = (u8)0x80;
    arg1->unk12 = (u8)0;
    arg1->unk13 = (u8)0;
    arg1->unk14 = (u8)0;
    arg1->unk15 = (u8)0x80;
    arg1->unk16 = (u8)0;
    arg1->unk17 = (u8)0;
    arg1->unk1A = (s8) (s32) phi_f0_6;
    arg0->unk0 = temp_f26;
    arg0->unk10 = temp_f28;
    arg0->unk20 = temp_f30;
    arg0->unk8 = temp_f20;
    arg0->unk18 = temp_f22;
    arg0->unk28 = temp_f24;
    arg0->unk4 = arg8;
    arg0->unk14 = arg9;
    arg0->unk24 = argA;
    arg0->unk30 = (f32) -(((arg2 * temp_f26) + (arg3 * temp_f28)) + (arg4 * temp_f30));
    arg0->unk34 = (f32) -(((arg2 * arg8) + (arg3 * arg9)) + (arg4 * argA));
    arg0->unkC = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk3C = 1.0f;
    arg0->unk38 = (f32) -(((arg2 * temp_f20) + (arg3 * temp_f22)) + (arg4 * temp_f24));
    return 0.0f;
}

void func_800360D0(s32 arg0, ? arg2, ? arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9, f32 argA) {
    ? sp38;

    func_80035C90(arg2, arg3, &sp38, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, argA);
    func_80035200(&sp38, arg0);
}
