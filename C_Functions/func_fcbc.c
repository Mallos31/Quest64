s32 func_fcbc(f32 arg0, f32 arg1, u16 arg2, s32 arg3, void *arg4) {
    s32 sp4C;
    s32 sp44;
    void *sp40;
    f32 sp38;
    f32 sp34;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    f32 phi_f20;
    s32 phi_t0;

    temp_t6 = arg3 & 0xFFFF;
    temp_t8 = *(void *)0x80084F24;
    temp_t7 = temp_t6 * 0x18;
    temp_a0 = temp_t7 + temp_t8;
    temp_f20 = arg0 - temp_a0->unk0;
    temp_f6 = temp_a0->unk8;
    temp_t2 = *(void *)0x80084F28;
    temp_t1 = temp_a0->unk14 << 5;
    temp_f22 = (f32) ((f64) temp_a0->unkC * *(void *)0x80071260);
    temp_a1 = &sp34;
    temp_f14 = arg1 - temp_f6;
    phi_f20 = temp_f20;
    phi_t0 = 0;
    if (temp_f22 != 0.0f) {
        sp34 = temp_f20;
        sp38 = temp_f14;
        sp44 = temp_t1 + temp_t2;
        sp40 = temp_a0;
        sp4C = 0;
        func_000232F4(temp_f22, temp_f14, temp_a0, temp_a1, temp_t6);
        phi_f20 = -temp_f20;
        phi_t0 = sp4C;
    }
    if (((temp_t7 + temp_t8)->unk16 & 0xFF) < 0x10) {
        sp40 = temp_t7 + temp_t8;
        temp_v0 = func_0000F238(phi_f20, arg1 - temp_f6, temp_t7 + temp_t8, (temp_t7 + temp_t8)->unk10, arg2, temp_t1 + temp_t2, arg4);
        temp_a0_2 = temp_t7 + temp_t8;
        temp_t0 = temp_v0;
        phi_t0 = temp_t0;
        if (temp_v0 != 0) {
            arg4->unk4 = (f32) (arg4->unk4 + temp_a0_2->unk4);
            phi_t0 = temp_t0;
            if (temp_f22 != 0.0f) {
                temp_a1_2 = &sp34;
                sp34 = arg4->unkC;
                sp4C = temp_v0;
                sp38 = arg4->unk14;
                func_000232F4(-temp_f22, temp_a0_2, temp_a1_2);
                arg4->unkC = (f32) -sp34;
                arg4->unk14 = sp38;
                phi_t0 = sp4C;
            }
        }
    }
    return phi_t0;
}
