s32 func_6cd4(void) {
    f32 temp_f12;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_ret_3;
    s32 temp_ret_4;
    s32 temp_t6;
    u16 temp_a2;

    temp_a2 = (void *)0x80085368->unkC;
    temp_t6 = ((s32) temp_a2 >> 8) & 0xF;
    *(void *)0x8007BA4C = (?32) temp_a2;
    if ((temp_a2 & 4) != 0) {
        *(void *)0x8007BAB8 = (u16)3;
        *(void *)0x8007BABC = (u16)0x1E;
        *(void *)0x8007BABE = (u16)0;
        temp_a1 = *(void *)0x8007BC2C;
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        temp_ret = func_0001D8B0(0x8007BACC, temp_a1, 1, temp_a1, 1, 1);
        *(void *)0x8007B2EC = 0x13;
        return temp_ret;
    }
    if (temp_t6 == 1) {
        *(void *)0x8007BAB8 = (u16)8;
        *(void *)0x8007BABC = (u16)0x1E;
        *(void *)0x8007BABE = (u16)0;
        temp_f12 = (void *)0x80085368->unk14;
        *(void *)0x8007BAE0 = 0.0f;
        *(void *)0x8007BAD8 = 0.0f;
        (void *)0x8007BC30->unk0 = 0.0f;
        (void *)0x8007BC30->unk4 = 40.0f;
        *(void *)0x8007BADC = temp_f12;
        func_000232F4(temp_f12, (void *)0x8007BC30, temp_a2, 0x80080000);
        *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
        *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        func_000268D4(5, 0x21, 0xFF, (void *)0x8007BC30);
        temp_ret_2 = func_000268D4(0xF, 0x21, 0xFF);
        *(void *)0x8007B2EC = 0x13;
        return temp_ret_2;
    }
    if (temp_t6 == 2) {
block_8:
        temp_ret_3 = func_00006340(0x8007BAB8, 0x8007BACC, temp_a2, 0x80080000);
        if (((void *)0x80085368->unkC & 1) != 0) {
            *(void *)0x8007B2EC = 0x32;
        } else {
            *(void *)0x8007B2EC = 0x32;
        }
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        return temp_ret_3;
    }
    if (temp_t6 == 3) {
        goto block_8;
    }
    if (temp_t6 != 4) {
        return temp_t6;
    }
    func_0000DB7C(1, 0, temp_a2, ((void *)0x80085368->unk10 * 0x18) + *(void *)0x80084F24);
    *(void *)0x8007BAB8 = (u16)3;
    *(void *)0x8007BABC = (u16)0x1E;
    *(void *)0x8007BABE = (u16)0;
    temp_a1_2 = *(void *)0x8007BC2C;
    *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
    temp_ret_4 = func_0001D8B0(0x8007BACC, temp_a1_2, 1, temp_a1_2, 1, 1);
    *(void *)0x8007B2EC = 0x19;
    return temp_ret_4;
}
