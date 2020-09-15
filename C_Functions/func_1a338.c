void func_1a338(s8 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sp100;
    f32 spFC;
    f32 spF8;
    ? spB8;
    s8 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    ? sp78;
    ? *temp_t0;
    f32 *temp_s4;
    f32 *temp_s5;
    f32 temp_f0;
    f32 temp_f6;
    f32 temp_f6_2;
    f64 temp_f20;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;
    f32 phi_f6;
    f32 phi_f6_2;
    s32 phi_s0;

    phi_t6 = (void *)0x8004CFF0;
    phi_t0 = &sp78;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004D02C) {
        goto loop_1;
    }
    temp_t0->unk0 = (s32) temp_t6->unk0;
    temp_f20 = *(void *)0x800715A8;
    temp_s5 = &spFC;
    temp_s4 = &sp100;
    phi_s0 = 0xF;
loop_3:
    temp_v0 = func_00022FD0(0x20);
    temp_f6 = (f32) temp_v0;
    phi_f6 = temp_f6;
    if (temp_v0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    sp100 = (f32) (((f64) phi_f6 * temp_f20) / 16.0);
    temp_v0_2 = func_00022FD0(0x20);
    temp_f6_2 = (f32) temp_v0_2;
    phi_f6_2 = temp_f6_2;
    if (temp_v0_2 < 0) {
        phi_f6_2 = temp_f6_2 + 4294967296.0f;
    }
    temp_f0 = (f32) (((f64) phi_f6_2 * temp_f20) / 16.0);
    spFC = temp_f0;
    func_00023570(&spB8, (bitwise s32) sp100, temp_f0, 0);
    func_00035470(&spB8, 0, 0, arg4, temp_s4, temp_s5, &spF8);
    sp90 = arg1;
    sp94 = arg2;
    spB4 = arg0;
    spAC = temp_f0;
    sp98 = arg3;
    spA8 = sp100;
    spB0 = spF8;
    func_0001B108(&sp78);
    temp_s0 = phi_s0 - 1;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
        goto loop_3;
    }
}
