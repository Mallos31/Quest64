void func_19fb4(void) {
    f32 sp108;
    f32 sp104;
    f32 sp100;
    ? spB8;
    s8 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    ? sp74;
    ? *temp_t0;
    f32 temp_f6;
    f64 temp_f20;
    f64 temp_f24;
    s32 temp_s1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;
    void *phi_s0;
    f32 phi_f6;
    s32 phi_s1;

    phi_t6 = (void *)0x8004CFB0;
    phi_t0 = &sp74;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004CFEC) {
        goto loop_1;
    }
    temp_t0->unk0 = (s32) temp_t6->unk0;
    temp_f24 = *(void *)0x80071588;
    temp_f20 = *(void *)0x80071590;
    phi_s0 = (void *)0x800874E8;
    phi_s1 = 8;
loop_3:
    temp_v1 = phi_s0->unk0;
    if (temp_v1 != 0) {
        if ((temp_v1 & 1) != 0) {
            temp_v0 = func_00022FD0(0x20);
            temp_f6 = (f32) temp_v0;
            phi_f6 = temp_f6;
            if (temp_v0 < 0) {
                phi_f6 = temp_f6 + 4294967296.0f;
            }
            func_00023570(&spB8, (f32) (((f64) phi_f6 * temp_f24) / 16.0), (f32) (((f64) (f32) func_00022FD0(0x20) * temp_f24) / 16.0), 0);
            func_00035470(&spB8, 0, 0, phi_s0->unk14, &sp108, &sp104, &sp100);
            sp8C = phi_s0->unk8 + sp108;
            sp90 = phi_s0->unkC + sp104;
            sp94 = phi_s0->unk10 + sp100;
            spA4 = (f32) ((f64) sp108 * temp_f20);
            spA8 = (f32) ((f64) sp104 * temp_f20);
            spAC = (f32) ((f64) sp100 * temp_f20);
            spB0 = (s8) phi_s0->unk4;
            func_0001B108(&sp74);
        }
        phi_s0->unk0 = (s32) (phi_s0->unk0 - 1);
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x18;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_3;
    }
}
