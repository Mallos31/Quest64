s16 func_1b220(void *arg0, ?32 arg1) {
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    ? sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 *temp_s3;
    f64 temp_f0;
    s16 temp_v0;
    s16 temp_v0_2;
    u32 temp_s1;
    void *temp_s4;
    f64 phi_f0;
    void *phi_s0;
    u32 phi_s1;
    u32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    *(void *)0x8008C5E0 = 0;
    if ((arg0->unk8 & 4) != 0) {
        func_00023A08(&sp6C, arg0->unk28, arg0->unk2C, arg0->unk30);
        temp_f0 = *(void *)0x800715C8;
        sp9C = arg0->unkC;
        spA0 = arg0->unk10;
        spA4 = arg0->unk14;
        func_00023DF4(&sp6C, (f32) ((f64) arg0->unk1C * temp_f0), (f32) ((f64) arg0->unk20 * temp_f0), (f32) ((f64) arg0->unk24 * temp_f0));
        phi_f0 = *(void *)0x800715D0;
    } else {
        func_00023360(&sp6C, 0, arg0->unk18, 0, *(void *)0x800715D8, arg0->unkC, arg0->unk10, arg0->unk14);
        func_00023DF4(&sp6C, (bitwise s32) arg0->unk1C, (bitwise s32) arg0->unk20, (bitwise s32) arg0->unk24);
        phi_f0 = *(void *)0x800715E0;
    }
    temp_s3 = &sp60;
    sp60 = (f32) ((f64) arg0->unk1C * phi_f0);
    sp64 = (f32) ((f64) arg0->unk20 * phi_f0);
    sp68 = (f32) ((f64) arg0->unk24 * phi_f0);
    temp_v0 = arg0->unk38;
    temp_s4 = arg0->unk3C;
    phi_s0 = temp_s4;
    phi_s1 = 0U;
    phi_return = temp_v0;
    phi_v0 = (u32) temp_v0;
    phi_return_2 = temp_v0;
    if (temp_v0 != 0) {
loop_4:
        if (phi_s0->unk14 == 0) {
            func_0001DC78(&sp6C, subroutine_arg1, (bitwise s32) temp_s3[1], (bitwise s32) temp_s3[2], 0, phi_s1, arg0->unk34, 0, arg0 + 0x38, temp_s4, arg1);
            temp_v0_2 = arg0->unk38;
            phi_v0 = (u32) temp_v0_2;
            phi_return_2 = temp_v0_2;
        }
        temp_s1 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1;
        phi_return = phi_return_2;
        if (temp_s1 < phi_v0) {
            goto loop_4;
        }
    }
    return phi_return;
}
