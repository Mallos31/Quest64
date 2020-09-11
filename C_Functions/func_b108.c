void *func_b108(s32 arg0, f32 arg1, f32 arg2, void *arg3, void *arg4) {
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f64 temp_f12;
    f64 temp_f2_2;
    void *temp_v1;
    ? phi_a3;

    if (arg0 != 0) {
        temp_f14 = (arg3->unk0 + arg3->unk18) - *(void *)0x8008C5A4;
        sp30 = temp_f14;
        temp_f16 = (arg3->unk8 + arg3->unk20) - *(void *)0x8008C430;
        sp2C = temp_f16;
        temp_f0 = func_00034F60((temp_f14 * temp_f14) + (temp_f16 * temp_f16), temp_f14);
        temp_f2 = arg4->unk10 * arg4->unk120;
        if (temp_f2 < temp_f0) {
            arg1 = (((temp_f2 * temp_f14) / temp_f0) - arg3->unk0) + *(void *)0x8008C5A4;
            arg2 = (((temp_f2 * temp_f16) / temp_f0) - arg3->unk8) + *(void *)0x8008C430;
            arg4->unk8 = (u16) (arg4->unk8 | 2);
        }
    }
    temp_f14_2 = (arg3->unk0 + arg3->unk18) - *(void *)0x8008C59C;
    sp30 = temp_f14_2;
    temp_f16_2 = (arg3->unk8 + arg3->unk20) - *(void *)0x8008C5A0;
    sp2C = temp_f16_2;
    temp_f0_2 = func_00034F60((temp_f14_2 * temp_f14_2) + (temp_f16_2 * temp_f16_2), temp_f14_2);
    temp_f18 = *(void *)0x8008C434;
    if (temp_f18 < temp_f0_2) {
        temp_f2_2 = (f64) temp_f18 - 0.5;
        temp_f12 = (f64) temp_f0_2;
        arg1 = (f32) ((((temp_f2_2 * (f64) temp_f14_2) / temp_f12) - (f64) arg3->unk0) + (f64) *(void *)0x8008C59C);
        arg2 = (f32) ((((temp_f2_2 * (f64) temp_f16_2) / temp_f12) - (f64) arg3->unk8) + (f64) *(void *)0x8008C5A0);
    }
    func_0000A854(temp_f14_2, &arg1, &arg2, arg3);
    temp_v1 = arg3->unk64;
    arg3->unk18 = arg1;
    arg3->unk20 = arg2;
    arg3->unk0 = (f32) (arg3->unk0 + arg1);
    arg3->unk8 = (f32) (arg3->unk8 + arg2);
    phi_a3 = 0xA00;
    if (temp_v1->unk0 == 0) {
        phi_a3 = 0xA00;
        if (arg4->unk0 != 0) {
            phi_a3 = 0xA01;
        }
    }
    (void *)0x8007D0E0->unk0 = (f32) (temp_v1->unk18 * temp_v1->unk20);
    func_0000EE60(arg3->unk0, arg3->unk4, (bitwise s32) arg3->unk8, phi_a3, (void *)0x8007D0E0);
    arg3->unk0 = (f32) (void *)0x8007D0E0->unk0;
    arg3->unk4 = (f32) (void *)0x8007D0E0->unk4;
    arg3->unk8 = (f32) (void *)0x8007D0E0->unk8;
    if ((arg4->unk8 & 4) != 0) {
        arg3->unk4 = (f32) ((f64) arg3->unk4 - 30.0);
    }
    arg3->unk2C = (f32) (void *)0x8007D0E0->unkC;
    arg3->unk30 = (f32) (void *)0x8007D0E0->unk10;
    arg3->unk34 = (f32) (void *)0x8007D0E0->unk14;
    arg3->unk62 = (u16) (void *)0x8007D0E0->unk18;
    return (void *)0x8007D0E0;
}
