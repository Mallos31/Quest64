s8 func_27b34(s32 arg0) {
    s32 sp38;
    s32 sp34;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_s0_6;
    s32 temp_s0_7;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s8 temp_s1_4;
    s8 temp_v0_3;
    u16 temp_a3;
    u16 temp_t2;
    u16 temp_t5;
    u16 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_s0;
    s32 phi_s1;
    s32 phi_s0_2;
    s32 phi_s1_2;
    s32 phi_s0_3;
    s32 phi_s1_3;
    f32 phi_f0;
    f32 phi_f0_2;
    s8 phi_return;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = -1;
    temp_v0_2->unk0 = 0xFB000000;
    func_00029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0x98);
    func_00029B58(0x37, arg0 + 0x2B, 0xB7, 0xF0, 3);
    func_00029B58(0x37, arg0 + 0x119, 0x24, 2, 0x96);
    temp_s0 = arg0 + 0x27;
    func_00029B58(0x37, temp_s0, 0x1D, 0xF2, 1);
    func_00029B58(0x37, temp_s0, 0xB6, 0xF2, 1);
    func_00029B58(0x37, temp_s0, 0x1D, 1, 0x9A);
    func_00029B58(0x37, arg0 + 0x118, 0x1D, 1, 0x9A);
    temp_s0_2 = arg0 + 0x29;
    func_00029B58(0x38, temp_s0_2, 0x1F, 0xED, 1);
    func_00029B58(0x38, temp_s0_2, 0x1F, 1, 0x95);
    func_00029B58(0x39, temp_s0_2, 0xB4, 0xEE, 1);
    func_00029B58(0x39, arg0 + 0x116, 0x1F, 1, 0x96);
    func_00029B58(0x3C, arg0 + 0x3A, 0x1E, 0x15, 0x98);
    sp38 = arg0 + 0x5D;
    phi_s0 = 0x4B;
    phi_s1 = 0;
loop_1:
    func_00029B58(0x3D, sp38, phi_s0, 0xA7, 2);
    temp_s1 = phi_s1 + 1;
    phi_s0 = phi_s0 + 0x21;
    phi_s1 = temp_s1;
    if (temp_s1 < 3) {
        goto loop_1;
    }
    sp38 = arg0 + 0x63;
    phi_s0_2 = 0x40;
    phi_s1_2 = 0;
loop_3:
    func_00029B58(0x32, sp38, phi_s0_2, 0x3C, 7);
    temp_s1_2 = phi_s1_2 + 1;
    phi_s0_2 = phi_s0_2 + 0x21;
    phi_s1_2 = temp_s1_2;
    if (temp_s1_2 < 4) {
        goto loop_3;
    }
    sp38 = arg0 + 0xC3;
    phi_s0_3 = 0x3C;
    phi_s1_3 = 0;
loop_5:
    func_00029B58(0x20, sp38, phi_s0_3, 0x13, 0xB);
    temp_s1_3 = phi_s1_3 + 1;
    phi_s0_3 = phi_s0_3 + 0x21;
    phi_s1_3 = temp_s1_3;
    if (temp_s1_3 < 4) {
        goto loop_5;
    }
    func_00029B58(0x1B, arg0 + 0x38, 0x34, 0x18, 0xE);
    func_00029B58(0x1C, arg0 + 0x37, 0x54, 0x1C, 0xD);
    temp_s0_3 = arg0 + 0x35;
    func_00029B58(0x1D, temp_s0_3, 0x78, 0x24, 0xF);
    func_00029B58(0x1E, temp_s0_3, 0x99, 0x1C, 0xE);
    func_00029B58(5, arg0 + 0x45, 0x1C, 8, 8);
    func_00029B58(5, arg0 + 0xF3, 0x1C, 8, 8);
    temp_s1_4 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_00029B58(6, arg0 + temp_s1_4 + 0x36, 0x1A, 0xE, 0xB);
    func_00029B58(7, (arg0 - temp_s1_4) + 0xFB, 0x1A, 0xE, 0xB);
    temp_s0_4 = arg0 + 0x79;
    func_00029B58(0x14, temp_s0_4, 0x35, 8, 0xA);
    func_00029B58(0x14, temp_s0_4, 0x56, 8, 0xA);
    temp_s0_5 = arg0 + 0x80;
    func_0002AB64(3, temp_s0_5, 0x35, *(void *)0x8007BA86, 0xA);
    func_0002AB64(3, temp_s0_5, 0x56, *(void *)0x8007BA8A, 0xA);
    temp_a1 = arg0 + 0x64;
    sp34 = temp_a1;
    func_0002AB64(3, temp_a1, 0x35, *(void *)0x8007BA84, 0xA);
    func_0002AB64(3, temp_a1, 0x56, *(void *)0x8007BA88, 0xA);
    func_0002AB64(3, temp_s0_5, 0x77, *(void *)0x8007BA8E, 0xA);
    func_0002AB64(3, temp_s0_5, 0x98, *(void *)0x8007BA8C, 0xA);
    temp_s0_6 = arg0 + 0xDA;
    func_0002AB64(3, temp_s0_6, 0x3B, (s32) (*(void *)0x8007BAA8 * 0x64) / (s32) ((*(void *)0x8007BAB0 * 2) + 0x80050000)->unk3ECC, 0xA);
    func_0002AB64(3, temp_s0_6, 0x5C, (s32) (*(void *)0x8007BAAA * 0x64) / (s32) (((*(void *)0x8007BAB1 * 2) + 0x80050000)->unk3ECC * 4), 0xA);
    func_0002AB64(3, temp_s0_6, 0x7D, (s32) (*(void *)0x8007BAAE * 0x64) / (s32) (((*(void *)0x8007BAB3 * 2) + 0x80050000)->unk3ECC * 2), 0xA);
    func_0002AB64(3, temp_s0_6, 0x9E, (s32) (*(void *)0x8007BAAC * 0x64) / (s32) ((*(void *)0x8007BAB2 * 2) + 0x80050000)->unk3ECC, 0xA);
    func_00029B58(0x33, temp_a1, 0x41, (s32) (((f32) (u32) *(void *)0x8007BA84 / (f32) (u32) *(void *)0x8007BA86) * 50.0f), 3);
    func_00029B58(0x33, temp_a1, 0x62, (s32) (((f32) (u32) *(void *)0x8007BA88 / (f32) (u32) *(void *)0x8007BA8A) * 50.0f), 3);
    temp_t2 = *(void *)0x8007BA8E;
    temp_f0 = (f32) temp_t2;
    phi_f0 = temp_f0;
    if ((s32) temp_t2 < 0) {
        phi_f0 = temp_f0 + 4294967296.0f;
    }
    func_00029B58(0x33, sp34, 0x83, (s32) ((phi_f0 / 255.0f) * 50.0f), 3);
    temp_t5 = *(void *)0x8007BA8C;
    temp_f0_2 = (f32) temp_t5;
    phi_f0_2 = temp_f0_2;
    if ((s32) temp_t5 < 0) {
        phi_f0_2 = temp_f0_2 + 4294967296.0f;
    }
    func_00029B58(0x33, sp34, 0xA4, (s32) ((phi_f0_2 / 255.0f) * 50.0f), 3);
    temp_s0_7 = arg0 + 0xF6;
    func_00029B58(0x15, temp_s0_7, 0x3B, 8, 0xA);
    func_00029B58(0x15, temp_s0_7, 0x5C, 8, 0xA);
    func_00029B58(0x15, temp_s0_7, 0x7D, 8, 0xA);
    func_00029B58(0x15, temp_s0_7, 0x9E, 8, 0xA);
    func_00029B58(0x1A, arg0 + 0x87, 0x19, 0x34, 0x12);
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0_3 = *(void *)0x80092871;
        if ((s32) temp_v0_3 >= 0x15) {
block_13:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_000268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1 = *(void *)0x80092876;
        if ((temp_v1 & 0x10) != 0) {
            goto block_13;
        }
        if (((s32) temp_v0_3 < -0x14) || (phi_return = temp_v0_3, ((temp_v1 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_000268D4(0, 0, 0xFF, temp_a3);
        }
    }
    return phi_return;
}

