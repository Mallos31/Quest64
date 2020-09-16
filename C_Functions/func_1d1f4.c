void *func_1d1f4(void) {
    f32 sp3C;
    f32 sp38;
    void *sp28;
    void *sp24;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f8;
    s16 temp_f16;
    u16 temp_v0;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_return;

    temp_v0 = *(void *)0x8008C592;
    phi_return = (void *) temp_v0;
    if ((temp_v0 & 1) == 0) {
        phi_return = (void *) temp_v0;
        if ((temp_v0 & 0x8000) == 0) {
            phi_return = (void *) temp_v0;
            if ((*(void *)0x8007BB2C & 1) == 0) {
                temp_f0 = *(void *)0x8007BA5C;
                phi_return = (bitwise void *) temp_f0;
                if (0.0f != temp_f0) {
                    *(void *)0x8008C574 = (f32) (*(void *)0x8008C574 + temp_f0);
                    phi_return = (void *)0x8008C578;
                    if (50.0 <= (f64) *(void *)0x8008C574) {
                        *(void *)0x8008C578 = (u16) (*(void *)0x8008C578 + 0x32);
                        phi_return = (void *)0x80080000;
                        if (func_00022FD0(0x7D0) < (u32) *(void *)0x8008C578) {
                            temp_f12 = (void *)0x8007BAB8->unk14;
                            temp_f14 = (void *)0x8007BAB8->unk1C;
                            sp3C = temp_f12;
                            sp38 = temp_f14;
                            temp_ret = func_0001D538(temp_f12, temp_f14);
                            temp_v0_2 = temp_ret;
                            phi_return = temp_ret;
                            if (temp_v0_2 != 0) {
                                sp24 = temp_v0_2;
                                temp_ret_2 = func_0001D474(temp_f12, sp38, *(void *)0x8008C560);
                                temp_v0_3 = temp_ret_2;
                                phi_return = temp_ret_2;
                                if (temp_v0_3 != 0) {
                                    *(void *)0x8008C578 = (u16)0U;
                                    temp_f16 = sp24->unk2;
                                    temp_f8 = (f32) sp24->unk0;
                                    sp28 = temp_v0_3;
                                    sp24 = sp24;
                                    func_0001D640((f32) sp24->unk0, (f32) sp24->unk2, sp28, func_00023210(sp3C - temp_f8, sp38 - (f32) temp_f16), sp28 + 8);
                                    *(void *)0x8008C59C = (f32) sp24->unk0;
                                    *(void *)0x8008C5A0 = (f32) sp24->unk2;
                                    *(void *)0x8008C592 = (u16)0x205U;
                                    *(void *)0x8008C596 = (u16)0;
                                    *(void *)0x8008C594 = (u16)0x14;
                                    if ((s32) (*(void *)0x8007BAC8)->unkC < (s32) ((*(void *)0x8007D0B0 * 0x128) + 0x80080000)->unk-3648->unkC) {
                                        *(void *)0x8008C598 = (u16)0;
                                        *(void *)0x8008C592 = (u16) (*(void *)0x8008C592 | 2);
                                    } else {
                                        *(void *)0x8008C598 = (s16) (*(void *)0x8008C59A - 1);
                                    }
                                    func_00003A1C();
                                    func_00020888();
                                    *(void *)0x8008C434 = 100.0f;
                                    *(void *)0x8008C55C = func_00019A98(0, (bitwise s32) *(void *)0x8008C59C, *(void *)0x8007BAD0, (bitwise s32) *(void *)0x8008C5A0, (f32) ((f64) *(void *)0x8008C434 * *(void *)0x80071610));
                                    *(void *)0x8008C58C = (u16)0;
                                    *(void *)0x8008C58E = (u16)1;
                                    *(void *)0x8008C590 = func_00022FD0(*(void *)0x8007C990);
                                    phi_return = func_000267B8(0xD);
                                }
                            }
                        }
                        *(void *)0x8008C574 = 0.0f;
                    }
                }
            }
        }
    }
    return phi_return;
}
