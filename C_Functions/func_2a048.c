s8 func_2a048(s32 arg0) {
    s32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s32 temp_s0_7;
    s32 temp_s0_8;
    s8 temp_s0_3;
    s8 temp_v0;
    u16 temp_a3;
    u16 temp_v1;
    u32 temp_lo;
    u8 temp_t3;
    u8 temp_t6;
    u8 temp_t9;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    u32 phi_s0;
    s8 phi_return;

    func_00029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0x9F);
    func_00029B58(0x37, arg0 + 0x2B, 0xBE, 0xF0, 3);
    func_00029B58(0x37, arg0 + 0x119, 0x24, 2, 0x9A);
    temp_s0 = arg0 + 0x27;
    func_00029B58(0x37, temp_s0, 0x1D, 0xF2, 1);
    func_00029B58(0x37, temp_s0, 0xBD, 0xF2, 1);
    func_00029B58(0x37, temp_s0, 0x1E, 1, 0x9F);
    func_00029B58(0x37, arg0 + 0x118, 0x1E, 1, 0x9F);
    temp_s0_2 = arg0 + 0x29;
    func_00029B58(0x38, temp_s0_2, 0x1F, 0xED, 1);
    func_00029B58(0x38, temp_s0_2, 0x20, 1, 0x9B);
    func_00029B58(0x39, temp_s0_2, 0xBB, 0xEE, 1);
    func_00029B58(0x39, arg0 + 0x116, 0x1F, 1, 0x9C);
    func_00029B58(5, arg0 + 0x45, 0x1C, 7, 7);
    func_00029B58(5, arg0 + 0xF3, 0x1C, 7, 7);
    temp_s0_3 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_00029B58(6, arg0 + temp_s0_3 + 0x36, 0x1A, 0xE, 0xB);
    func_00029B58(7, (arg0 - temp_s0_3) + 0xFB, 0x1A, 0xE, 0xB);
    func_00029B58(0x2D, arg0 + 0x81, 0x19, 0x3A, 0x10);
    temp_s0_4 = arg0 + 0xA5;
    func_00029B58(0x32, temp_s0_4, 0x35, 0x35, 6);
    func_00029B58(0x32, arg0 + 0x31, 0x78, 0x35, 6);
    func_00029B58(0x32, arg0 + 0xD9, 0x78, 0x35, 6);
    func_00029B58(0x32, temp_s0_4, 0xAE, 0x35, 6);
    temp_s0_5 = arg0 + 0x86;
    func_00029B58(0x14, temp_s0_5, 0x34, 8, 0xA);
    func_00029B58(0x14, arg0 + 0x47, 0x6B, 8, 0xA);
    func_00029B58(0x14, arg0 + 0xF0, 0x6B, 8, 0xA);
    func_00029B58(0x14, temp_s0_5, 0xAD, 8, 0xA);
    temp_s0_6 = arg0 + 0x9A;
    func_00029B58(0x2E, temp_s0_6, 0x3D, 0xC, 0xC);
    func_00029B58(0x2F, arg0 + 0x67, 0x6F, 0xC, 0xC);
    func_00029B58(0x30, arg0 + 0xCC, 0x6F, 0xC, 0xC);
    func_00029B58(0x31, temp_s0_6, 0xA1, 0xC, 0xC);
    func_00029B58(0x15, arg0 + 0xA7, 0x92, 8, 0xA);
    temp_s0_7 = arg0 + 0x8D;
    func_0002AB64(2, temp_s0_7, 0x34, 0x32, 0xA);
    func_0002AB64(2, arg0 + 0x4E, 0x6B, 0x32, 0xA);
    func_0002AB64(2, arg0 + 0xF7, 0x6B, 0x32, 0xA);
    func_0002AB64(2, temp_s0_7, 0xAD, 0x32, 0xA);
    temp_a1 = arg0 + 0x78;
    sp28 = temp_a1;
    func_0002AB64(2, temp_a1, 0x34, *(void *)0x8007BAA4, 0xA);
    func_0002AB64(2, arg0 + 0x39, 0x6B, *(void *)0x8007BAA5, 0xA);
    func_0002AB64(2, arg0 + 0xE2, 0x6B, *(void *)0x8007BAA7, 0xA);
    func_0002AB64(2, temp_a1, 0xAD, *(void *)0x8007BAA6, 0xA);
    temp_s0_8 = arg0 + 0xA6;
    func_00029B58(0x33, temp_s0_8, 0x36, (s32) (((f32) (u32) *(void *)0x8007BAA4 / 50.0f) * 50.0f), 3);
    temp_t3 = *(void *)0x8007BAA5;
    temp_f0 = (f32) temp_t3;
    phi_f0 = temp_f0;
    if ((s32) temp_t3 < 0) {
        phi_f0 = temp_f0 + 4294967296.0f;
    }
    func_00029B58(0x33, arg0 + 0x32, 0x79, (s32) ((phi_f0 / 50.0f) * 50.0f), 3);
    temp_t6 = *(void *)0x8007BAA7;
    temp_f0_2 = (f32) temp_t6;
    phi_f0_2 = temp_f0_2;
    if ((s32) temp_t6 < 0) {
        phi_f0_2 = temp_f0_2 + 4294967296.0f;
    }
    func_00029B58(0x33, arg0 + 0xDA, 0x79, (s32) ((phi_f0_2 / 50.0f) * 50.0f), 3);
    temp_t9 = *(void *)0x8007BAA6;
    temp_f0_3 = (f32) temp_t9;
    phi_f0_3 = temp_f0_3;
    if ((s32) temp_t9 < 0) {
        phi_f0_3 = temp_f0_3 + 4294967296.0f;
    }
    func_00029B58(0x33, temp_s0_8, 0xAF, (s32) ((phi_f0_3 / 50.0f) * 50.0f), 3);
    temp_lo = (u32) (*(void *)0x8007BA90 * 0x64) / (u32) ((*(void *)0x8007BAB4 * 4) + 0x80050000)->unk3D3C;
    phi_s0 = temp_lo;
    if ((s32) temp_lo >= 0x65) {
        phi_s0 = 0x64U;
    }
    func_0002AB64(3, arg0 + 0x91, 0x92, phi_s0, 0xA);
    func_0002A0B8(phi_s0, arg0);
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0 = *(void *)0x80092871;
        if ((s32) temp_v0 >= 0x15) {
block_11:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_000268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1 = *(void *)0x80092876;
        if ((temp_v1 & 0x10) != 0) {
            goto block_11;
        }
        if (((s32) temp_v0 < -0x14) || (phi_return = temp_v0, ((temp_v1 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_000268D4(0, 0, 0xFF, temp_a3);
        }
    }
    return phi_return;
}

