f32 func_4c40(void *arg0, void *arg1, ? arg2) {
    u16 temp_t7;
    void *temp_v0;
    f32 phi_return;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    phi_return = 0.0f;
    if ((temp_t7 & 0xFFFF) == 0) {
        temp_v0 = arg1->unk10;
        arg0->unk18 = 0.0f;
        arg0->unk20 = 0.0f;
        if (temp_v0->unk4 == 0) {
            arg1->unk0 = (u16)6;
            arg1->unk4 = (u16)0xE6U;
            func_0001D8B0(9, 1, *(void *)0x8007BC2C, 1, 1);
            func_000202E4(arg0);
            func_000267B8(0x1E);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x880);
            *(void *)0x8007B2EC = (?32) arg1->unk4;
            *(void *)0x8007B2F0 = (u16)2;
            *(void *)0x8007B2F2 = (u16)0x5A;
            arg1->unk120 = (u16)0xC8;
            (void *)0x80085368->unk0 = (?32) *(void *)0x8007BA60;
            (void *)0x80085368->unk4 = (?32) *(void *)0x8007BA62;
            (void *)0x80085368->unk8 = (?32) *(void *)0x8007BA64;
            *(void *)0x8007BA40 = 0.0f;
            *(void *)0x8007BA44 = 0.0f;
            *(void *)0x8007BA48 = 0.0f;
            *(void *)0x8007BA4C = 0x108;
            *(void *)0x8007BABE = (u16)0;
            *(void *)0x8004D2B4 = (u8)1;
            *(void *)0x8004D2BC = 0;
            *(void *)0x8004D2B8 = 0;
            return 0.0f;
        }
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
        phi_return = (bitwise f32) temp_v0;
    }
    return phi_return;
}
