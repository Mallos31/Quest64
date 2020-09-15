f64 func_18ba0(void *arg0, void *arg1) {
    void *sp38;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_t1;
    s8 temp_a1;
    u16 temp_a0;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_v1;
    f64 phi_return;

    temp_v1 = arg0->unk30;
    temp_t1 = temp_v1->unk20;
    phi_return = (bitwise f64) (void *)0x800871D0;
    if ((s32) temp_t1 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_v1->unk28;
        (void *)0x800871D0->unk4 = (f32) temp_v1->unk2C;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        sp38 = temp_v1;
        temp_ret = func_000177F8(temp_v1->unk22, temp_v1->unk24, arg0->unkC, arg0->unk10, arg0->unk14, arg1->unk10, (temp_t1 * 0xA) + 0x800C1B90, (void *)0x800871D0, arg0->unk24);
        temp_v0 = temp_ret;
        temp_v0->unk28 = (f32) arg0->unk18;
        temp_v0->unk2C = (f32) arg0->unk1C;
        temp_v0->unk30 = (f32) arg0->unk20;
        phi_return = (bitwise f64) temp_ret;
    }
    temp_t0 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_t0->unk4;
    phi_v1 = arg0->unk30;
    if (temp_a0 != 0) {
        temp_v0_2 = arg1->unk64;
        temp_f2 = arg1->unk24;
        temp_f0 = (f64) temp_v0_2->unk18;
        temp_f12 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f14 = arg1->unk4 + (temp_v0_2->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_v1 = arg0->unk30;
                phi_return = temp_f0;
            } else {
                sp38 = arg0->unk30;
                phi_return = func_00019738(temp_f12, temp_f14, temp_t0->unk6, arg1->unk0, temp_f14, arg1->unk8, (f32) ((f64) temp_f12 * *(void *)0x80071520));
block_8:
                phi_v1 = sp38;
            }
        } else {
            sp38 = arg0->unk30;
            phi_return = func_00019354(temp_f12, temp_f14, temp_t0->unk6, 0x1E, arg1->unk0, temp_f14, (bitwise f32) arg1->unk8, (f32) ((f64) temp_f12 * *(void *)0x80071518));
            goto block_8;
        }
    }
    temp_a1 = phi_v1->unk44;
    if ((s32) temp_a1 >= 0) {
        phi_return = func_000268D4(phi_v1->unk45, temp_a1, 0xFF);
    }
    return phi_return;
}
