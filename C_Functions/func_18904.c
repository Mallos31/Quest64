Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

f64 func_18904(void *arg0, void *arg1) {
    void *sp38;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_v0;
    s8 temp_a1;
    u16 temp_a0;
    u16 temp_a1_2;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *phi_s0;
    f32 phi_f12;
    void *phi_s0_2;
    f64 phi_return;

    temp_t0 = arg0->unk30;
    temp_v0 = temp_t0->unk30;
    if ((s32) temp_v0 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_t0->unk38;
        (void *)0x800871D0->unk4 = (f32) temp_t0->unk3C;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        temp_a1_2 = temp_t0->unk34;
        phi_s0 = arg1;
        if ((temp_a1_2 & 0x40) != 0) {
            phi_s0 = arg0->unk24;
        }
        temp_v0_2 = phi_s0->unk64;
        if (temp_v0_2->unk0 == 1) {
            if ((temp_a1_2 & 0x100) != 0) {
                phi_f12 = phi_s0->unk68->unk94;
            } else {
block_9:
                phi_f12 = phi_s0->unk4;
            }
        } else {
            if ((temp_a1_2 & 0x100) != 0) {
                phi_f12 = (f32) ((f64) phi_s0->unk4 + (((f64) temp_v0_2->unk1C * 0.5) * (f64) phi_s0->unk24));
            } else {
                goto block_9;
            }
        }
        sp38 = temp_t0;
        temp_ret = func_000177F8(phi_f12, temp_t0->unk32, temp_a1_2, phi_s0->unk0, phi_f12, phi_s0->unk8, phi_s0->unk10, (temp_v0 * 0xA) + 0x800C1B90, (void *)0x800871D0, phi_s0);
        temp_v0_3 = temp_ret;
        arg0->unk38 = temp_v0_3;
        temp_v0_3->unk28 = (f32) arg0->unk18;
        arg0->unk38->unk2C = (f32) arg0->unk1C;
        arg0->unk38->unk30 = (f32) arg0->unk20;
        phi_s0_2 = phi_s0;
        phi_return = (bitwise f64) temp_ret;
    } else {
        arg0->unk38 = NULL;
        phi_s0_2 = arg1;
        phi_return = (bitwise f64) temp_v0;
    }
    temp_v1 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_v1->unk8;
    if (temp_a0 != 0) {
        temp_v0_4 = phi_s0_2->unk64;
        temp_f2 = temp_v0_4->unk20;
        temp_f0 = (f64) temp_v0_4->unk18;
        temp_f14 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f12 = phi_s0_2->unk4 + (temp_v0_4->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_return = temp_f0;
            } else {
                sp38 = arg0->unk30;
                phi_return = func_00019738(temp_f12, temp_f14, temp_v1->unkA, phi_s0_2->unk0, temp_f12, phi_s0_2->unk8, (f32) ((f64) temp_f14 * *(void *)0x80071510));
            }
        } else {
            sp38 = arg0->unk30;
            phi_return = func_00019354(temp_f12, temp_f14, temp_v1->unkA, 0x1E, phi_s0_2->unk0, temp_f12, (bitwise f32) phi_s0_2->unk8, (f32) ((f64) temp_f14 * *(void *)0x80071508));
        }
    }
    temp_a1 = arg0->unk30->unk42;
    if ((s32) temp_a1 >= 0) {
        return func_000268D4(arg0->unk30->unk43, temp_a1, 0xFF);
    }
    if (arg0->unk28 != arg0->unk24) {
        phi_return = func_000268D4(0, 0x18, 0xFF);
    }
    return phi_return;
}
