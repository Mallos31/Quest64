void *func_12770(void) {
    f32 temp_f22;
    u16 temp_s3_2;
    u16 temp_s3_3;
    u32 temp_s3;
    u8 temp_t1;
    void *temp_v0;
    void *temp_v1;
    void *phi_v0;
    u32 phi_s3;
    u32 phi_s3_2;
    void *phi_v0_2;
    void *phi_s1;
    void *phi_s0;
    ? phi_a1;
    u16 phi_s3_3;
    void *phi_return;

    phi_v0 = (void *)0x8004C470;
    phi_s3 = 0U;
    phi_return = (void *)0x8004C470;
loop_1:
    phi_s3_2 = phi_s3;
    phi_v0_2 = phi_v0;
    if (*(void *)0x80084EE4 != *phi_v0) {
        temp_s3 = phi_s3 + 1;
        temp_v0 = phi_v0 + 8;
        phi_v0 = temp_v0;
        phi_s3 = temp_s3;
        phi_s3_2 = temp_s3;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        phi_return = temp_v0;
        if (temp_s3 < 0x13U) {
            goto loop_1;
        }
    }
    if (phi_s3_2 != 0x13) {
        temp_v1 = phi_v0_2->unk4 + (*(void *)0x80084EE8 * 8);
        temp_s3_2 = temp_v1->unk0;
        *(void *)0x800869A0 = (?32) temp_s3_2;
        if (temp_s3_2 != 0) {
            temp_f22 = *(void *)0x800712C0;
            phi_s1 = temp_v1->unk4;
            phi_s0 = (void *)0x800862E0;
            phi_s3_3 = temp_s3_2;
loop_6:
            phi_s0->unk0 = (f32) phi_s1->unk0;
            phi_s0->unkC = 0.0f;
            phi_s0->unk14 = 0.0f;
            phi_s0->unk8 = (f32) phi_s1->unk4;
            phi_s0->unk10 = (f32) phi_s1->unk8;
            func_0000EE60(phi_s0->unk0, 0.0f, (bitwise s32) phi_s0->unk8, 0xA00, (void *)0x800869B8);
            phi_s0->unk4 = (f32) (void *)0x800869B8->unk4;
            phi_s0->unk2C = (f32) (void *)0x800869B8->unkC;
            phi_s0->unk30 = (f32) (void *)0x800869B8->unk10;
            phi_s0->unk34 = (f32) (void *)0x800869B8->unk14;
            phi_s0->unk1C = (f32) phi_s1->unk14;
            phi_s0->unk18 = (f32) phi_s1->unk18;
            phi_s0->unk20 = (f32) phi_s1->unk1C;
            phi_s0->unk44 = (f32) phi_s1->unkC;
            phi_s0->unk24 = temp_f22;
            phi_s0->unk4C = (f32) phi_s1->unk10;
            temp_t1 = phi_s1->unk20;
            phi_s0->unk62 = (s16) temp_t1;
            phi_s0->unk60 = (u16)0;
            phi_s0->unk50 = (s16) phi_s1->unk21;
            if (func_00012170(temp_t1 & 0xFFFF) != 0) {
                phi_a1 = 3;
            } else {
                phi_a1 = 0;
            }
            temp_s3_3 = phi_s3_3 - 1;
            phi_s1 = phi_s1 + 0x24;
            phi_s0 = phi_s0 + 0x6C;
            phi_s3_3 = temp_s3_3;
            if (temp_s3_3 != 0) {
                goto loop_6;
            }
            return func_0001D8B0(phi_s0, phi_a1, 1, phi_a1, 1, 1);
        }
    } else {
        *(void *)0x800869A0 = 0;
    }
    return phi_return;
}
