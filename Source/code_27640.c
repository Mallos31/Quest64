void func_80026A40(void) {
    *(void *)0x8008FD0C = (u16)0x8000;
    *(void *)0x8008FD20 = (u16)0;
    *(void *)0x8008FD03 = (u8)3;
    *(void *)0x8008FD02 = (u8)2;
    *(void *)0x8008FD01 = (u8)1;
    *(void *)0x8008FD00 = (u8)0;
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void *func_80026A7C(s32 arg0) {
    s32 temp_t4;
    s32 temp_t8;
    u16 temp_a2;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    u16 phi_v1;
    void *phi_t1;
    void *phi_t1_2;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x6000000;
    temp_v0->unk4 = 0x8005FAA0;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x8000;
    temp_v0_2->unk0 = 0xBA000E02;
    func_8002A668((void *)0x8007B2FC);
    temp_v1 = *(void *)0x8008FD0C;
    *(void *)0x8008FD10 = (s32) (*(void *)0x8008FD10 + 1);
    if ((temp_v1 & 0x4000) != 0) {
        func_8002B57C();
block_13:
        phi_v1 = (void *)0x80090000->unk-2F4;
    } else {
        temp_t8 = temp_v1 & 3;
        if ((temp_v1 & 0x2000) != 0) {
            func_80026D1C();
            goto block_13;
        } else {
            if (temp_t8 != 0) {
                if (temp_t8 != 1) {
                    if (temp_t8 != 2) {
                        if (temp_t8 != 3) {
                            phi_v1 = temp_v1;
                            phi_t1 = (void *)0x8008FD0C;
                        } else {
                            func_80029448(0);
                            goto block_13;
                        }
                    } else {
                        func_80028624(0);
                        goto block_13;
                    }
                } else {
                    func_800278B0(0);
                    goto block_13;
                }
            } else {
                func_80026F34(0);
                goto block_13;
            }
        }
    }
    *phi_t1 = (u16) (phi_v1 & 0xFFEF);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xBA000E02;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 1;
    temp_v0_4->unk0 = 0xF9000000;
    temp_a2 = *(void *)0x80092876;
    if (((temp_a2 & 0x4000) != 0) || (phi_t1_2 = phi_t1, phi_return = temp_v0_4, ((temp_a2 & 0x1000) != 0))) {
        temp_v1_2 = *phi_t1;
        phi_t1_2 = phi_t1;
        phi_return = temp_v0_4;
        if ((temp_v1_2 & 0x4000) == 0) {
            *phi_t1 = (u16) (temp_v1_2 & 0x7FFF);
            phi_t1_2 = (void *)0x8008FD0C;
            phi_return = func_800268D4(0, 1, 0xFF, 1);
        }
    } else {

    }
    temp_v1_3 = *phi_t1_2;
    if ((temp_v1_3 & 0x8000) == 0) {
        if ((temp_v1_3 & 0x4000) != 0) {
            temp_t4 = temp_v1_3 & 0xC;
            if (temp_t4 != 0) {
                if (temp_t4 != 4) {
                    if (temp_t4 != 8) {

                    } else {
                        *(void *)0x8007B2E0 = (u16)3;
                    }
                } else {
block_29:
                    (void *)0x80080000->unk-4D20 = (u16)1;
                }
            } else {
                if ((*(void *)0x8008FD20 & 0x80) != 0) {
                    *(void *)0x8007B2E0 = (u16)1;
                    *(void *)0x8008FD0E = (u8)1;
                } else {
                    *(void *)0x8007B2E0 = (u16)3;
                    *(void *)0x8008FD0E = (u8)0;
                }
            }
        } else {
            goto block_29;
        }
        phi_return = func_80026A40((u16)1);
    }
    return phi_return;
}

s32 func_80026D1C(void) {
    s32 sp2C;
    s32 sp28;
    void *sp20;
    s32 temp_t0;
    s32 temp_t4;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_a0;
    u16 temp_t0_2;
    u16 temp_t3;
    u16 temp_t5;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *phi_a1;
    void *phi_a2;
    s32 phi_v0;
    s32 phi_return;

    temp_a0 = *(void *)0x8008FD0C;
    sp28 = 0;
    if ((temp_a0 & 0x1000) != 0) {
        *(void *)0x8008FD04 = (s32) (*(void *)0x8008FD04 + 8);
        temp_t0 = *(void *)0x8008FD08 + 8;
        *(void *)0x8008FD08 = temp_t0;
        phi_a1 = (void *)0x8008FD08;
        phi_a2 = (void *)0x8008FD04;
        if (temp_t0 == 0) {
            sp28 = -1;
            phi_a1 = (void *)0x8008FD08;
            phi_a2 = (void *)0x8008FD04;
        }
    } else {
        temp_t4 = *(void *)0x8008FD04 - 8;
        *(void *)0x8008FD04 = temp_t4;
        *(void *)0x8008FD08 = (s32) (*(void *)0x8008FD08 - 8);
        phi_a1 = (void *)0x8008FD04;
        phi_a2 = (void *)0x8008FD08;
        if (temp_t4 == 0) {
            sp28 = 1;
            phi_a1 = (void *)0x8008FD04;
            phi_a2 = (void *)0x8008FD08;
        }
    }
    temp_v0 = temp_a0 & 3;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                if (temp_v0 != 3) {
                    phi_v0 = temp_v0;
                    phi_return = temp_v0;
                } else {
                    sp20 = phi_a1;
                    sp2C = temp_v0;
                    func_80029448(*phi_a2, phi_a1, phi_a2);
                    temp_a1 = phi_a1;
                    if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                        func_80028624(*temp_a1, temp_a1);
                    } else {
                        func_80026F34(*temp_a1, temp_a1);
                    }
block_25:
                    phi_v0 = sp2C;
                    phi_return = sp2C;
                }
            } else {
                sp20 = phi_a1;
                sp2C = temp_v0;
                func_80028624(*phi_a2, phi_a1, phi_a2);
                temp_a1_2 = phi_a1;
                if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                    func_800278B0(*temp_a1_2, temp_a1_2);
                } else {
                    func_80029448(*temp_a1_2, temp_a1_2);
                }
                goto block_25;
            }
        } else {
            sp20 = phi_a1;
            sp2C = temp_v0;
            func_800278B0(*phi_a2, phi_a1, phi_a2);
            temp_a1_3 = phi_a1;
            if ((*(void *)0x8008FD0C & 0x1000) != 0) {
                func_80026F34(*temp_a1_3, temp_a1_3);
            } else {
                func_80028624(*temp_a1_3, temp_a1_3);
            }
            goto block_25;
        }
    } else {
        sp20 = phi_a1;
        sp2C = temp_v0;
        func_80026F34(*phi_a2, phi_a1, phi_a2);
        temp_a1_4 = phi_a1;
        if ((*(void *)0x8008FD0C & 0x1000) != 0) {
            func_80029448(*temp_a1_4, temp_a1_4);
        } else {
            func_800278B0(*temp_a1_4, temp_a1_4);
        }
        goto block_25;
    }
    if (sp28 != 0) {
        temp_t0_2 = *(void *)0x8008FD0C & 0xDFFF;
        temp_t3 = temp_t0_2 & 0xEFFF;
        *(void *)0x8008FD0C = temp_t0_2;
        temp_t5 = temp_t3 & 0xFFFC;
        temp_v0_2 = phi_v0 + sp28;
        *(void *)0x8008FD0C = temp_t3;
        *(void *)0x8008FD0C = temp_t5;
        *(void *)0x8008FD0C = (u16) (temp_t5 | (temp_v0_2 & 3));
        phi_return = temp_v0_2;
    }
    return phi_return;
}

s8 func_80026F34(s32 arg0) {
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
    func_80029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0x98);
    func_80029B58(0x37, arg0 + 0x2B, 0xB7, 0xF0, 3);
    func_80029B58(0x37, arg0 + 0x119, 0x24, 2, 0x96);
    temp_s0 = arg0 + 0x27;
    func_80029B58(0x37, temp_s0, 0x1D, 0xF2, 1);
    func_80029B58(0x37, temp_s0, 0xB6, 0xF2, 1);
    func_80029B58(0x37, temp_s0, 0x1D, 1, 0x9A);
    func_80029B58(0x37, arg0 + 0x118, 0x1D, 1, 0x9A);
    temp_s0_2 = arg0 + 0x29;
    func_80029B58(0x38, temp_s0_2, 0x1F, 0xED, 1);
    func_80029B58(0x38, temp_s0_2, 0x1F, 1, 0x95);
    func_80029B58(0x39, temp_s0_2, 0xB4, 0xEE, 1);
    func_80029B58(0x39, arg0 + 0x116, 0x1F, 1, 0x96);
    func_80029B58(0x3C, arg0 + 0x3A, 0x1E, 0x15, 0x98);
    sp38 = arg0 + 0x5D;
    phi_s0 = 0x4B;
    phi_s1 = 0;
loop_1:
    func_80029B58(0x3D, sp38, phi_s0, 0xA7, 2);
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
    func_80029B58(0x32, sp38, phi_s0_2, 0x3C, 7);
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
    func_80029B58(0x20, sp38, phi_s0_3, 0x13, 0xB);
    temp_s1_3 = phi_s1_3 + 1;
    phi_s0_3 = phi_s0_3 + 0x21;
    phi_s1_3 = temp_s1_3;
    if (temp_s1_3 < 4) {
        goto loop_5;
    }
    func_80029B58(0x1B, arg0 + 0x38, 0x34, 0x18, 0xE);
    func_80029B58(0x1C, arg0 + 0x37, 0x54, 0x1C, 0xD);
    temp_s0_3 = arg0 + 0x35;
    func_80029B58(0x1D, temp_s0_3, 0x78, 0x24, 0xF);
    func_80029B58(0x1E, temp_s0_3, 0x99, 0x1C, 0xE);
    func_80029B58(5, arg0 + 0x45, 0x1C, 8, 8);
    func_80029B58(5, arg0 + 0xF3, 0x1C, 8, 8);
    temp_s1_4 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_80029B58(6, (arg0 + temp_s1_4) + 0x36, 0x1A, 0xE, 0xB);
    func_80029B58(7, (arg0 - temp_s1_4) + 0xFB, 0x1A, 0xE, 0xB);
    temp_s0_4 = arg0 + 0x79;
    func_80029B58(0x14, temp_s0_4, 0x35, 8, 0xA);
    func_80029B58(0x14, temp_s0_4, 0x56, 8, 0xA);
    temp_s0_5 = arg0 + 0x80;
    func_8002AB64(3, temp_s0_5, 0x35, *(void *)0x8007BA86, 0xA);
    func_8002AB64(3, temp_s0_5, 0x56, *(void *)0x8007BA8A, 0xA);
    temp_a1 = arg0 + 0x64;
    sp34 = temp_a1;
    func_8002AB64(3, temp_a1, 0x35, *(void *)0x8007BA84, 0xA);
    func_8002AB64(3, temp_a1, 0x56, *(void *)0x8007BA88, 0xA);
    func_8002AB64(3, temp_s0_5, 0x77, *(void *)0x8007BA8E, 0xA);
    func_8002AB64(3, temp_s0_5, 0x98, *(void *)0x8007BA8C, 0xA);
    temp_s0_6 = arg0 + 0xDA;
    func_8002AB64(3, temp_s0_6, 0x3B, (s32) (*(void *)0x8007BAA8 * 0x64) / (s32) ((*(void *)0x8007BAB0 * 2) + 0x80050000)->unk3ECC, 0xA);
    func_8002AB64(3, temp_s0_6, 0x5C, (s32) (*(void *)0x8007BAAA * 0x64) / (s32) (((*(void *)0x8007BAB1 * 2) + 0x80050000)->unk3ECC * 4), 0xA);
    func_8002AB64(3, temp_s0_6, 0x7D, (s32) (*(void *)0x8007BAAE * 0x64) / (s32) (((*(void *)0x8007BAB3 * 2) + 0x80050000)->unk3ECC * 2), 0xA);
    func_8002AB64(3, temp_s0_6, 0x9E, (s32) (*(void *)0x8007BAAC * 0x64) / (s32) ((*(void *)0x8007BAB2 * 2) + 0x80050000)->unk3ECC, 0xA);
    func_80029B58(0x33, temp_a1, 0x41, (s32) (((f32) (u32) *(void *)0x8007BA84 / (f32) (u32) *(void *)0x8007BA86) * 50.0f), 3);
    func_80029B58(0x33, temp_a1, 0x62, (s32) (((f32) (u32) *(void *)0x8007BA88 / (f32) (u32) *(void *)0x8007BA8A) * 50.0f), 3);
    temp_t2 = *(void *)0x8007BA8E;
    temp_f0 = (f32) temp_t2;
    phi_f0 = temp_f0;
    if ((s32) temp_t2 < 0) {
        phi_f0 = temp_f0 + 4294967296.0f;
    }
    func_80029B58(0x33, sp34, 0x83, (s32) ((phi_f0 / 255.0f) * 50.0f), 3);
    temp_t5 = *(void *)0x8007BA8C;
    temp_f0_2 = (f32) temp_t5;
    phi_f0_2 = temp_f0_2;
    if ((s32) temp_t5 < 0) {
        phi_f0_2 = temp_f0_2 + 4294967296.0f;
    }
    func_80029B58(0x33, sp34, 0xA4, (s32) ((phi_f0_2 / 255.0f) * 50.0f), 3);
    temp_s0_7 = arg0 + 0xF6;
    func_80029B58(0x15, temp_s0_7, 0x3B, 8, 0xA);
    func_80029B58(0x15, temp_s0_7, 0x5C, 8, 0xA);
    func_80029B58(0x15, temp_s0_7, 0x7D, 8, 0xA);
    func_80029B58(0x15, temp_s0_7, 0x9E, 8, 0xA);
    func_80029B58(0x1A, arg0 + 0x87, 0x19, 0x34, 0x12);
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0_3 = *(void *)0x80092871;
        if ((s32) temp_v0_3 >= 0x15) {
block_13:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_800268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1 = *(void *)0x80092876;
        if ((temp_v1 & 0x10) != 0) {
            goto block_13;
        }
        if (((s32) temp_v0_3 < -0x14) || (phi_return = temp_v0_3, ((temp_v1 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_800268D4(0, 0, 0xFF, temp_a3);
        } else {

        }
    }
    return phi_return;
}

void *func_800278B0(s32 arg0) {
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    ? sp38;
    s32 sp30;
    s32 sp2C;
    s16 temp_t2_4;
    s16 temp_t2_5;
    s16 temp_t3_2;
    s16 temp_t4;
    s16 temp_t4_2;
    s16 temp_t4_3;
    s16 temp_t4_4;
    s16 temp_t5;
    s16 temp_t5_2;
    s16 temp_t5_3;
    s16 temp_t8_3;
    s16 temp_t8_4;
    s16 temp_t8_5;
    s16 temp_t9;
    s16 temp_t9_2;
    s16 temp_t9_3;
    s16 temp_v0_15;
    s16 temp_v0_16;
    s16 temp_v0_3;
    s16 temp_v0_5;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t6;
    s32 temp_v0;
    s8 temp_t1;
    s8 temp_t1_2;
    s8 temp_v0_10;
    s8 temp_v0_11;
    s8 temp_v0_12;
    s8 temp_v0_13;
    s8 temp_v0_14;
    s8 temp_v0_2;
    s8 temp_v0_4;
    s8 temp_v0_6;
    s8 temp_v0_7;
    s8 temp_v0_8;
    s8 temp_v0_9;
    u16 temp_a3;
    u16 temp_a3_2;
    u16 temp_a3_3;
    u16 temp_a3_4;
    u16 temp_a3_5;
    u16 temp_a3_6;
    u16 temp_a3_7;
    u16 temp_a3_8;
    u16 temp_a3_9;
    u16 temp_t8;
    u16 temp_v1_5;
    u8 temp_t3;
    u8 temp_t8_2;
    void *temp_at;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    u16 phi_a3;
    void *phi_t0;
    u16 phi_v1;
    void *phi_t0_2;
    s32 phi_a0;
    u16 phi_a3_2;
    void *phi_t0_3;
    s32 phi_t1;
    s32 phi_t2;
    s32 phi_a0_2;
    u16 phi_a3_3;
    void *phi_t0_4;
    s32 phi_a1;
    s32 phi_a1_2;
    s32 phi_t1_2;
    u16 phi_a3_4;
    void *phi_t0_5;
    void *phi_t0_6;

    sp38 = (first 3 bytes) *(void *)0x8005F8F0;
    *(void *)0x8005FA00 = (s8) (4 - *(void *)0x8005FA00);
    func_80029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0x6C);
    func_80029B58(0x37, arg0 + 0x2B, 0x8B, 0xF0, 3);
    func_80029B58(0x37, arg0 + 0x119, 0x24, 2, 0x68);
    temp_a1 = arg0 + 0x27;
    sp30 = temp_a1;
    func_80029B58(0x37, temp_a1, 0x1D, 0xF2, 1);
    func_80029B58(0x37, temp_a1, 0x8A, 0xF2, 1);
    func_80029B58(0x37, temp_a1, 0x1E, 1, 0x6D);
    func_80029B58(0x37, arg0 + 0x118, 0x1E, 1, 0x6D);
    temp_a1_2 = arg0 + 0x29;
    sp30 = temp_a1_2;
    func_80029B58(0x38, temp_a1_2, 0x1F, 0xED, 1);
    func_80029B58(0x38, temp_a1_2, 0x20, 1, 0x68);
    func_80029B58(0x39, temp_a1_2, 0x88, 0xEE, 1);
    func_80029B58(0x39, arg0 + 0x116, 0x1F, 1, 0x69);
    func_80029B58(0x3C, arg0 + 0x3A, 0x1E, 0x15, 0x6C);
    func_80029B58(0x3D, arg0 + 0x5D, 0x56, 0xA7, 2);
    temp_a1_3 = arg0 + 0x8D;
    sp30 = temp_a1_3;
    func_80029B58(0x24, temp_a1_3, 0x3E, 0x54, 7);
    func_80029B58(0x24, temp_a1_3, 0x6C, 0x54, 7);
    temp_a1_4 = arg0 + 0xEA;
    sp30 = temp_a1_4;
    func_80029B58(0x29, temp_a1_4, 0x3A, 0x18, 8);
    temp_a1_5 = arg0 + 0x6C;
    sp2C = temp_a1_5;
    func_80029B58(0x2A, temp_a1_5, 0x3D, 0x14, 0xB);
    func_80029B58(0x29, temp_a1_4, 0x6B, 0x18, 8);
    func_80029B58(0x2A, temp_a1_5, 0x68, 0x14, 0xB);
    func_80029B58(0x22, arg0 + 0x31, 0x3B, 0x34, 0xC);
    func_80029B58(0x23, arg0 + 0x35, 0x65, 0x2C, 0x10);
    func_80029B58(5, arg0 + 0x45, 0x1C, 7, 7);
    func_80029B58(5, arg0 + 0xF3, 0x1C, 7, 7);
    temp_t1 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    sp44 = (s32) temp_t1;
    func_80029B58(6, (arg0 + temp_t1) + 0x36, 0x1A, 0xE, 0xB);
    func_80029B58(7, (arg0 - temp_t1) + 0xFB, 0x1A, 0xE, 0xB);
    func_80029B58(0x21, arg0 + 0x77, 0x1A, 0x50, 0x10);
    temp_a1_6 = arg0 + 0x8E;
    sp30 = temp_a1_6;
    func_80029B58(0x25, temp_a1_6, 0x3F, 0x50, 3);
    func_80029B58(0x25, temp_a1_6, 0x6D, 0x50, 3);
    temp_a1_7 = arg0 + 0xB3;
    sp30 = temp_a1_7;
    func_80029B58(0x27, temp_a1_7, 0x39, 8, 0xB);
    func_80029B58(0x27, temp_a1_7, 0x67, 8, 0xB);
    temp_a3 = *(void *)0x8008FD0C;
    if ((temp_a3 & 0x200) != 0) {
        temp_v0 = temp_a3 & 0x100;
        if (temp_v0 != 0) {
            if (temp_v0 != 0x100) {
                phi_a3 = temp_a3;
                phi_t0 = (void *)0x8008FD0C;
            } else {
                temp_v1 = (*(void *)0x8005FA00 * 4) + 0x8005F8F4;
                func_80029B58((sp + temp_v1->unk2)->unk38, temp_v1->unk0 + arg0, 0x39, 8, 0xB);
block_7:
                phi_a3 = *(void *)0x8008FD0C;
                phi_t0 = (void *)0x8008FD0C;
            }
        } else {
            temp_v1_2 = (*(void *)0x8005F010 * 4) + 0x8005F914;
            func_80029B58((sp + temp_v1_2->unk2)->unk38, temp_v1_2->unk0 + arg0, 0x67, 8, 0xB);
            goto block_7;
        }
    } else {
        temp_v1_3 = (*(void *)0x8005F010 * 4) + 0x8005F914;
        func_80029B58((sp + temp_v1_3->unk2)->unk38, temp_v1_3->unk0 + arg0, 0x67, 8, 0xB);
        temp_v1_4 = (*(void *)0x8005FA00 * 4) + 0x8005F8F4;
        func_80029B58((sp + temp_v1_4->unk2)->unk38, temp_v1_4->unk0 + arg0, 0x39, 8, 0xB);
        goto block_7;
    }
    if ((phi_a3 & 0x2000) != 0) {
        *(void *)0x8005FA00 = (s8) (4 - *(void *)0x8005FA00);
        return (void *)0x8005FA00;
    }
    if ((phi_a3 & 0x800) == 0) {
        temp_v0_2 = *(void *)0x80092871;
        if (((s32) temp_v0_2 >= 0x15) || (temp_v1_5 = *(void *)0x80092876, ((temp_v1_5 & 0x10) != 0))) {
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *phi_t0 = (s16) (phi_a3 | 0x2000);
            func_800268D4(0, 0, 0xFF, phi_a3);
block_17:
            phi_t0_2 = 0x80090000 - 0x2F4;
        } else {
            if (((s32) temp_v0_2 < -0x14) || (phi_v1 = temp_v1_5, phi_t0_2 = phi_t0, ((temp_v1_5 & 0x2000) != 0))) {
                *(void *)0x8008FD04 = 0;
                *(void *)0x8008FD08 = -0x140;
                *phi_t0 = (s16) (phi_a3 | 0x3000);
                func_800268D4(0, 0, 0xFF, phi_a3);
                goto block_17;
            } else {

            }
        }
        if ((phi_v1 & 0x8000) != 0) {
            temp_t8 = *phi_t0_2 | 0x800;
            *phi_t0_2 = temp_t8;
            *phi_t0_2 = temp_t8;
            func_800268D4(0, 1, 0xFF);
        }
    } else {
        temp_a0 = phi_a3 & 0x200;
        if ((*(void *)0x80092876 & 0x8000) != 0) {
            temp_t5 = phi_a3 & 0xFEFF;
            if (temp_a0 == 0) {
                *phi_t0 = temp_t5;
                *phi_t0 = (s16) (temp_t5 & 0xF7FF);
                func_800268D4(0, 2, 0xFF, phi_a3);
                *(void *)0x8005FA00 = (s8) (4 - *(void *)0x8005FA00);
                return (void *)0x8005FA00;
            }
        }
        temp_t6 = phi_a3 & 0x100;
        temp_at = (((s32) *(void *)0x8008FD10 >> 1) & 0xF) + 0x80060000;
        sp40 = temp_t6;
        temp_t1_2 = temp_at->unk-F40;
        phi_a0 = temp_a0;
        phi_a3_2 = phi_a3;
        phi_t0_3 = phi_t0;
        phi_t1 = (s32) temp_t1_2;
        if (temp_a0 != 0) {
            if (temp_t6 != 0) {
                if (temp_t6 != 0x100) {
                    phi_a0 = temp_a0;
                    phi_a3_2 = phi_a3;
                    phi_t0_3 = phi_t0;
                    phi_t1 = (s32) temp_t1_2;
                } else {
                    temp_v1_6 = (*(void *)0x8005F010 * 4) + 0x8005F914;
                    temp_t2 = *(void *)0x8008FD14;
                    temp_v0_3 = temp_v1_6->unk0;
                    phi_a0 = temp_a0;
                    phi_a3_2 = phi_a3;
                    phi_t0_3 = phi_t0;
                    phi_t1 = (s32) temp_t1_2;
                    if (temp_t2 >= (s32) temp_v0_3) {
                        temp_t9 = phi_a3 & 0xFDFF;
                        phi_a0 = temp_a0;
                        phi_a3_2 = phi_a3;
                        phi_t0_3 = phi_t0;
                        phi_t1 = (s32) temp_t1_2;
                        if ((s32) temp_v0_3 >= temp_t2) {
                            *phi_t0 = temp_t9;
                            *phi_t0 = (s16) (temp_t9 & 0xFBFF);
                            temp_v0_4 = *(void *)0x80092871;
                            temp_t3 = (sp + temp_v1_6->unk2)->unk38;
                            sp40 = (s32) temp_t3;
                            phi_t0_6 = phi_t0;
                            if ((s32) temp_v0_4 < 0x14) {
                                phi_t0_6 = phi_t0;
                                if ((s32) temp_v0_4 >= -0x13) {
                                    *(void *)0x8008FD14 = temp_t2;
                                    sp44 = (s32) temp_t1_2;
                                    func_80029B58(temp_t3, temp_t2 + arg0, 0x67, 8, 0xB);
                                    phi_t0_6 = (void *)0x8008FD0C;
                                }
                            }
                            sp3C = 0x65;
                            sp40 = 0x100;
                            phi_a3_4 = *phi_t0_6;
                            phi_t0_3 = phi_t0_6;
block_39:
                            phi_a0 = phi_a3_4 & 0x200;
                            phi_a3_2 = phi_a3_4;
                        }
                    }
                }
            } else {
                temp_v1_7 = (*(void *)0x8005FA00 * 4) + 0x8005F8F4;
                temp_t2_2 = *(void *)0x8008FD14;
                temp_v0_5 = temp_v1_7->unk0;
                phi_a0 = temp_a0;
                phi_a3_2 = phi_a3;
                phi_t0_3 = phi_t0;
                phi_t1 = (s32) temp_t1_2;
                if (temp_t2_2 >= (s32) temp_v0_5) {
                    temp_t3_2 = phi_a3 & 0xFDFF;
                    phi_a0 = temp_a0;
                    phi_a3_2 = phi_a3;
                    phi_t0_3 = phi_t0;
                    phi_t1 = (s32) temp_t1_2;
                    if ((s32) temp_v0_5 >= temp_t2_2) {
                        *phi_t0 = temp_t3_2;
                        *phi_t0 = (s16) (temp_t3_2 & 0xFBFF);
                        temp_v0_6 = *(void *)0x80092871;
                        temp_t8_2 = (sp + temp_v1_7->unk2)->unk38;
                        sp40 = (s32) temp_t8_2;
                        phi_t0_5 = phi_t0;
                        if ((s32) temp_v0_6 < 0x14) {
                            phi_t0_5 = phi_t0;
                            if ((s32) temp_v0_6 >= -0x13) {
                                *(void *)0x8008FD14 = temp_t2_2;
                                sp44 = (s32) temp_t1_2;
                                func_80029B58(temp_t8_2, temp_t2_2 + arg0, 0x39, 8, 0xB);
                                phi_t0_5 = (void *)0x8008FD0C;
                            }
                        }
                        sp3C = 0x3A;
                        sp40 = 0;
                        phi_a3_4 = *phi_t0_5;
                        phi_t0_3 = phi_t0_5;
                        goto block_39;
                    }
                }
            }
        }
        temp_t2_3 = *(void *)0x8008FD14;
        phi_t2 = temp_t2_3;
        phi_a0_2 = phi_a0;
        phi_a3_3 = phi_a3_2;
        phi_t0_4 = phi_t0_3;
        if (phi_a0 == 0) {
            if (sp40 != 0) {
                if (sp40 != 0x100) {
                    phi_t2 = temp_t2_3;
                    phi_a0_2 = phi_a0;
                    phi_a3_3 = phi_a3_2;
                    phi_t0_4 = phi_t0_3;
                } else {
                    temp_v0_7 = *(void *)0x80092872;
                    sp3C = 0x65;
                    if (((s32) temp_v0_7 < -0x1E) || ((s32) temp_v0_7 >= 0x1F)) {
                        temp_t5_3 = phi_a3_2 & 0xFEFF;
                        phi_t2 = temp_t2_3;
                        phi_a0_2 = phi_a0;
                        phi_a3_3 = phi_a3_2;
                        phi_t0_4 = phi_t0_3;
                        if ((phi_a3_2 & 0x400) == 0) {
                            *phi_t0_3 = temp_t5_3;
                            *phi_t0_3 = temp_t5_3;
                            *phi_t0_3 = (s16) (temp_t5_3 | 0x400);
                            sp44 = phi_t1;
                            func_800268D4(0, 0, 0xFF, phi_a3_2);
                            temp_a3_5 = *(void *)0x8008FD0C;
                            phi_t2 = *(void *)0x8008FD14;
                            phi_a0_2 = temp_a3_5 & 0x200;
                            phi_a3_3 = temp_a3_5;
                            phi_t0_4 = (void *)0x8008FD0C;
                        }
                    } else {
                        temp_v0_8 = *(void *)0x80092871;
                        if ((s32) temp_v0_8 < -0x14) {
                            phi_t2 = temp_t2_3;
                            phi_a0_2 = phi_a0;
                            phi_a3_3 = phi_a3_2;
                            phi_t0_4 = phi_t0_3;
                            if ((phi_a3_2 & 0x400) == 0) {
                                temp_v0_9 = *(void *)0x8005F010;
                                *(void *)0x8005F010 = (s8) (temp_v0_9 - 1);
                                if ((s32) *(void *)0x8005F010 < 0) {
                                    *(void *)0x8005F010 = (u8)0;
                                }
                                temp_t5_2 = phi_a3_2 | 0x400;
                                temp_t4 = temp_t5_2 | 0x200;
                                *phi_t0_3 = temp_t5_2;
                                temp_a3_2 = temp_t4 & 0xFFFF;
                                *phi_t0_3 = temp_t4;
                                phi_t2 = (s32) ((temp_v0_9 * 4) + 0x80060000)->unk-6EC;
                                phi_a0_2 = temp_a3_2 & 0x200;
                                phi_a3_3 = temp_a3_2;
                                phi_t0_4 = phi_t0_3;
                            }
                        } else {
                            if ((s32) temp_v0_8 >= 0x15) {
                                phi_t2 = temp_t2_3;
                                phi_a0_2 = phi_a0;
                                phi_a3_3 = phi_a3_2;
                                if ((phi_a3_2 & 0x400) == 0) {
                                    temp_v0_10 = *(void *)0x8005F010;
                                    temp_t4_2 = phi_a3_2 | 0x400;
                                    temp_t2_4 = ((temp_v0_10 * 4) + 0x80060000)->unk-6EC;
                                    *(void *)0x8005F010 = (s8) (temp_v0_10 + 1);
                                    temp_t8_3 = temp_t4_2 | 0x200;
                                    temp_a3_3 = temp_t8_3 & 0xFFFF;
                                    if ((s32) *(void *)0x8005F010 >= 5) {
                                        *(void *)0x8005F010 = (u8)4;
                                    }
                                    *phi_t0_3 = temp_t4_2;
                                    *phi_t0_3 = temp_t8_3;
                                    phi_t2 = (s32) temp_t2_4;
                                    phi_a0_2 = temp_a3_3 & 0x200;
                                    phi_a3_3 = temp_a3_3;
                                }
                                phi_t0_4 = phi_t0_3;
                            } else {
                                temp_t9_2 = phi_a3_2 & 0xFBFF;
                                temp_a3_4 = temp_t9_2 & 0xFFFF;
                                *phi_t0_3 = temp_t9_2;
                                phi_t2 = temp_t2_3;
                                phi_a0_2 = temp_a3_4 & 0x200;
                                phi_a3_3 = temp_a3_4;
                                phi_t0_4 = phi_t0_3;
                            }
                        }
                    }
                }
            } else {
                temp_v0_11 = *(void *)0x80092872;
                sp3C = 0x3A;
                if (((s32) temp_v0_11 < -0x1E) || ((s32) temp_v0_11 >= 0x1F)) {
                    temp_t4_4 = phi_a3_2 & 0xFEFF;
                    phi_t2 = temp_t2_3;
                    phi_a0_2 = phi_a0;
                    phi_a3_3 = phi_a3_2;
                    phi_t0_4 = phi_t0_3;
                    if ((phi_a3_2 & 0x400) == 0) {
                        temp_t9_3 = temp_t4_4 | 0x100;
                        *phi_t0_3 = temp_t4_4;
                        *phi_t0_3 = temp_t9_3;
                        *phi_t0_3 = (s16) (temp_t9_3 | 0x400);
                        sp44 = phi_t1;
                        func_800268D4(0, 0, 0xFF, phi_a3_2);
                        temp_a3_9 = *(void *)0x8008FD0C;
                        phi_t2 = *(void *)0x8008FD14;
                        phi_a0_2 = temp_a3_9 & 0x200;
                        phi_a3_3 = temp_a3_9;
                        phi_t0_4 = (void *)0x8008FD0C;
                    }
                } else {
                    temp_v0_12 = *(void *)0x80092871;
                    if ((s32) temp_v0_12 < -0x14) {
                        phi_t2 = temp_t2_3;
                        phi_a0_2 = phi_a0;
                        phi_a3_3 = phi_a3_2;
                        phi_t0_4 = phi_t0_3;
                        if ((phi_a3_2 & 0x400) == 0) {
                            temp_v0_13 = *(void *)0x8005FA00;
                            *(void *)0x8005FA00 = (s8) (temp_v0_13 - 1);
                            if ((s32) *(void *)0x8005FA00 < 0) {
                                *(void *)0x8005FA00 = (u8)0;
                            }
                            temp_t8_4 = phi_a3_2 | 0x600;
                            temp_a3_6 = temp_t8_4 & 0xFFFF;
                            *phi_t0_3 = temp_t8_4;
                            phi_t2 = (s32) ((temp_v0_13 * 4) + 0x80060000)->unk-70C;
                            phi_a0_2 = temp_a3_6 & 0x200;
                            phi_a3_3 = temp_a3_6;
                            phi_t0_4 = phi_t0_3;
                        }
                    } else {
                        if ((s32) temp_v0_12 >= 0x15) {
                            phi_t2 = temp_t2_3;
                            phi_a0_2 = phi_a0;
                            phi_a3_3 = phi_a3_2;
                            if ((phi_a3_2 & 0x400) == 0) {
                                temp_v0_14 = *(void *)0x8005FA00;
                                temp_t4_3 = phi_a3_2 | 0x600;
                                temp_t2_5 = ((temp_v0_14 * 4) + 0x80060000)->unk-70C;
                                *(void *)0x8005FA00 = (s8) (temp_v0_14 + 1);
                                temp_a3_7 = temp_t4_3 & 0xFFFF;
                                if ((s32) *(void *)0x8005FA00 >= 5) {
                                    *(void *)0x8005FA00 = (u8)4;
                                }
                                *phi_t0_3 = temp_t4_3;
                                phi_t2 = (s32) temp_t2_5;
                                phi_a0_2 = temp_a3_7 & 0x200;
                                phi_a3_3 = temp_a3_7;
                            }
                            phi_t0_4 = phi_t0_3;
                        } else {
                            temp_t8_5 = phi_a3_2 & 0xFBFF;
                            temp_a3_8 = temp_t8_5 & 0xFFFF;
                            *phi_t0_3 = temp_t8_5;
                            phi_t2 = temp_t2_3;
                            phi_a0_2 = temp_a3_8 & 0x200;
                            phi_a3_3 = temp_a3_8;
                            phi_t0_4 = phi_t0_3;
                        }
                    }
                }
            }
        }
        *(void *)0x8008FD14 = phi_t2;
        phi_t1_2 = phi_t1;
        if (phi_a0_2 != 0) {
            if (sp40 != 0) {
                if (sp40 != 0x100) {
                    *(void *)0x8008FD14 = phi_t2;
                    phi_t1_2 = phi_t1;
                } else {
                    temp_v1_8 = (*(void *)0x8005F010 * 4) + 0x8005F914;
                    temp_v0_15 = temp_v1_8->unk0;
                    sp3C = 0x65;
                    temp_a1_8 = phi_t2 + arg0;
                    if (phi_t2 < (s32) temp_v0_15) {
                        *(void *)0x8008FD14 = (s32) (phi_t2 + 1);
                        sp40 = (s32) (sp + temp_v1_8->unk-2)->unk38;
                        phi_a1 = temp_a1_8 + 1;
                    } else {
                        if ((s32) temp_v0_15 < phi_t2) {
                            *(void *)0x8008FD14 = (s32) (phi_t2 - 1);
                            sp40 = (s32) (sp + temp_v1_8->unk6)->unk38;
                            phi_a1 = temp_a1_8 - 1;
                        } else {
                            *(void *)0x8008FD14 = phi_t2;
                            *phi_t0_4 = (s16) (phi_a3_3 & 0xFBFF);
                            sp40 = (s32) (sp + temp_v1_8->unk2)->unk38;
                            phi_a1 = temp_a1_8;
                        }
                    }
                    sp44 = phi_t1;
                    func_80029B58(sp40, phi_a1, 0x67, 8, 0xB);
block_92:
                    phi_t1_2 = sp44;
                }
            } else {
                temp_v1_9 = (*(void *)0x8005FA00 * 4) + 0x8005F8F4;
                temp_v0_16 = temp_v1_9->unk0;
                sp3C = 0x3A;
                temp_a1_9 = phi_t2 + arg0;
                if (phi_t2 < (s32) temp_v0_16) {
                    *(void *)0x8008FD14 = (s32) (phi_t2 + 1);
                    sp40 = (s32) (sp + temp_v1_9->unk-2)->unk38;
                    phi_a1_2 = temp_a1_9 + 1;
                } else {
                    if ((s32) temp_v0_16 < phi_t2) {
                        *(void *)0x8008FD14 = (s32) (phi_t2 - 1);
                        sp40 = (s32) (sp + temp_v1_9->unk6)->unk38;
                        phi_a1_2 = temp_a1_9 - 1;
                    } else {
                        *(void *)0x8008FD14 = phi_t2;
                        *phi_t0_4 = (s16) (phi_a3_3 & 0xFBFF);
                        sp40 = (s32) (sp + temp_v1_9->unk2)->unk38;
                        phi_a1_2 = temp_a1_9;
                    }
                }
                sp44 = phi_t1;
                func_80029B58(sp40, phi_a1_2, 0x39, 8, 0xB);
                goto block_92;
            }
        }
        func_80029B58(1, (arg0 - phi_t1_2) + 0x1E, sp3C, 0x10, 0xD);
    }
    *(void *)0x8005FA00 = (s8) (4 - *(void *)0x8005FA00);
    return (void *)0x8005FA00;
}

s8 func_80028624(s32 arg0, s32 arg3) {
    s32 sp124;
    s32 sp11C;
    s32 sp4C;
    s32 sp44;
    s32 sp3C;
    s32 sp38;
    s16 temp_s3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t9;
    s32 temp_v0_51;
    s8 temp_s0_6;
    s8 temp_v0_53;
    s8 temp_v1;
    u16 temp_a3;
    u16 temp_v1_4;
    u8 temp_s2;
    u8 temp_t0_2;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_s0_5;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_28;
    void *temp_v0_29;
    void *temp_v0_2;
    void *temp_v0_30;
    void *temp_v0_31;
    void *temp_v0_32;
    void *temp_v0_33;
    void *temp_v0_34;
    void *temp_v0_35;
    void *temp_v0_36;
    void *temp_v0_37;
    void *temp_v0_38;
    void *temp_v0_39;
    void *temp_v0_3;
    void *temp_v0_40;
    void *temp_v0_41;
    void *temp_v0_42;
    void *temp_v0_43;
    void *temp_v0_44;
    void *temp_v0_45;
    void *temp_v0_46;
    void *temp_v0_47;
    void *temp_v0_48;
    void *temp_v0_49;
    void *temp_v0_4;
    void *temp_v0_50;
    void *temp_v0_52;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *temp_v1_2;
    void *temp_v1_3;
    s8 phi_v1;
    s8 phi_v1_2;
    void *phi_v0;
    s32 phi_s4;
    s32 phi_a3;
    s32 phi_v0_2;
    s32 phi_t0;
    s32 phi_s2;
    s32 phi_t0_2;
    s32 phi_t4;
    void *phi_t5;
    s32 phi_s2_2;
    s32 phi_s3;
    s32 phi_a0;
    u8 phi_t0_3;
    u8 phi_s2_3;
    u8 phi_t0_4;
    s32 phi_s5;
    s16 phi_t0_5;
    s16 phi_s2_4;
    s8 phi_return;
    void *phi_v0_3;
    void *phi_v0_4;
    s32 phi_s4_2;
    s32 phi_s2_5;
    u8 phi_s2_6;
    s32 phi_s5_2;
    s32 phi_s4_3;
    s32 phi_s5_3;

    sp11C = 0;
    phi_s4 = 0;
    phi_a3 = arg3;
    phi_s5 = -1;
    if (-8 != *(void *)0x8005F278) {
        phi_v1 = *(void *)0x8005F278;
        phi_v0_4 = (void *)0x8005F278;
        phi_s4_3 = 0;
        phi_s5_3 = -1;
loop_2:
        if (phi_v1 != -2) {
            if (phi_v1 != -1) {
                phi_v1_2 = phi_v1;
                phi_v0 = phi_v0_4;
                phi_s4_2 = phi_s4_3;
                phi_s5_2 = phi_s5_3;
            } else {
                phi_v0_3 = phi_v0_4 + 2;
                phi_s4_2 = phi_s4_3 + 1;
                phi_s5_2 = -1;
block_7:
                phi_v1_2 = *phi_v0_3;
                phi_v0 = phi_v0_3;
            }
        } else {
            phi_v0_3 = phi_v0_4 + 2;
            phi_s4_2 = phi_s4_3;
            phi_s5_2 = phi_s5_3 + 1;
            goto block_7;
        }
        if ((*(void *)0x80084EE4 != phi_v1_2) || (phi_s4 = phi_s4_2, phi_a3 = -1, phi_s5 = phi_s5_2, (*(void *)0x80084EE8 != phi_v0->unk1))) {
            temp_v1 = phi_v0->unk2;
            phi_v1 = temp_v1;
            phi_s4 = phi_s4_2;
            phi_a3 = -1;
            phi_s5 = phi_s5_2;
            phi_v0_4 = phi_v0 + 2;
            phi_s4_3 = phi_s4_2;
            phi_s5_3 = phi_s5_2;
            if (-8 != temp_v1) {
                goto loop_2;
            }
        } else {

        }
    }
    if (phi_s4 < 6) {
        if (phi_s4 != *(void *)0x8005F928) {
            temp_v0 = (((phi_s4 * 4) - phi_s4) * 4) + 0x8005F82C;
            temp_a0 = temp_v0->unk4;
            func_80024260(temp_a0, temp_v0->unk0, temp_v0->unk8 - temp_a0, phi_a3);
            *(void *)0x8005F928 = phi_s4;
        }
        temp_s0 = arg0 + 0x27;
        phi_v0_2 = temp_s0;
        phi_t0 = 0xF4;
        phi_s2_5 = 8;
        if (temp_s0 < 0) {
            temp_t7 = -temp_s0;
            if ((temp_s0 + 0xF4) < 0) {
                phi_v0_2 = temp_s0;
                phi_t0 = 0xF4;
                phi_s2_5 = 0;
            } else {
                sp11C = temp_t7;
                sp11C = temp_t7 << 5;
                phi_v0_2 = 0;
                phi_t0 = 0xF4 - temp_t7;
                phi_s2_5 = 8;
            }
        }
        if (phi_v0_2 >= 0x141) {
            phi_s2 = 0;
            phi_t0_2 = phi_t0;
        } else {
            phi_s2 = phi_s2_5;
            phi_t0_2 = phi_t0;
            if ((phi_v0_2 + phi_t0) >= 0x141) {
                sp11C = 0;
                phi_s2 = phi_s2_5;
                phi_t0_2 = ((phi_t0 - phi_v0_2) - phi_t0) + 0x140;
            }
        }
        sp124 = phi_v0_2;
        if (phi_s2 != 0) {
            temp_ra = phi_v0_2;
            temp_v0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
            temp_v0_2->unk4 = 0;
            temp_v0_2->unk0 = 0xE7000000;
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk0 = 0xFD100000;
            temp_v0_3->unk4 = (s32) ((phi_s4 * 4) + 0x80060000)->unk-A5C;
            temp_v0_4 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
            temp_v0_4->unk4 = 0;
            temp_v0_4->unk0 = 0xE8000000;
            temp_v0_5 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
            temp_v0_5->unk4 = 0x7000000;
            temp_v0_5->unk0 = 0xF5000100;
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0;
            temp_v0_6->unk0 = 0xE6000000;
            temp_v0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
            temp_v0_7->unk4 = 0x73FC000;
            temp_v0_7->unk0 = 0xF0000000;
            temp_v0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            sp38 = sp11C << 0x10;
            sp3C = ((temp_ra * 4) & 0xFFF) << 0xC;
            sp44 = ((((temp_ra + phi_t0_2) * 4) & 0xFFF) << 0xC) | 0xE4000000;
            phi_t4 = 0;
            phi_t5 = (((phi_s4 * 4) - phi_s4) << 5) + 0x8005F5BC;
            phi_s3 = 0x1D;
            phi_s2_2 = phi_s2;
loop_24:
            if (phi_t4 == 0x5C) {
                phi_s2_2 = 1;
            }
            temp_v0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
            temp_v0_9->unk0 = 0xFD4800F3;
            temp_v0_9->unk4 = (s32) *phi_t5;
            temp_v0_10 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
            temp_v0_10->unk4 = 0x7000000;
            temp_v0_10->unk0 = 0xF5483E00;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk4 = 0;
            temp_v0_11->unk0 = 0xE6000000;
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_t0 = ((phi_s2_2 - 1) * 4) & 0xFFF;
            temp_v0_12->unk4 = (s32) (temp_t0 | 0x73CC000);
            temp_v0_12->unk0 = 0xF4000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk4 = 0;
            temp_v0_13->unk0 = 0xE7000000;
            temp_v0_14 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xF5483E00;
            temp_v0_15 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk4 = (s32) (temp_t0 | 0x3CC000);
            temp_v0_15->unk0 = 0xF2000000;
            temp_v0_16 = *(void *)0x8007B2FC;
            temp_s0_2 = phi_s3 + phi_s2_2;
            *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
            temp_v0_16->unk0 = (s32) (sp44 | ((temp_s0_2 * 4) & 0xFFF));
            temp_v0_16->unk4 = (s32) (sp3C | ((phi_s3 * 4) & 0xFFF));
            temp_v0_17 = *(void *)0x8007B2FC;
            temp_t4 = phi_t4 + 4;
            *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
            temp_v0_17->unk0 = 0xB4000000;
            temp_v0_17->unk4 = sp38;
            temp_v0_18 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
            temp_v0_18->unk4 = 0x4000400;
            temp_v0_18->unk0 = 0xB3000000;
            temp_v0_19 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
            temp_v0_19->unk4 = 0;
            temp_v0_19->unk0 = 0xE7000000;
            phi_t4 = temp_t4;
            phi_t5 = phi_t5 + 4;
            phi_s3 = temp_s0_2;
            if (temp_t4 != 0x60) {
                goto loop_24;
            }
            func_8002DF6C();
        }
    } else {
        func_80029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0xB4);
        temp_s0_3 = arg0 + 0x29;
        func_80029B58(0x38, temp_s0_3, 0x1F, 0xED, 1);
        func_80029B58(0x38, temp_s0_3, 0x20, 1, 0xB1);
        func_80029B58(0x39, temp_s0_3, 0xD0, 0xEE, 1);
        func_80029B58(0x39, arg0 + 0x117, 0x1F, 1, 0xB2);
        func_80029B58(0x37, arg0 + 0x2C, 0xD4, 0xF0, 3);
        func_80029B58(0x37, arg0 + 0x11A, 0x25, 2, 0xB2);
        temp_s0_4 = arg0 + 0x27;
        func_80029B58(0x37, temp_s0_4, 0x1D, 0xF2, 1);
        func_80029B58(0x37, temp_s0_4, 0xD3, 0xF2, 1);
        func_80029B58(0x37, temp_s0_4, 0x1E, 1, 0xB3);
        func_80029B58(0x37, arg0 + 0x119, 0x1E, 1, 0xB3);
        if (phi_s4 != *(void *)0x8005F928) {
            temp_v0_20 = (((phi_s4 * 4) - phi_s4) * 4) + 0x8005F82C;
            temp_a0_2 = temp_v0_20->unk4;
            func_80024260(temp_a0_2, temp_v0_20->unk0, temp_v0_20->unk8 - temp_a0_2);
            *(void *)0x8005F928 = phi_s4;
        }
        temp_v0_21 = ((phi_s4 * 4) - phi_s4) + 0x8005F8D4;
        temp_v1_2 = (phi_s4 * 4) + 0x8005F8E0;
        temp_t0_2 = temp_v0_21->unk-12;
        temp_s2 = temp_v0_21->unk-11;
        temp_a0_3 = temp_v1_2->unk-18 + arg0;
        temp_s3 = temp_v1_2->unk-16;
        phi_a0 = temp_a0_3;
        phi_t0_3 = temp_t0_2;
        phi_s2_6 = temp_s2;
        if (temp_a0_3 < 0) {
            temp_t7_2 = -temp_a0_3;
            if ((temp_a0_3 + temp_t0_2) < 0) {
                phi_a0 = temp_a0_3;
                phi_t0_3 = temp_t0_2;
                phi_s2_6 = (u8)0U;
            } else {
                sp11C = temp_t7_2;
                sp11C = temp_t7_2 << 5;
                phi_a0 = 0;
                phi_t0_3 = temp_t0_2 - temp_t7_2;
                phi_s2_6 = temp_s2;
            }
        }
        if (phi_a0 >= 0x141) {
            phi_s2_3 = (u8)0U;
            phi_t0_4 = phi_t0_3;
        } else {
            phi_s2_3 = phi_s2_6;
            phi_t0_4 = phi_t0_3;
            if ((phi_a0 + phi_t0_3) >= 0x141) {
                sp11C = 0;
                phi_s2_3 = phi_s2_6;
                phi_t0_4 = ((phi_t0_3 - phi_a0) - phi_t0_3) + 0x140;
            }
        }
        sp124 = phi_a0;
        if (phi_s2_3 != 0) {
            temp_v0_22 = *(void *)0x8007B2FC;
            temp_a1 = phi_s4 - 6;
            *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
            temp_v0_22->unk0 = 0xFD100000;
            temp_v0_22->unk4 = (s32) ((temp_a1 * 4) + 0x80060000)->unk-75C;
            temp_v0_23 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
            temp_v0_23->unk4 = 0;
            temp_v0_23->unk0 = 0xE8000000;
            temp_v0_24 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
            temp_v0_24->unk4 = 0x7000000;
            temp_v0_24->unk0 = 0xF5000100;
            temp_v0_25 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
            temp_v0_25->unk4 = 0;
            temp_v0_25->unk0 = 0xE6000000;
            temp_v0_26 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
            temp_v0_26->unk4 = 0x73FC000;
            temp_v0_26->unk0 = 0xF0000000;
            temp_v0_27 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
            temp_v0_27->unk4 = 0;
            temp_v0_27->unk0 = 0xE7000000;
            *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
            temp_v0_28 = *(void *)0x8007B2FC;
            temp_a0_4 = (temp_a1 * 3) + 0x8005F8D4;
            *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
            temp_s0_5 = (temp_a1 * 8) + 0x8005F8B4;
            temp_v0_28->unk0 = (s32) (((temp_a0_4->unk0 - 1) & 0xFFF) | 0xFD480000);
            temp_v0_28->unk4 = (s32) temp_s0_5->unk0;
            temp_v0_29 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
            temp_v0_29->unk4 = 0x7000000;
            temp_v0_29->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            sp4C = sp124 + phi_t0_4;
            temp_v0_30 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_30 + 8);
            temp_v0_30->unk4 = 0;
            temp_v0_30->unk0 = 0xE6000000;
            temp_v0_31 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_31 + 8);
            temp_v0_31->unk0 = 0xF4000000;
            temp_v0_31->unk4 = (s32) (((((temp_a0_4->unk1 - 1) * 4) & 0xFFF) | 0x7000000) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_32 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_32 + 8);
            temp_v0_32->unk4 = 0;
            temp_v0_32->unk0 = 0xE7000000;
            temp_v0_33 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_33 + 8);
            temp_v0_33->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_33->unk4 = 0;
            temp_v0_34 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_34 + 8);
            temp_v0_34->unk0 = 0xF2000000;
            temp_v0_34->unk4 = (s32) ((((temp_a0_4->unk1 - 1) * 4) & 0xFFF) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_35 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_35 + 8);
            temp_v0_35->unk4 = 0;
            temp_v0_35->unk0 = 0xE7000000;
            temp_v0_36 = *(void *)0x8007B2FC;
            temp_t3 = ((sp4C * 4) & 0xFFF) << 0xC;
            *(void *)0x8007B2FC = (void *) (temp_v0_36 + 8);
            temp_v0_36->unk0 = (s32) ((temp_t3 | 0xE4000000) | (((temp_s3 + phi_s2_3) * 4) & 0xFFF));
            temp_t9 = ((sp124 * 4) & 0xFFF) << 0xC;
            sp3C = temp_t9;
            temp_v0_36->unk4 = (s32) (temp_t9 | ((temp_s3 * 4) & 0xFFF));
            temp_v0_37 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_37 + 8);
            temp_v0_37->unk0 = 0xB4000000;
            temp_t6 = sp11C << 0x10;
            sp38 = temp_t6;
            temp_v0_37->unk4 = temp_t6;
            temp_v0_38 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_38 + 8);
            temp_v0_38->unk4 = 0x4000400;
            temp_v0_38->unk0 = 0xB3000000;
            temp_v0_39 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_39 + 8);
            temp_v0_39->unk4 = 0;
            temp_v0_39->unk0 = 0xE7000000;
            temp_v0_40 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_40 + 8);
            temp_v0_40->unk0 = (s32) (((temp_a0_4->unk0 - 1) & 0xFFF) | 0xFD480000);
            temp_v0_40->unk4 = (s32) temp_s0_5->unk4;
            temp_v0_41 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_41 + 8);
            temp_v0_41->unk4 = 0x7000000;
            temp_v0_41->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_42 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_42 + 8);
            temp_v0_42->unk4 = 0;
            temp_v0_42->unk0 = 0xE6000000;
            temp_v0_43 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_43 + 8);
            temp_v0_43->unk0 = 0xF4000000;
            temp_v0_43->unk4 = (s32) (((((temp_a0_4->unk2 - 1) * 4) & 0xFFF) | 0x7000000) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_44 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_44 + 8);
            temp_v0_44->unk4 = 0;
            temp_v0_44->unk0 = 0xE7000000;
            temp_v0_45 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_45 + 8);
            temp_v0_45->unk0 = (s32) (((((s32) (temp_a0_4->unk0 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000);
            temp_v0_45->unk4 = 0;
            temp_v0_46 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_46 + 8);
            temp_v0_46->unk0 = 0xF2000000;
            temp_v0_46->unk4 = (s32) ((((temp_a0_4->unk2 - 1) * 4) & 0xFFF) | ((((temp_a0_4->unk0 - 1) * 4) & 0xFFF) << 0xC));
            temp_v0_47 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_47 + 8);
            temp_v0_47->unk4 = 0;
            temp_v0_47->unk0 = 0xE7000000;
            temp_v0_48 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_48 + 8);
            temp_v0_48->unk0 = (s32) ((((((temp_a0_4->unk2 + temp_s3) + phi_s2_3) * 4) & 0xFFF) | 0xE4000000) | temp_t3);
            temp_v0_48->unk4 = (s32) ((((temp_a0_4->unk1 + temp_s3) * 4) & 0xFFF) | sp3C);
            temp_v0_49 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_49 + 8);
            temp_v0_49->unk0 = 0xB4000000;
            temp_v0_49->unk4 = sp38;
            temp_v0_50 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_50 + 8);
            temp_v0_50->unk4 = 0x4000400;
            temp_v0_50->unk0 = 0xB3000000;
            func_8002DF6C(temp_a0_4, temp_a1);
        }
    }
    func_80029B58(5, arg0 + 0x45, 0x1C, 7, 7);
    func_80029B58(5, arg0 + 0xF3, 0x1C, 7, 7);
    temp_s0_6 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_80029B58(6, (arg0 + temp_s0_6) + 0x36, 0x1A, 0xE, 0xB);
    func_80029B58(7, (arg0 - temp_s0_6) + 0xFB, 0x1A, 0xE, 0xB);
    func_80029B58(0x2B, arg0 + 0x8E, 0x19, 0x24, 0x10);
    if (phi_s4 < 6) {
        if ((*(void *)0x8008FD10 & 0x20) != 0) {
            if (phi_s5 < 0) {
                temp_v0_51 = phi_s4 * 2;
                temp_v1_3 = temp_v0_51 + 0x8005F7FC;
                temp_a0_5 = temp_v0_51 + 0x8005F814;
                phi_t0_5 = (s16) ((((s32) (void *)0x8007BAB8->unk14 / (s32) temp_v1_3->unk0) + temp_a0_5->unk0) - 4);
                phi_s2_4 = (s16) (((s32) (void *)0x8007BAB8->unk1C / (s32) temp_v1_3->unkC) + temp_a0_5->unkC);
            } else {
                temp_v0_52 = ((((phi_s4 * 8) + phi_s4) * 4) + (phi_s5 * 4)) + 0x8005F4CC;
                phi_t0_5 = temp_v0_52->unk0 - 4;
                phi_s2_4 = temp_v0_52->unk2;
            }
            func_80029B58(0x2C, (phi_t0_5 + arg0) + 0x27, (phi_s2_4 - 0x10) + 0x1D, 0xC, 0x10);
        }
    }
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0_53 = *(void *)0x80092871;
        if ((s32) temp_v0_53 >= 0x15) {
block_49:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_800268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1_4 = *(void *)0x80092876;
        if ((temp_v1_4 & 0x10) != 0) {
            goto block_49;
        }
        if (((s32) temp_v0_53 < -0x14) || (phi_return = temp_v0_53, ((temp_v1_4 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_800268D4(0, 0, 0xFF, temp_a3);
        } else {

        }
    }
    return phi_return;
}

s8 func_80029448(s32 arg0) {
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

    func_80029B58(0, arg0 + 0x28, 0x1E, 0xF0, 0x9F);
    func_80029B58(0x37, arg0 + 0x2B, 0xBE, 0xF0, 3);
    func_80029B58(0x37, arg0 + 0x119, 0x24, 2, 0x9A);
    temp_s0 = arg0 + 0x27;
    func_80029B58(0x37, temp_s0, 0x1D, 0xF2, 1);
    func_80029B58(0x37, temp_s0, 0xBD, 0xF2, 1);
    func_80029B58(0x37, temp_s0, 0x1E, 1, 0x9F);
    func_80029B58(0x37, arg0 + 0x118, 0x1E, 1, 0x9F);
    temp_s0_2 = arg0 + 0x29;
    func_80029B58(0x38, temp_s0_2, 0x1F, 0xED, 1);
    func_80029B58(0x38, temp_s0_2, 0x20, 1, 0x9B);
    func_80029B58(0x39, temp_s0_2, 0xBB, 0xEE, 1);
    func_80029B58(0x39, arg0 + 0x116, 0x1F, 1, 0x9C);
    func_80029B58(5, arg0 + 0x45, 0x1C, 7, 7);
    func_80029B58(5, arg0 + 0xF3, 0x1C, 7, 7);
    temp_s0_3 = ((((s32) *(void *)0x8008FD10 >> 2) & 0xF) + 0x80060000)->unk-F40;
    func_80029B58(6, (arg0 + temp_s0_3) + 0x36, 0x1A, 0xE, 0xB);
    func_80029B58(7, (arg0 - temp_s0_3) + 0xFB, 0x1A, 0xE, 0xB);
    func_80029B58(0x2D, arg0 + 0x81, 0x19, 0x3A, 0x10);
    temp_s0_4 = arg0 + 0xA5;
    func_80029B58(0x32, temp_s0_4, 0x35, 0x35, 6);
    func_80029B58(0x32, arg0 + 0x31, 0x78, 0x35, 6);
    func_80029B58(0x32, arg0 + 0xD9, 0x78, 0x35, 6);
    func_80029B58(0x32, temp_s0_4, 0xAE, 0x35, 6);
    temp_s0_5 = arg0 + 0x86;
    func_80029B58(0x14, temp_s0_5, 0x34, 8, 0xA);
    func_80029B58(0x14, arg0 + 0x47, 0x6B, 8, 0xA);
    func_80029B58(0x14, arg0 + 0xF0, 0x6B, 8, 0xA);
    func_80029B58(0x14, temp_s0_5, 0xAD, 8, 0xA);
    temp_s0_6 = arg0 + 0x9A;
    func_80029B58(0x2E, temp_s0_6, 0x3D, 0xC, 0xC);
    func_80029B58(0x2F, arg0 + 0x67, 0x6F, 0xC, 0xC);
    func_80029B58(0x30, arg0 + 0xCC, 0x6F, 0xC, 0xC);
    func_80029B58(0x31, temp_s0_6, 0xA1, 0xC, 0xC);
    func_80029B58(0x15, arg0 + 0xA7, 0x92, 8, 0xA);
    temp_s0_7 = arg0 + 0x8D;
    func_8002AB64(2, temp_s0_7, 0x34, 0x32, 0xA);
    func_8002AB64(2, arg0 + 0x4E, 0x6B, 0x32, 0xA);
    func_8002AB64(2, arg0 + 0xF7, 0x6B, 0x32, 0xA);
    func_8002AB64(2, temp_s0_7, 0xAD, 0x32, 0xA);
    temp_a1 = arg0 + 0x78;
    sp28 = temp_a1;
    func_8002AB64(2, temp_a1, 0x34, *(void *)0x8007BAA4, 0xA);
    func_8002AB64(2, arg0 + 0x39, 0x6B, *(void *)0x8007BAA5, 0xA);
    func_8002AB64(2, arg0 + 0xE2, 0x6B, *(void *)0x8007BAA7, 0xA);
    func_8002AB64(2, temp_a1, 0xAD, *(void *)0x8007BAA6, 0xA);
    temp_s0_8 = arg0 + 0xA6;
    func_80029B58(0x33, temp_s0_8, 0x36, (s32) (((f32) (u32) *(void *)0x8007BAA4 / 50.0f) * 50.0f), 3);
    temp_t3 = *(void *)0x8007BAA5;
    temp_f0 = (f32) temp_t3;
    phi_f0 = temp_f0;
    if ((s32) temp_t3 < 0) {
        phi_f0 = temp_f0 + 4294967296.0f;
    }
    func_80029B58(0x33, arg0 + 0x32, 0x79, (s32) ((phi_f0 / 50.0f) * 50.0f), 3);
    temp_t6 = *(void *)0x8007BAA7;
    temp_f0_2 = (f32) temp_t6;
    phi_f0_2 = temp_f0_2;
    if ((s32) temp_t6 < 0) {
        phi_f0_2 = temp_f0_2 + 4294967296.0f;
    }
    func_80029B58(0x33, arg0 + 0xDA, 0x79, (s32) ((phi_f0_2 / 50.0f) * 50.0f), 3);
    temp_t9 = *(void *)0x8007BAA6;
    temp_f0_3 = (f32) temp_t9;
    phi_f0_3 = temp_f0_3;
    if ((s32) temp_t9 < 0) {
        phi_f0_3 = temp_f0_3 + 4294967296.0f;
    }
    func_80029B58(0x33, temp_s0_8, 0xAF, (s32) ((phi_f0_3 / 50.0f) * 50.0f), 3);
    temp_lo = (u32) (*(void *)0x8007BA90 * 0x64) / (u32) ((*(void *)0x8007BAB4 * 4) + 0x80050000)->unk3D3C;
    phi_s0 = temp_lo;
    if ((s32) temp_lo >= 0x65) {
        phi_s0 = 0x64U;
    }
    func_8002AB64(3, arg0 + 0x91, 0x92, phi_s0, 0xA);
    func_8002A0B8(phi_s0, arg0);
    temp_a3 = *(void *)0x8008FD0C;
    phi_return = (s8) (void *)0x80090000;
    if ((temp_a3 & 0x2000) == 0) {
        temp_v0 = *(void *)0x80092871;
        if ((s32) temp_v0 >= 0x15) {
block_11:
            *(void *)0x8008FD04 = 0x140;
            *(void *)0x8008FD08 = 0;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x2000);
            return func_800268D4(0, 0, 0xFF, temp_a3);
        }
        temp_v1 = *(void *)0x80092876;
        if ((temp_v1 & 0x10) != 0) {
            goto block_11;
        }
        if (((s32) temp_v0 < -0x14) || (phi_return = temp_v0, ((temp_v1 & 0x2000) != 0))) {
            *(void *)0x8008FD04 = 0;
            *(void *)0x8008FD08 = -0x140;
            *(void *)0x8008FD0C = (u16) (temp_a3 | 0x3000);
            phi_return = func_800268D4(0, 0, 0xFF, temp_a3);
        } else {

        }
    }
    return phi_return;
}

Failed to decompile function func_80029B58:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void *func_8002A0B8(s32 arg0, s32 arg1) {
    s32 sp114;
    ? spFC;
    ? spDC;
    s32 spB8;
    s32 spB4;
    ? *sp44;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_fp;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_v0_15;
    s32 temp_v0_27;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t8;
    s32 phi_t4;
    s32 phi_s0;
    s32 phi_s6;
    s32 phi_t4_2;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 phi_v0;
    s32 phi_s5;
    s32 phi_ra;
    s32 phi_fp;
    s32 phi_s4;
    s32 phi_s7;

    spFC.unk0 = (s32) (void *)0x8005F92C->unk0;
    spFC.unk4 = (s32) (void *)0x8005F92C->unk4;
    spFC.unkC = (s32) (void *)0x8005F92C->unkC;
    spFC.unk8 = (s32) (void *)0x8005F92C->unk8;
    spDC.unk0 = (s32) (void *)0x8005F93C->unk0;
    spDC.unk4 = (s32) (void *)0x8005F93C->unk4;
    spDC.unkC = (s32) (void *)0x8005F93C->unkC;
    spDC.unk8 = (s32) (void *)0x8005F93C->unk8;
    spDC.unk10 = (s32) (void *)0x8005F93C->unk10;
    spDC.unk14 = (s32) (void *)0x8005F93C->unk14;
    spDC.unk1C = (s32) (void *)0x8005F93C->unk1C;
    spDC.unk18 = (s32) (void *)0x8005F93C->unk18;
    sp44 = &spFC;
    sp114 = 0;
loop_1:
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x504240;
    temp_v0_2->unk0 = 0xB900031D;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x2000;
    temp_v0_3->unk0 = 0xBA000C02;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE7000000;
    if (sp114 != 1) {
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk0 = 0x6000000;
        temp_v0_5->unk4 = 0x8005F228;
    } else {
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk0 = 0x6000000;
        temp_v0_6->unk4 = 0x8005F240;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = -0x80;
        temp_v0_7->unk0 = 0xFB000000;
    }
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk0 = 0xFD100000;
    temp_v0_9->unk4 = (s32) *sp44;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0;
    temp_v0_10->unk0 = 0xE8000000;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0x7000000;
    temp_v0_11->unk0 = 0xF5000100;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk4 = 0;
    temp_v0_12->unk0 = 0xE6000000;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0x73FC000;
    temp_v0_13->unk0 = 0xF0000000;
    temp_v0_14 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
    temp_v0_14->unk4 = 0;
    temp_v0_14->unk0 = 0xE7000000;
    phi_s6 = 0;
loop_5:
    spB8 = 0;
    if (sp114 != 2) {
        spB4 = 0;
        if (sp114 != 3) {
            phi_t4 = arg1 + 0x87;
            phi_s0 = 0x19;
            phi_s5 = 0x19;
            phi_ra = 0x32;
            phi_fp = 0;
            phi_s4 = 0x52;
            phi_s7 = 0x32;
        } else {
            phi_t4 = arg1 + 0x84;
            phi_s0 = 0x1C;
            phi_s5 = 0x1C;
            phi_ra = 0x38;
            phi_fp = 0;
            phi_s4 = 0x4F;
            phi_s7 = 0x38;
        }
    } else {
        phi_t8 = arg0 >> 1;
        if (arg0 < 0) {
            phi_t8 = (s32) (arg0 + 1) >> 1;
        }
        temp_fp = 0x32 - phi_t8;
        spB4 = temp_fp << 5;
        phi_t4 = arg1 + 0x87;
        phi_s0 = 0x19;
        phi_s5 = 0x19;
        phi_ra = 0x32;
        phi_fp = temp_fp;
        phi_s4 = temp_fp + 0x52;
        phi_s7 = 0x32;
    }
    temp_a1 = phi_s5 - 1;
    temp_t4 = phi_t4 + (phi_s0 * phi_s6);
    phi_t4_2 = temp_t4;
    phi_s0_2 = phi_s0;
    if (temp_t4 < 0) {
        temp_v0_15 = -temp_t4;
        phi_t4_2 = temp_t4;
        phi_s0_2 = phi_s0;
        if ((temp_t4 + phi_s0) >= 0) {
            spB8 = temp_v0_15 << 5;
            phi_t4_2 = 0;
            phi_s0_2 = phi_s0 - temp_v0_15;
        }
    }
    temp_t5 = phi_t4_2 + phi_s0_2;
    if (phi_t4_2 >= 0x141) {
        phi_s0_3 = phi_s0_2;
        phi_v0 = -1;
    } else {
        phi_s0_3 = phi_s0_2;
        phi_v0 = 0;
        if (temp_t5 >= 0x141) {
            phi_s0_3 = (phi_s0_2 - temp_t5) + 0x140;
            phi_v0 = 0;
        }
    }
    if (phi_s0_3 <= 0) {
        phi_v0 = -1;
    }
    if (phi_v0 >= 0) {
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk0 = (s32) ((temp_a1 & 0xFFF) | 0xFD480000);
        temp_v0_16->unk4 = (s32) (sp + ((sp114 * 8) + (phi_s6 * 4)))->unkDC;
        temp_v0_17 = *(void *)0x8007B2FC;
        temp_a3 = ((((s32) (phi_s5 + 7) >> 3) & 0x1FF) << 9) | 0xF5480000;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk4 = 0x7000000;
        temp_v0_17->unk0 = temp_a3;
        temp_v0_18 = *(void *)0x8007B2FC;
        temp_t7 = (phi_fp * 4) & 0xFFF;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk4 = 0;
        temp_v0_18->unk0 = 0xE6000000;
        temp_v0_19 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
        temp_s2 = ((temp_a1 * 4) & 0xFFF) << 0xC;
        temp_s3 = ((phi_ra - 1) * 4) & 0xFFF;
        temp_v0_19->unk4 = (s32) ((temp_s2 | 0x7000000) | temp_s3);
        temp_v0_19->unk0 = (s32) (temp_t7 | 0xF4000000);
        temp_v0_20 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
        temp_v0_20->unk4 = 0;
        temp_v0_20->unk0 = 0xE7000000;
        temp_v0_21 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
        temp_v0_21->unk4 = 0;
        temp_v0_21->unk0 = temp_a3;
        temp_v0_22 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
        temp_v0_22->unk4 = (s32) (temp_s2 | temp_s3);
        temp_v0_22->unk0 = (s32) (temp_t7 | 0xF2000000);
        temp_v0_23 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
        temp_v0_23->unk0 = (s32) ((((((phi_t4_2 + phi_s0_3) * 4) & 0xFFF) << 0xC) | 0xE4000000) | ((((phi_s4 + phi_s7) - phi_fp) * 4) & 0xFFF));
        temp_v0_23->unk4 = (s32) ((((phi_t4_2 * 4) & 0xFFF) << 0xC) | ((phi_s4 * 4) & 0xFFF));
        temp_v0_24 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
        temp_v0_24->unk0 = 0xB4000000;
        temp_v0_24->unk4 = (s32) ((spB8 << 0x10) | (spB4 & 0xFFFF));
        temp_v0_25 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
        temp_v0_25->unk0 = 0xB3000000;
        temp_v0_25->unk4 = 0x4000400;
        temp_v0_26 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
        temp_v0_26->unk4 = 0;
        temp_v0_26->unk0 = 0xE7000000;
    }
    temp_s6 = phi_s6 + 1;
    phi_s6 = temp_s6;
    if (temp_s6 != 2) {
        goto loop_5;
    }
    temp_v0_27 = sp114 + 1;
    sp114 = temp_v0_27;
    sp44 = sp44 + 4;
    if (temp_v0_27 != 4) {
        goto loop_1;
    }
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
    return (void *)0x8008FD0C;
}

void *func_8002A668(void) {
    ? spE4;
    ? spD8;
    ? spD4;
    ? spC8;
    ? spC4;
    ? spB8;
    ? *temp_a0;
    ? *temp_a0_2;
    ? *temp_a1;
    ? *temp_s0;
    ? *temp_s0_2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_26;
    void *temp_v0_27;
    void *temp_v0_28;
    void *temp_v0_29;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    ? *phi_s0;
    ? *phi_a1;
    s32 phi_t5;
    ? *phi_a0;
    ? *phi_s0_2;
    ? *phi_a1_2;
    s32 phi_t5_2;
    ? *phi_a0_2;

    spD8.unk0 = (s32) (void *)0x8005F95C->unk0;
    spD8.unk4 = (s32) (void *)0x8005F95C->unk4;
    spD8.unkC = (s32) (void *)0x8005F95C->unkC;
    spD8.unk8 = (s32) (void *)0x8005F95C->unk8;
    spC8.unk0 = (s32) (void *)0x8005F96C->unk0;
    spC8.unk4 = (s32) (void *)0x8005F96C->unk4;
    spC8.unkC = (s32) (void *)0x8005F96C->unkC;
    spC8.unk8 = (s32) (void *)0x8005F96C->unk8;
    spB8.unk0 = (s32) (void *)0x8005F97C->unk0;
    spB8.unk4 = (s32) (void *)0x8005F97C->unk4;
    spB8.unkC = (s32) (void *)0x8005F97C->unkC;
    spB8.unk8 = (s32) (void *)0x8005F97C->unk8;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE7000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x80064D58;
    temp_v0_3->unk0 = 0xFD100000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE8000000;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0x7000000;
    temp_v0_5->unk0 = 0xF5000100;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE6000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0x73FC000;
    temp_v0_7->unk0 = 0xF0000000;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
    phi_s0 = &spB8;
    phi_a1 = &spD8;
    phi_t5 = 0x16;
    phi_a0 = &spC8;
loop_1:
    temp_v0_9 = *(void *)0x8007B2FC;
    temp_s0 = phi_s0 + 4;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk0 = 0xFD48003F;
    temp_v0_9->unk4 = (s32) temp_s0->unk-4;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0x7014160;
    temp_v0_10->unk0 = 0xF5481000;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE6000000;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk0 = 0xF4000000;
    temp_v0_12->unk4 = (s32) ((((*phi_a1 - 1) * 4) & 0xFFF) | 0x70FC000);
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0;
    temp_v0_13->unk0 = 0xE7000000;
    temp_v0_14 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
    temp_v0_14->unk4 = 0x14160;
    temp_v0_14->unk0 = 0xF5481000;
    temp_v0_15 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
    temp_v0_15->unk0 = 0xF2000000;
    temp_v0_15->unk4 = (s32) ((((*phi_a1 - 1) * 4) & 0xFFF) | 0xFC000);
    temp_v0_16 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
    temp_v0_16->unk4 = (s32) (((phi_t5 * 4) & 0xFFF) | 0x5C000);
    temp_v0_16->unk0 = (s32) ((((*phi_a0 + phi_t5) * 4) & 0xFFF) | 0xE44A4000);
    temp_v0_17 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
    temp_v0_17->unk4 = 0;
    temp_v0_17->unk0 = 0xB4000000;
    temp_v0_18 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
    temp_v0_18->unk4 = 0x4A804E6;
    temp_v0_18->unk0 = 0xB3000000;
    temp_v0_19 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_19 + 8);
    temp_v0_19->unk4 = 0;
    temp_v0_19->unk0 = 0xE7000000;
    temp_a0 = phi_a0 + 4;
    phi_s0 = temp_s0;
    phi_a1 = phi_a1 + 4;
    phi_t5 = phi_t5 + *phi_a0;
    phi_a0 = temp_a0;
    if ((u32) temp_a0 < (u32) &spD8) {
        goto loop_1;
    }
    phi_s0_2 = &spC4;
    phi_a1_2 = &spE4;
    phi_t5_2 = 0x78;
    phi_a0_2 = &spD4;
loop_3:
    temp_v0_20 = *(void *)0x8007B2FC;
    temp_s0_2 = phi_s0_2 - 4;
    *(void *)0x8007B2FC = (void *) (temp_v0_20 + 8);
    temp_v0_20->unk0 = 0xFD48003F;
    temp_v0_20->unk4 = (s32) temp_s0_2->unk4;
    temp_v0_21 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_21 + 8);
    temp_v0_21->unk4 = 0x7014160;
    temp_v0_21->unk0 = 0xF5481000;
    temp_v0_22 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_22 + 8);
    temp_v0_22->unk4 = 0;
    temp_v0_22->unk0 = 0xE6000000;
    temp_v0_23 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_23 + 8);
    temp_v0_23->unk0 = 0xF4000000;
    temp_v0_23->unk4 = (s32) ((((*phi_a1_2 - 1) * 4) & 0xFFF) | 0x70FC000);
    temp_v0_24 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_24 + 8);
    temp_v0_24->unk4 = 0;
    temp_v0_24->unk0 = 0xE7000000;
    temp_v0_25 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_25 + 8);
    temp_v0_25->unk4 = 0x14160;
    temp_v0_25->unk0 = 0xF5481000;
    temp_v0_26 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_26 + 8);
    temp_v0_26->unk0 = 0xF2000000;
    temp_v0_26->unk4 = (s32) ((((*phi_a1_2 - 1) * 4) & 0xFFF) | 0xFC000);
    temp_v0_27 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_27 + 8);
    temp_v0_27->unk4 = (s32) (((phi_t5_2 * 4) & 0xFFF) | 0x5C000);
    temp_v0_27->unk0 = (s32) ((((*phi_a0_2 + phi_t5_2) * 4) & 0xFFF) | 0xE44A4000);
    temp_v0_28 = *(void *)0x8007B2FC;
    temp_a1 = phi_a1_2 - 4;
    *(void *)0x8007B2FC = (void *) (temp_v0_28 + 8);
    temp_v0_28->unk0 = 0xB4000000;
    temp_v0_28->unk4 = (s32) (((temp_a1->unk4 - 1) << 5) & 0xFFFF);
    temp_v0_29 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_29 + 8);
    temp_v0_29->unk0 = 0xB3000000;
    temp_v0_29->unk4 = 0x4A8FB1A;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_a0_2 = phi_a0_2 - 4;
    phi_s0_2 = temp_s0_2;
    phi_a1_2 = temp_a1;
    phi_t5_2 = phi_t5_2 + *phi_a0_2;
    phi_a0_2 = temp_a0_2;
    if ((u32) temp_a0_2 >= (u32) &spC8) {
        goto loop_3;
    }
    return temp_v0;
}

void *func_8002AB64(s32 arg0, s32 arg1, s32 arg2, u32 arg3, s32 arg4) {
    u32 spC4;
    void *spC0;
    u32 spBC;
    s32 spB8;
    s8 spAC;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_t5;
    s32 temp_t8;
    u32 temp_t9;
    u32 temp_v1;
    void *temp_ret;
    void *temp_t3;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s8 phi_v0;
    void *phi_s1;
    s32 phi_s0;
    s32 phi_s2;
    s32 phi_s0_2;
    void *phi_t3;
    s32 phi_s3;
    void *phi_return;
    void *phi_return_2;
    void *phi_return_3;

    spC0 = NULL;
    spC4 = 0x3B9ACA00U;
    spB8 = 0;
    spBC = arg3;
    phi_s2 = arg0;
    if (arg0 >= 0xA) {
        phi_s2 = 9;
    }
    phi_s1 = &spAC + 9;
    phi_s0 = 0;
loop_3:
    phi_v0 = (u8)0;
loop_4:
    temp_t9 = spBC - spC4;
    temp_t8 = (spB8 - spC0) - (spBC < spC4);
    spB8 = temp_t8;
    spBC = temp_t9;
    if (temp_t8 > 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    if (temp_t8 >= 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    temp_t9 = temp_t9 + spC4;
    spB8 = ((temp_t9 < spC4) + temp_t8) + spC0;
    spBC = temp_t9;
    *phi_s1 = phi_v0;
    temp_ret = func_80039B38(spC0, spC4, 0, 0xA);
    temp_v1 = (u32) (u64) temp_ret;
    temp_s0 = phi_s0 + 1;
    spC0 = temp_ret;
    spC4 = temp_v1;
    phi_s1 = phi_s1 - 1;
    phi_s0 = temp_s0;
    if (temp_s0 < 9) {
        goto loop_3;
    }
    spAC = (s8) spBC;
    phi_return_3 = temp_ret;
    if ((*(void *)0x8008FD0C & 0x10) == 0) {
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xE7000000;
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0x80060138;
        temp_v0_2->unk0 = 0xFD100000;
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xE8000000;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5000100;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0x73FC000;
        temp_v0_6->unk0 = 0xF0000000;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C | 0x10);
        phi_return_3 = temp_v0_7;
    }
    temp_a0 = phi_s2 - 1;
    phi_return = phi_return_3;
    if (temp_a0 >= 0) {
        phi_s0_2 = 0;
        phi_t3 = temp_a0 + &spAC;
        phi_s3 = 0;
        phi_return_2 = phi_return_3;
loop_14:
        temp_s0_2 = phi_s0_2 + *phi_t3;
        if ((temp_s0_2 != 0) || (phi_t3 == &spAC)) {
            temp_v0_8 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
            temp_v0_8->unk0 = 0xFD480007;
            temp_v0_8->unk4 = (s32) *(((*phi_t3 * 4) + 0x8005F0D0) + (arg4 * 4));
            temp_v0_9 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
            temp_v0_9->unk4 = 0x7010030;
            temp_v0_9->unk0 = 0xF5480200;
            temp_v0_10 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
            temp_v0_10->unk4 = 0;
            temp_v0_10->unk0 = 0xE6000000;
            temp_v0_11 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
            temp_v0_11->unk4 = 0x701C024;
            temp_v0_11->unk0 = 0xF4000000;
            temp_v0_12 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
            temp_v0_13->unk4 = 0x10030;
            temp_v0_13->unk0 = 0xF5480200;
            temp_v0_14 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
            temp_v0_14->unk0 = 0xF2000000;
            temp_v0_14->unk4 = 0x1C024;
            temp_v0_15 = *(void *)0x8007B2FC;
            temp_t5 = arg1 + phi_s3;
            *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
            temp_v0_15->unk0 = (s32) ((((((temp_t5 + 8) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((arg2 + 0xA) * 4) & 0xFFF));
            temp_v0_15->unk4 = (s32) ((((temp_t5 * 4) & 0xFFF) << 0xC) | ((arg2 * 4) & 0xFFF));
            temp_v0_16 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xB4000000;
            temp_v0_17 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
            temp_v0_17->unk4 = 0x4000400;
            temp_v0_17->unk0 = 0xB3000000;
            temp_v0_18 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
            temp_v0_18->unk4 = 0;
            temp_v0_18->unk0 = 0xE7000000;
            phi_return_2 = temp_v0_18;
        } else {

        }
        temp_t3 = phi_t3 - 1;
        phi_s0_2 = temp_s0_2;
        phi_t3 = temp_t3;
        phi_s3 = phi_s3 + 7;
        phi_return = phi_return_2;
        if ((u32) temp_t3 >= (u32) &spAC) {
            goto loop_14;
        }
    }
    return phi_return;
}

void *func_8002AF70(s32 arg0, s32 arg1, s32 arg2, u32 arg3, s32 arg4) {
    u32 spCC;
    void *spC8;
    u32 spC4;
    s32 spC0;
    s8 spB4;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_t8;
    u32 temp_t3;
    u32 temp_t9;
    u32 temp_v1;
    void *temp_ret;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s8 phi_v0;
    void *phi_s1;
    s32 phi_s0;
    s32 phi_s2;
    void *phi_t3;
    s32 phi_t5;
    s32 phi_t4;
    void *phi_return;

    spC8 = NULL;
    spCC = 0x3B9ACA00U;
    spC0 = 0;
    spC4 = arg3;
    phi_s2 = arg0;
    if (arg0 >= 0xA) {
        phi_s2 = 9;
    }
    phi_s1 = &spB4 + 9;
    phi_s0 = 0;
loop_3:
    phi_v0 = (u8)0;
loop_4:
    temp_t9 = spC4 - spCC;
    temp_t8 = (spC0 - spC8) - (spC4 < spCC);
    spC0 = temp_t8;
    spC4 = temp_t9;
    if (temp_t8 > 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    if (temp_t8 >= 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_4;
    }
    temp_t9 = temp_t9 + spCC;
    spC0 = ((temp_t9 < spCC) + temp_t8) + spC8;
    spC4 = temp_t9;
    *phi_s1 = phi_v0;
    temp_ret = func_80039B38(spC8, spCC, 0, 0xA);
    temp_v1 = (u32) (u64) temp_ret;
    temp_s0 = phi_s0 + 1;
    spC8 = temp_ret;
    spCC = temp_v1;
    phi_s1 = phi_s1 - 1;
    phi_s0 = temp_s0;
    if (temp_s0 < 9) {
        goto loop_3;
    }
    temp_a0 = phi_s2 - 1;
    spB4 = (s8) spC4;
    phi_return = temp_ret;
    if ((*(void *)0x8008FD0C & 0x10) == 0) {
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xE7000000;
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0x80060138;
        temp_v0_2->unk0 = 0xFD100000;
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0;
        temp_v0_3->unk0 = 0xE8000000;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x7000000;
        temp_v0_4->unk0 = 0xF5000100;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk4 = 0;
        temp_v0_5->unk0 = 0xE6000000;
        temp_v0_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
        temp_v0_6->unk4 = 0x73FC000;
        temp_v0_6->unk0 = 0xF0000000;
        temp_v0_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
        temp_v0_7->unk4 = 0;
        temp_v0_7->unk0 = 0xE7000000;
        *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C | 0x10);
        phi_return = temp_v0_7;
    }
    if (temp_a0 >= 0) {
        phi_t3 = temp_a0 + &spB4;
        phi_t5 = arg1 + 8;
        phi_t4 = arg1;
loop_14:
        temp_v0_8 = *(void *)0x8007B2FC;
        temp_t3 = phi_t3 - 1;
        *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
        temp_v0_8->unk0 = 0xFD480007;
        temp_v0_8->unk4 = (s32) *(((*phi_t3 * 4) + 0x8005F0D0) + (arg4 * 4));
        temp_v0_9 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
        temp_v0_9->unk4 = 0x7010030;
        temp_v0_9->unk0 = 0xF5480200;
        temp_v0_10 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
        temp_v0_10->unk4 = 0;
        temp_v0_10->unk0 = 0xE6000000;
        temp_v0_11 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
        temp_v0_11->unk4 = 0x701C024;
        temp_v0_11->unk0 = 0xF4000000;
        temp_v0_12 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
        temp_v0_12->unk4 = 0;
        temp_v0_12->unk0 = 0xE7000000;
        temp_v0_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
        temp_v0_13->unk4 = 0x10030;
        temp_v0_13->unk0 = 0xF5480200;
        temp_v0_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
        temp_v0_14->unk0 = 0xF2000000;
        temp_v0_14->unk4 = 0x1C024;
        temp_v0_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_15 + 8);
        temp_v0_15->unk0 = (s32) (((((phi_t5 * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((arg2 + 0xA) * 4) & 0xFFF));
        temp_v0_15->unk4 = (s32) ((((phi_t4 * 4) & 0xFFF) << 0xC) | ((arg2 * 4) & 0xFFF));
        temp_v0_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_16 + 8);
        temp_v0_16->unk4 = 0;
        temp_v0_16->unk0 = 0xB4000000;
        temp_v0_17 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_17 + 8);
        temp_v0_17->unk4 = 0x4000400;
        temp_v0_17->unk0 = 0xB3000000;
        temp_v0_18 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_18 + 8);
        temp_v0_18->unk4 = 0;
        temp_v0_18->unk0 = 0xE7000000;
        phi_t3 = (void *) temp_t3;
        phi_t5 = phi_t5 + 7;
        phi_t4 = phi_t4 + 7;
        phi_return = temp_v0_18;
        if (temp_t3 >= (u32) &spB4) {
            goto loop_14;
        }
    }
    return phi_return;
}

s32 func_8002B364(s32 arg0, s32 arg1, ? arg2, u32 arg3) {
    u32 sp74;
    s32 sp70;
    u32 sp6C;
    s32 sp68;
    s8 sp5C;
    s8 sp53;
    ? sp50;
    s32 temp_ret;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_t2;
    s32 temp_v1_2;
    s8 temp_v0;
    u32 temp_t1;
    u32 temp_t3;
    u32 temp_v1;
    void *temp_s0;
    void *temp_s0_2;
    s8 phi_v0;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_s3;
    s32 phi_s1_2;
    void *phi_s0_2;
    s32 phi_s2;
    s32 phi_return;

    sp70 = 0;
    sp74 = 0x3B9ACA00U;
    sp68 = 0;
    sp6C = arg3;
    sp50.unk0 = (s32) (void *)0x8005F98C->unk0;
    temp_s0 = &sp5C + 9;
    sp50.unk4 = (u8) (void *)0x8005F98C->unk4;
    phi_s0 = temp_s0;
    phi_s1 = 0;
    phi_s3 = arg0;
    if (arg0 >= 0xA) {
        phi_s0 = temp_s0;
        phi_s1 = 0;
        phi_s3 = 9;
    }
loop_2:
    phi_v0 = (u8)0;
loop_3:
    temp_t2 = (sp68 - sp70) - (sp6C < sp74);
    temp_t3 = sp6C - sp74;
    sp6C = temp_t3;
    sp68 = temp_t2;
    if (temp_t2 > 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_3;
    }
    if (temp_t2 >= 0) {
        phi_v0 = phi_v0 + 1;
        goto loop_3;
    }
    temp_t1 = temp_t3 + sp74;
    sp68 = ((temp_t1 < sp74) + temp_t2) + sp70;
    sp6C = temp_t1;
    *phi_s0 = phi_v0;
    temp_ret = func_80039B38(sp70, sp74, 0, 0xA);
    temp_v1 = (u32) (u64) temp_ret;
    temp_s1 = phi_s1 + 1;
    sp70 = temp_ret;
    sp74 = temp_v1;
    phi_s0 = phi_s0 - 1;
    phi_s1 = temp_s1;
    if (temp_s1 < 9) {
        goto loop_2;
    }
    temp_v1_2 = phi_s3 - 1;
    sp5C = (s8) sp6C;
    phi_return = temp_ret;
    if (temp_v1_2 >= 0) {
        phi_s1_2 = 0;
        phi_s0_2 = temp_v1_2 + &sp5C;
        phi_s2 = arg1;
loop_11:
        temp_v0 = *phi_s0_2;
        temp_s1_2 = phi_s1_2 + temp_v0;
        if ((temp_s1_2 != 0) || (phi_return = (s32) temp_v0, (phi_s0_2 == &sp5C))) {
            sp53 = temp_v0;
            phi_return = func_80030EA0(phi_s2, arg2, &sp50);
        } else {

        }
        temp_s0_2 = phi_s0_2 - 1;
        phi_s1_2 = temp_s1_2;
        phi_s0_2 = temp_s0_2;
        phi_s2 = phi_s2 + 0xA;
        if ((u32) temp_s0_2 >= (u32) &sp5C) {
            goto loop_11;
        }
    }
    return phi_return;
}
