f32 func_4e60(void *arg0, void *arg1, ? arg2) {
    s32 temp_t0;
    s32 temp_t2;
    u16 temp_v0;
    void *temp_a2;
    void *temp_a3;
    f32 phi_return;

    temp_a2 = arg0;
    temp_a3 = arg1;
    temp_a2->unk20 = 0.0f;
    temp_a2->unk18 = 0.0f;
    phi_return = 0.0f;
    if (*(void *)0x800905C0 == 0) {
        arg0 = temp_a2;
        arg1 = temp_a3;
        func_00008948(*(void *)0x8007BA74, temp_a2, temp_a3);
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
        temp_t0 = *(void *)0x8007B2E4 & -3;
        *(void *)0x8007B2E4 = temp_t0;
        if ((temp_t0 & 0x10) != 0) {
            temp_t2 = temp_t0 & -0x11;
            *(void *)0x8007B2E4 = temp_t2;
            phi_return = (bitwise f32) (void *)0x8007B2E4;
            if (((*(void *)0x8007BA74 * 0x84) + 0x80080000)->unk-4250->unk2 == 6) {
                phi_return = (bitwise f32) (void *)0x8007B2E4;
                if (*(void *)0x800905C4 == 0) {
                    *(void *)0x8007B2E4 = (s32) (temp_t2 | 0x480);
                    *(void *)0x8007B2EC = 0x23;
                    *(void *)0x8007B2F2 = (u16)0x1E;
                    *(void *)0x8007BA60 = (s16) *(void *)0x80084EE4;
                    *(void *)0x8007BA62 = (s16) *(void *)0x80084EE8;
                    arg1->unk0 = (u16)3;
                    arg1->unk4 = (u16)0x41;
                    arg0->unk60 = (u16) (arg0->unk60 | 1);
                    phi_return = (bitwise f32) (void *)0x8007B2E4;
                }
            }
        } else {
            temp_v0 = arg1->unk8;
            phi_return = (bitwise f32) temp_v0;
            if ((temp_v0 & 0x40) != 0) {
                arg1->unk8 = (u16) (temp_v0 & 0xFFBF);
                phi_return = func_000268D4(0, 0x3B, 0xFF, arg1);
            }
        }
        *(void *)0x8007BA74 = 0;
    }
    return phi_return;
}
