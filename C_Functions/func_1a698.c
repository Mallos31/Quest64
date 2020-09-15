s32 func_1a698(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f28;
    s32 temp_s4;
    s32 temp_s5;
    void *temp_v0;
    void *phi_v0;
    s32 phi_s5;
    void *phi_v0_2;
    f32 phi_f22;
    void *phi_s1;
    void *phi_s0;
    s32 phi_s4;
    s32 phi_s5_2;

    phi_v0 = (void *)0x800880A8;
    phi_s5 = 0;
loop_1:
    phi_v0_2 = phi_v0;
    phi_s5_2 = phi_s5;
    if (*phi_v0 != 0) {
        temp_s5 = phi_s5 + 1;
        temp_v0 = phi_v0 + 0xD0;
        phi_v0 = temp_v0;
        phi_s5 = temp_s5;
        phi_v0_2 = temp_v0;
        phi_s5_2 = temp_s5;
        if (temp_s5 != 3) {
            goto loop_1;
        }
    }
    phi_v0_2->unk4 = (s16) (arg0 & 0xFFFF);
    phi_v0_2->unk0 = (u16)1;
    temp_f28 = *(void *)0x800715C0;
    phi_f22 = 0.0f;
    phi_s1 = phi_v0_2 + 0x10;
    phi_s0 = phi_v0_2 + 0x70;
    phi_s4 = 8;
loop_4:
    (void *)0x800883F0->unk0 = 0.0f;
    (void *)0x800883F0->unk4 = arg4;
    func_000232F4(phi_f22, (void *)0x800883F0);
    phi_s1->unk0 = (f32) ((void *)0x800883F0->unk0 + arg1);
    phi_s1->unk8 = (f32) ((void *)0x800883F0->unk4 + arg3);
    func_0000EE60(phi_s1->unk0, (void *)0x8007BAB8->unk18, (bitwise s32) phi_s1->unk8, 0xA00, (void *)0x80088400);
    temp_s4 = phi_s4 - 1;
    if (((void *)0x80088400->unk18 & 0x8000) != 0) {
        phi_s1->unk4 = arg2;
        phi_s0->unk0 = 0.0f;
        phi_s0->unk4 = 1.0f;
        phi_s0->unk8 = 0.0f;
    } else {
        temp_f12 = (void *)0x80088400->unk4;
        temp_f0 = (f64) (temp_f12 - arg2);
        if ((temp_f0 < -40.0) || (40.0 < temp_f0)) {
            phi_s1->unk4 = arg2;
            phi_s0->unk0 = 0.0f;
            phi_s0->unk4 = 1.0f;
            phi_s0->unk8 = 0.0f;
        } else {
            phi_s1->unk4 = temp_f12;
            phi_s0->unk0 = (f32) (void *)0x80088400->unkC;
            phi_s0->unk4 = (f32) (void *)0x80088400->unk10;
            phi_s0->unk8 = (f32) (void *)0x80088400->unk14;
        }
    }
    phi_f22 = (f32) ((f64) phi_f22 + temp_f28);
    phi_s1 = phi_s1 + 0xC;
    phi_s0 = phi_s0 + 0xC;
    phi_s4 = temp_s4;
    if (temp_s4 != 0) {
        goto loop_4;
    }
    return phi_s5_2;
}
