f64 func_18598(void *arg0, void *arg1) {
    void *sp3C;
    s32 sp38;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_v0;
    s32 temp_t6;
    s8 temp_a1;
    u16 temp_a0;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    f32 phi_f2;
    void *phi_t0;
    void *phi_t0_2;
    f64 phi_return;

    temp_t0 = arg0->unk30;
    temp_v0 = temp_t0->unk0;
    if ((s32) temp_v0 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_t0->unk8;
        (void *)0x800871D0->unk4 = (f32) temp_t0->unkC;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        temp_f12 = arg0->unk18;
        temp_t6 = temp_v0 * 0xA;
        if ((0.0f != temp_f12) || (0.0f != arg0->unk20)) {
            sp38 = temp_t6 + 0x800C1B90;
            sp3C = temp_t0;
            phi_f2 = func_00023210(temp_f12, arg0->unk20);
        } else {
            phi_f2 = arg1->unk10;
        }
        sp3C = arg0->unk30;
        temp_ret = func_000177F8(arg0->unk30->unk2, arg0->unk30->unk4, arg0->unkC, arg0->unk10, arg0->unk14, phi_f2, temp_t6 + 0x800C1B90, (void *)0x800871D0, arg1);
        temp_v0_2 = temp_ret;
        arg0->unk34 = temp_v0_2;
        temp_v0_2->unk28 = (f32) arg0->unk18;
        arg0->unk34->unk2C = (f32) arg0->unk1C;
        arg0->unk34->unk30 = (f32) arg0->unk20;
        phi_t0 = arg0->unk30;
        phi_return = (bitwise f64) temp_ret;
    } else {
        arg0->unk34 = NULL;
        phi_t0 = temp_t0;
        phi_return = (bitwise f64) temp_v0;
    }
    temp_v1 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_v1->unk0;
    phi_t0_2 = phi_t0;
    if (temp_a0 != 0) {
        temp_v0_3 = arg1->unk64;
        temp_f2 = arg1->unk24;
        temp_f0 = (f64) temp_v0_3->unk18;
        temp_f12_2 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f14 = arg1->unk4 + (temp_v0_3->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_t0_2 = phi_t0;
                phi_return = temp_f0;
            } else {
                sp3C = phi_t0;
                phi_return = func_00019738(temp_f12_2, temp_f14, temp_v1->unk2, arg1->unk0, temp_f14, arg1->unk8, (f32) ((f64) temp_f12_2 * *(void *)0x800714F8));
block_13:
                phi_t0_2 = sp3C;
            }
        } else {
            sp3C = phi_t0;
            phi_return = func_00019354(temp_f12_2, temp_f14, temp_v1->unk2, 0x1E, arg1->unk0, temp_f14, (bitwise f32) arg1->unk8, (f32) ((f64) temp_f12_2 * *(void *)0x800714F0));
            goto block_13;
        }
    }
    temp_a1 = phi_t0_2->unk40;
    if ((s32) temp_a1 >= 0) {
        phi_return = func_000268D4(phi_t0_2->unk41, temp_a1, 0xFF);
    }
    return phi_return;
}
