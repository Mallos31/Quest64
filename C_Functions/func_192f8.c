s32 func_192f8(void) {
    f32 temp_f26;
    s32 temp_s3;
    s32 temp_t6;
    s32 temp_v0;
    void *temp_v0_2;
    void *phi_s1;
    s32 phi_s3;
    s32 phi_return;

    temp_f26 = *(void *)0x80071530;
    phi_s1 = (void *)0x80087210;
    phi_s3 = 8;
loop_1:
    temp_v0 = phi_s1->unk0;
    temp_t6 = temp_v0 - 1;
    phi_return = temp_v0;
    if (temp_v0 != 0) {
        phi_s1->unk0 = temp_t6;
        phi_return = temp_v0;
        if ((temp_t6 & 1) != 0) {
            temp_v0_2 = phi_s1->unk4;
            (void *)0x8004CE30->unk18 = (f32) temp_v0_2->unk0;
            (void *)0x8004CE30->unk1C = (f32) (temp_v0_2->unk4 + 1.0f);
            (void *)0x800883F0->unk0 = 0.0f;
            (void *)0x800883F0->unk4 = (f32) *(void *)0x80071534;
            (void *)0x8004CE30->unk20 = (f32) temp_v0_2->unk8;
            func_000232F4(temp_v0_2->unk10, (void *)0x800883F0);
            (void *)0x8004CE30->unk34 = temp_f26;
            (void *)0x8004CE30->unk30 = (f32) (void *)0x800883F0->unk0;
            (void *)0x8004CE30->unk38 = (f32) (void *)0x800883F0->unk4;
            phi_return = func_0001B108((void *)0x8004CE30);
        }
    }
    temp_s3 = phi_s3 - 1;
    phi_s1 = phi_s1 + 8;
    phi_s3 = temp_s3;
    if (temp_s3 != 0) {
        goto loop_1;
    }
    return phi_return;
}
