f32 func_214b8(void *arg0) {
    s32 temp_v1;
    u16 temp_a1;
    void *temp_v0;
    void *temp_v1_2;
    s32 phi_v1;
    void *phi_v0;
    void *phi_v0_2;

    phi_v1 = 7;
    phi_v0 = (void *)0x8008C668;
    phi_v0_2 = (void *)0x8008C668;
    if (*(void *)0x8008C668 != 0) {
loop_1:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x1C;
        phi_v0_2 = temp_v0;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v0_2 = temp_v0;
            if (*temp_v0 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v0_2->unk0 = (u16)0x2D;
    phi_v0_2->unk4 = arg0;
    phi_v0_2->unk10 = 0.0f;
    phi_v0_2->unk8 = 0.0f;
    temp_v1_2 = arg0->unk64;
    temp_a1 = temp_v1_2->unk0;
    if (temp_a1 == 0) {
        phi_v0_2->unkC = (f32) (temp_v1_2->unk1C * arg0->unk24);
    } else {
        if (temp_a1 == 1) {
            phi_v0_2->unkC = (f32) (arg0->unk68->unk94 - arg0->unk4);
        } else {
            phi_v0_2->unkC = (f32) ((f64) arg0->unk24 * *(void *)0x800716C8);
        }
    }
    phi_v0_2->unk14 = (u16)0x23;
    phi_v0_2->unk16 = (u16)0x31;
    phi_v0_2->unk18 = (u16)0x29;
    phi_v0_2->unk1A = (u16)0xE;
    return 0.0f;
}
