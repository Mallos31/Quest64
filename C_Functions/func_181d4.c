s32 func_181d4(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f64 temp_f2;
    f64 temp_f6;
    s32 temp_a1;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u16 temp_a0_2;
    u16 temp_t8;
    u16 temp_t9;
    u8 temp_a0;
    void *temp_a2;
    void *temp_v0;
    void *phi_a2;
    u16 phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;
    f32 phi_f12;
    f32 phi_f12_2;
    f32 phi_f0;
    f32 phi_f12_3;
    f32 phi_f0_2;
    f64 phi_f6;

    temp_a2 = arg0;
    if ((arg1->unk5E & 1) != 0) {
        arg0 = temp_a2;
        phi_a2 = arg0;
        phi_v1 = ((func_0000B140(arg1, temp_a2) * 0x128) + 0x80080000)->unk-3648->unk2A;
    } else {
        temp_a0 = temp_a2->unk6;
        temp_v0 = (temp_a0 * 4) + 0x8004CDD0;
        temp_t8 = ((((temp_a0 + 0x8007BA80)->unk24 + ((s32) (temp_v0->unk0 + 0x8007BA80)->unk24 >> 4)) + ((s32) (temp_v0->unk2 + 0x8007BA80)->unk24 >> 3)) + ((s32) (temp_v0->unk4 + 0x8007BA80)->unk24 >> 3)) & 0xFFFF;
        phi_a2 = temp_a2;
        phi_v1 = temp_t8;
    }
    temp_t9 = phi_a2->unkC;
    temp_a1 = phi_v1 & 3;
    temp_f6 = (f64) temp_t9;
    phi_f6 = temp_f6;
    if ((s32) temp_t9 < 0) {
        phi_f6 = temp_f6 + 4294967296.0;
    }
    temp_a0_2 = phi_v1;
    temp_f12 = (f32) (phi_f6 * *(void *)0x800714D0);
    temp_f0 = (f32) ((f64) temp_f12 * *(void *)0x800714D8);
    phi_f12 = temp_f12;
    if (phi_v1 != 0) {
        phi_v0_2 = 0;
        phi_f12_2 = temp_f12;
        phi_f0 = temp_f0;
        if (temp_a1 != 0) {
            phi_v0 = 0;
            phi_f12_3 = temp_f12;
            phi_f0_2 = temp_f0;
loop_8:
            temp_f12_2 = phi_f12_3 + phi_f0_2;
            temp_v0_2 = phi_v0 + 1;
            temp_f0_2 = (f32) ((f64) phi_f0_2 * *(void *)0x800714E0);
            phi_v0 = temp_v0_2;
            phi_f12_3 = temp_f12_2;
            phi_f0_2 = temp_f0_2;
            if (temp_a1 != temp_v0_2) {
                goto loop_8;
            }
            phi_f12 = temp_f12_2;
            phi_v0_2 = temp_v0_2;
            phi_f12_2 = temp_f12_2;
            phi_f0 = temp_f0_2;
            if (temp_v0_2 != temp_a0_2) {
block_10:
                temp_f2 = *(void *)0x800714E8;
loop_11:
                temp_v0_3 = phi_v0_2 + 4;
                temp_f0_3 = (f32) ((f64) phi_f0 * temp_f2);
                temp_f0_4 = (f32) ((f64) temp_f0_3 * temp_f2);
                temp_f0_5 = (f32) ((f64) temp_f0_4 * temp_f2);
                temp_f12_3 = (((phi_f12_2 + phi_f0) + temp_f0_3) + temp_f0_4) + temp_f0_5;
                phi_v0_2 = temp_v0_3;
                phi_f12 = temp_f12_3;
                phi_f12_2 = temp_f12_3;
                phi_f0 = (f32) ((f64) temp_f0_5 * temp_f2);
                if (temp_v0_3 != temp_a0_2) {
                    goto loop_11;
                }
            }
        } else {
            goto block_10;
        }
    }
    return (u32) phi_f12 & 0xFFFF;
}
