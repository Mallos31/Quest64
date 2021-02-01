f64 func_80035A00(void *arg0, void *arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 sp20;
    f32 sp1C;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f64 temp_f0;
    s32 temp_v1;
    u32 temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f10;
    void *phi_v0;
    f32 phi_f16;
    f32 phi_f12;
    f32 phi_f14;
    s32 phi_v1;
    f32 phi_f10_2;
    void *phi_v0_2;
    f32 phi_f16_2;
    f32 phi_f12_2;
    f32 phi_f14_2;
    f64 phi_return;

    temp_f14 = arg2;
    arg2 = temp_f14;
    func_80035300(temp_f14);
    temp_f14_2 = (f32) ((f64) arg2 * *(void *)0x80071B90);
    temp_f12 = temp_f14_2 / 2.0f;
    sp1C = temp_f12;
    sp20 = cosf(temp_f12, temp_f14_2);
    temp_f2 = sp20 / func_80035680(temp_f12);
    temp_f18 = arg4 + arg5;
    temp_f12_2 = arg4 - arg5;
    arg0->unk2C = -1.0f;
    arg0->unk14 = temp_f2;
    arg0->unk28 = (f32) (temp_f18 / temp_f12_2);
    arg0->unk0 = (f32) (temp_f2 / arg3);
    arg0->unk3C = 0.0f;
    arg0->unk38 = (f32) (((2.0f * arg4) * arg5) / temp_f12_2);
    temp_f16 = arg0->unk4;
    temp_f10 = arg0->unk0 * arg6;
    temp_f12_3 = arg0->unk8;
    temp_f14_3 = arg0->unkC;
    phi_f10 = temp_f10;
    phi_v0 = arg0;
    phi_f16 = temp_f16;
    phi_f12 = temp_f12_3;
    phi_f14 = temp_f14_3;
    phi_v1 = 1;
    phi_f10_2 = temp_f10;
    phi_v0_2 = arg0;
    phi_f16_2 = temp_f16;
    phi_f12_2 = temp_f12_3;
    phi_f14_2 = temp_f14_3;
    if (1 != 4) {
loop_1:
        temp_f16_2 = phi_v0->unk14;
        temp_f12_4 = phi_v0->unk18;
        temp_v1 = phi_v1 + 1;
        temp_f14_4 = phi_v0->unk1C;
        phi_v0->unk0 = phi_f10;
        temp_f10_2 = phi_v0->unk10 * arg6;
        phi_v0->unk4 = (f32) (phi_f16 * arg6);
        phi_v0->unk8 = (f32) (phi_f12 * arg6);
        temp_v0 = phi_v0 + 0x10;
        temp_v0->unk-4 = (f32) (phi_f14 * arg6);
        phi_f10 = temp_f10_2;
        phi_v0 = temp_v0;
        phi_f16 = temp_f16_2;
        phi_f12 = temp_f12_4;
        phi_f14 = temp_f14_4;
        phi_v1 = temp_v1;
        phi_f10_2 = temp_f10_2;
        phi_v0_2 = temp_v0;
        phi_f16_2 = temp_f16_2;
        phi_f12_2 = temp_f12_4;
        phi_f14_2 = temp_f14_4;
        if (temp_v1 != 4) {
            goto loop_1;
        }
    }
    temp_v0_2 = phi_v0_2 + 0x10;
    temp_v0_2->unk-10 = phi_f10_2;
    temp_v0_2->unk-C = (f32) (phi_f16_2 * arg6);
    temp_v0_2->unk-8 = (f32) (phi_f12_2 * arg6);
    temp_v0_2->unk-4 = (f32) (phi_f14_2 * arg6);
    phi_return = (bitwise f64) temp_v0_2;
    if (arg1 != 0) {
        temp_f0 = (f64) temp_f18;
        if (temp_f0 <= 2.0) {
            *arg1 = (u16)0xFFFF;
            return temp_f0;
        }
        temp_t8 = (u32) (131072.0 / temp_f0);
        *arg1 = (s16) temp_t8;
        phi_return = temp_f0;
        if ((temp_t8 & 0xFFFF) <= 0) {
            *arg1 = (u16)1;
            phi_return = temp_f0;
        }
    }
    return phi_return;
}

void func_80035C30(s32 arg0, ? arg2, ? arg3, f32 arg4, f32 arg5, f32 arg6) {
    ? sp28;

    func_80035A00(arg2, arg3, &sp28, arg2, arg3, arg4, arg5, arg6);
    func_80035200(&sp28, arg0);
}
