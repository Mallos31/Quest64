void *func_8001E1F0(void) {
    *(void *)0x8008C638 = 0;
    *(void *)0x8008C63C = 0;
    *(void *)0x8008C640 = -1;
    *(void *)0x8008C64C = 0;
    *(void *)0x8008C648 = 0;
    *(void *)0x8008C654 = 0;
    *(void *)0x8008C650 = 0;
    *(void *)0x8008C658 = 0x140;
    *(void *)0x8008C65C = 0xF0;
    *(void *)0x8008C630 = (u16)0;
    return (void *)0x8008C64C;
}

s32 func_8001E25C(s32 arg0) {
    s32 sp24;
    void *sp1C;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t3;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 temp_v1_2;
    u16 temp_v0_6;
    u8 temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_t0;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_v1_3;
    s32 phi_v0_3;
    s32 phi_v0_4;
    s32 phi_return;
    s32 phi_return_2;
    s32 phi_return_3;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x1030040;
    temp_v0->unk4 = 0x2000040;
    func_80036198((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0xC3200000, 0xC2F00000, 0);
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x1010040;
    temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x803A6FC0;
    temp_v0_3->unk0 = 0x6000000;
    temp_a1 = *(void *)0x8004D2B4;
    if (temp_a1 != 0) {
        temp_v1 = *(void *)0x8004D2BC;
        temp_t8 = temp_v1 - 1;
        phi_v1 = temp_v1;
        if (temp_v1 != 0) {
            *(void *)0x8004D2BC = temp_t8;
            phi_v1 = temp_t8;
        }
        temp_v0_4 = 0xF - phi_v1;
        temp_lo = temp_v0_4 * temp_v0_4;
        *(void *)0x8008C660 = (s32) (temp_lo >> 1);
        *(void *)0x8008C664 = temp_lo;
        phi_t0 = (void *)0x8008C660;
        phi_a3 = 0xF;
        if ((*(void *)0x8007B2E4 & 0x480) == 0) {
            if ((0.0f == *(void *)0x8007BAE4) && (0.0f == *(void *)0x8007BAEC)) {
                temp_t5 = *(void *)0x8004D2B8 + 1;
                *(void *)0x8004D2B8 = temp_t5;
                phi_t0 = (void *)0x8008C660;
                phi_a3 = 0xF;
                if (temp_t5 >= 0x1F) {
                    *(void *)0x8004D2BC = 0xF;
                    *(void *)0x8004D2B4 = (u8)0U;
block_18:
                    *(void *)0x8004D2B8 = 0;
                }
            } else {
                goto block_18;
            }
        }
    } else {
        temp_v1_2 = *(void *)0x8004D2BC;
        temp_t7 = temp_v1_2 - 1;
        phi_v1_2 = temp_v1_2;
        if (temp_v1_2 != 0) {
            *(void *)0x8004D2BC = temp_t7;
            phi_v1_2 = temp_t7;
        }
        temp_lo_2 = phi_v1_2 * phi_v1_2;
        *(void *)0x8008C660 = (s32) (temp_lo_2 >> 1);
        *(void *)0x8008C664 = temp_lo_2;
        phi_t0 = (void *)0x8008C660;
        phi_a3 = 0xF;
        if ((*(void *)0x8008C592 & 1) == 0) {
            phi_t0 = (void *)0x8008C660;
            phi_a3 = 0xF;
            if ((*(void *)0x8007B2E4 & 0x480) == 0) {
                if ((0.0f != *(void *)0x8007BAE4) || (0.0f != *(void *)0x8007BAEC)) {
                    temp_t6 = *(void *)0x8004D2B8 + 1;
                    *(void *)0x8004D2B8 = temp_t6;
                    phi_t0 = (void *)0x8008C660;
                    phi_a3 = 0xF;
                    if (temp_t6 >= 0x1F) {
                        *(void *)0x8004D2BC = 0xF;
                        *(void *)0x8004D2B4 = (u8) (temp_a1 + 1);
                        goto block_18;
                    }
                } else {
                    goto block_18;
                }
            }
        }
    }
    *(void *)0x8008C648 = (s32) (0x1C - *phi_t0);
    temp_t5_2 = *(void *)0x8007B2E4 & 0xC00;
    *(void *)0x8008C64C = 0x18;
    phi_v0 = temp_t5_2;
    if (temp_t5_2 == 0) {
        func_8001E7FC(0x8007BACC, temp_a1, (void *)0x8004D2B4, phi_a3);
        phi_v0 = *(void *)0x8007B2E4 & 0xC00;
    }
    *(void *)0x8008C648 = (s32) (0x1C - *(void *)0x8008C664);
    *(void *)0x8008C64C = 0xC5;
    if (phi_v0 == 0) {
        func_8001EBDC(*(void *)0x8007BAC8);
    }
    temp_t3 = *(void *)0x8008C592 & 1;
    phi_v0_2 = temp_t3;
    if ((*(void *)0x80084EE0 & 0xD) != 0) {
        phi_v0_2 = temp_t3;
        if (temp_t3 == 0) {
            phi_v0_2 = temp_t3;
            if (((*(void *)0x80084F1C)->unk14 & 8) == 0) {
                func_8001EA84(arg0);
                phi_v0_2 = *(void *)0x8008C592 & 1;
            }
        }
    }
    *(void *)0x8008C64C = 0;
    *(void *)0x8008C648 = 0;
    if (phi_v0_2 != 0) {
        if (*(void *)0x8008C630 != 0) {
            func_800203D0();
            *(void *)0x8008C630 = (u16) (*(void *)0x8008C630 - 1);
        }
    }
    temp_v0_5 = *(void *)0x8007B2E4;
    if ((temp_v0_5 & 4) != 0) {
        phi_return_3 = func_8001ED5C(0x8007BAB8);
    } else {
        phi_return_3 = temp_v0_5;
        if ((temp_v0_5 & 8) != 0) {
            phi_return_3 = func_8001F3DC(0x8007BAB8);
        }
    }
    *(void *)0x8008C64C = 0;
    *(void *)0x8008C648 = 0;
    *(void *)0x8008C658 = 0x140;
    *(void *)0x8008C65C = 0xF0;
    if ((*(void *)0x8008C592 & 1) != 0) {
        func_80020988();
        if ((*(void *)0x8008C592 & 2) == 0) {
            temp_v0_6 = *(void *)0x8007BABA;
            if (temp_v0_6 != 0) {
                if ((*(void *)0x8007BB2C & 1) == 0) {
                    if ((*(void *)0x80086F10 & 1) == 0) {
                        func_8001FA60((temp_v0_6 - 1) & 0xFFFF);
                    }
                }
            }
        }
        if ((*(void *)0x8007BAC0 & 0x20) != 0) {
            if ((*(void *)0x8007B2E4 & 0x800) == 0) {
                func_8001FB94();
            }
        }
        func_8001FEEC(0x8007BACC);
        temp_v0_7 = *(void *)0x8007C990;
        phi_v1_3 = (void *)0x8007C998;
        phi_v0_3 = temp_v0_7;
        phi_return_2 = temp_v0_7;
        phi_return = temp_v0_7;
        if (temp_v0_7 != 0) {
loop_44:
            phi_v0_4 = phi_v0_3;
            if (phi_v1_3->unk74 != -1) {
                sp24 = phi_v0_3;
                sp1C = phi_v1_3;
                func_8001FEEC(phi_v1_3 + 0x24);
                temp_v0_8 = phi_v0_3 - 1;
                phi_v0_4 = temp_v0_8;
                phi_return = temp_v0_8;
            }
            phi_v1_3 = phi_v1_3 + 0x128;
            phi_v0_3 = phi_v0_4;
            if (phi_v0_4 != 0) {
                goto loop_44;
            }
            return phi_return;
        }
    } else {
        if (*(void *)0x8007BA74 != 0) {
            if ((*(void *)0x8007B2E4 & 7) == 0) {
                return func_8001F818();
            }
        }
        if (*(void *)0x8007BA78 != 0) {
            if ((*(void *)0x8007B2E4 & 0xB) == 0) {
                return func_8001F900();
            }
        }
        phi_return_2 = phi_return_3;
        if (*(void *)0x8007BA7C != 0) {
            phi_return_2 = phi_return_3;
            if ((*(void *)0x8007B2E4 & 7) == 0) {
                phi_return_2 = func_8001F9B0();
            }
        }
    }
    return phi_return_2;
}

void func_8001E7FC(void *arg0) {
    s32 temp_lo;
    s32 temp_lo_2;
    void *temp_s0;

    temp_s0 = arg0->unk64;
    func_800210FC(0x803A6F40, 0, 1, 0x3E, 0x11, 0x20, 0x27, 0x400, 0x400);
    func_800210FC(0x803A6F40, 0, 0x12, 0x3E, 0x12, 0x20, 0x38, 0x400, 0x400);
    temp_lo = (s32) (temp_s0->unk4 * 0x38) / (s32) temp_s0->unk6;
    if (temp_lo != 0) {
        func_800210FC(0x803A6F40, 3, 0xB, temp_lo, 5, 0x5E, 0x27, 0x400, 0x400);
    }
    temp_lo_2 = (s32) (temp_s0->unk8 * 0x38) / (s32) temp_s0->unkA;
    if (temp_lo_2 != 0) {
        func_800210FC(0x803A6F40, 3, 0x15, temp_lo_2, 5, 0x5E, 0x2C, 0x400, 0x400);
    }
    func_80020E2C(0x803A6F40, 0x20, 0x1D, 0x80, 0xA);
    func_80020D4C(3, 0xC, 0, temp_s0->unk4);
    func_80020D4C(1, 0x36, 0, temp_s0->unk6);
    func_80020D4C(3, 0xC, 0x1B, temp_s0->unk8);
    func_80020D4C(1, 0x36, 0x1B, temp_s0->unkA);
    func_80020F8C(0x2F, 0, 8, 0xA, 0x70, 0x1D, 0x400, 0x400);
    func_80020F8C(0x2F, 0x1B, 8, 0xA, 0x70, 0x1D, 0x400, 0x400);
}

void func_8001EA84(s32 arg0) {
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    ? sp38;
    void *temp_v0;
    void *temp_v0_2;

    *(void *)0x8008C648 = 0x104;
    *(void *)0x8008C64C = 0x18;
    func_80023570(&sp38, 0, 0, *(void *)0x80086DEC);
    sp68 = (f32) (*(void *)0x8008C648 + 0x11);
    sp70 = 0.0f;
    sp6C = (f32) (*(void *)0x8008C64C + 0x11);
    func_80035200(&sp38, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x1020040;
    temp_v0->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x803A8EA0;
    temp_v0_2->unk0 = 0x6000000;
    func_800210FC(0x803A6F40, 0xD, 0xA, 0xB, 0xE, 0x93, 0, 0x400, 0x400);
}

void func_8001EBDC(void *arg0) {
    s32 temp_s1;
    s32 phi_s0;
    void *phi_s2;
    s32 phi_s1;

    func_800210FC(0x803A6F40, 0, 0, 0xC, 0xC, 0x20, 0x10, 0x400, 0x400);
    func_800210FC(0x803A6F40, 0x16, 0, 0xC, 0xC, 0x2C, 0x10, 0x400, 0x400);
    func_800210FC(0x803A6F40, 0x2C, 0, 0xC, 0xC, 0x38, 0x10, 0x400, 0x400);
    func_800210FC(0x803A6F40, 0x42, 0, 0xC, 0xC, 0x44, 0x10, 0x400, 0x400);
    func_80020E2C(0x803A6F40, 0x20, 0x1D, 0x80, 0xA);
    phi_s0 = 6;
    phi_s2 = arg0;
    phi_s1 = 0;
loop_1:
    func_80020D4C(1, phi_s0, 6, phi_s2->unk24);
    temp_s1 = phi_s1 + 1;
    phi_s0 = phi_s0 + 0x16;
    phi_s2 = phi_s2 + 1;
    phi_s1 = temp_s1;
    if (temp_s1 != 4) {
        goto loop_1;
    }
}

void func_8001ED5C(void *arg0) {
    u32 sp74;
    s32 sp6C;
    u8 sp6B;
    ? sp68;
    ? sp60;
    s32 sp38;
    ? *temp_s0;
    s32 temp_a3;
    s32 temp_t6;
    s32 temp_v0_10;
    s32 temp_v0_13;
    s32 temp_v0_15;
    s32 temp_v0_17;
    s32 temp_v0_19;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a0_5;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_14;
    u32 temp_v0_16;
    u32 temp_v0_18;
    u32 temp_v0_9;
    u8 temp_t0;
    u8 temp_t0_2;
    u8 temp_t0_3;
    u8 temp_t0_4;
    u8 temp_t0_5;
    void *temp_s0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_v1;
    ? *phi_s0;
    u32 phi_v0;
    u32 phi_v0_2;
    s32 phi_a3;
    s32 phi_a3_2;
    s32 phi_a3_3;
    s32 phi_a3_4;

    sp60.unk0 = (s32) (void *)0x8004D300->unk0;
    sp60.unk4 = (s32) (void *)0x8004D300->unk4;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xBA000C02;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk0 = 0xFD100000;
    temp_v0_3->unk4 = 0x8039D990;
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
    *(void *)0x8008C648 = 0x18;
    *(void *)0x8008C64C = 0x3E;
    func_800210FC(0x803A6F60, 0, 0, 0x6E, 0xE, 0x64, 0xE, 0x400, 0x400);
    *(void *)0x8008C648 = 0x24;
    *(void *)0x8008C64C = 0x94;
    func_800210FC(0x803A6F60, 0x45, 0, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0, 0x18, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x8C, 0x18, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x45, 0x32, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x6A, 0xE, 0x24, 0x24, 0x40, 0, 0x400, 0x400);
    if (arg0->unk11C != 0) {
        *(void *)0x8008C648 = 0x18;
        *(void *)0x8008C64C = 0x3E;
        temp_v0_9 = func_80014890(arg0->unk11C, arg0 + 0x119);
        temp_a0 = temp_v0_9;
        sp74 = temp_v0_9;
        temp_v0_10 = func_800149D0(temp_a0, arg0->unk10->unk8);
        temp_t0 = temp_v0_10 & 0xFF;
        temp_a3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_10 & 4) == 0) {
            sp6C = temp_a3;
            sp6B = temp_t0;
            func_80020B4C(0x37 - (func_80020D18(temp_a3, temp_a3) * 3), 3, (sp + temp_t0)->unk60, temp_a3);
        }
    }
    if ((s32) arg0->unk11C < 3) {
        *(void *)0x8008C648 = 0x24;
        *(void *)0x8008C64C = 0x94;
        phi_v0_2 = 0U;
        if (arg0->unk11C != 0) {
            phi_v1 = arg0;
            phi_s0 = &sp68;
            phi_v0 = 0U;
loop_6:
            temp_v0_11 = phi_v0 + 1;
            temp_s0 = phi_s0 + 1;
            temp_s0->unk-1 = (u8) phi_v1->unk119;
            phi_v1 = phi_v1 + 1;
            phi_s0 = temp_s0;
            phi_v0 = temp_v0_11;
            phi_v0_2 = temp_v0_11;
            if (temp_v0_11 < (u32) arg0->unk11C) {
                goto loop_6;
            }
        }
        temp_s0_2 = &sp68 + phi_v0_2;
        *temp_s0_2 = (u8)0;
        temp_t6 = (phi_v0_2 + 1) & 0xFFFF;
        sp38 = temp_t6;
        temp_v0_12 = func_80014890(temp_t6, &sp68);
        temp_a0_2 = temp_v0_12;
        sp74 = temp_v0_12;
        temp_v0_13 = func_800149D0(temp_a0_2, arg0->unk10->unk8);
        temp_t0_2 = temp_v0_13 & 0xFF;
        phi_a3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_13 & 4) != 0) {
            phi_a3 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3;
        sp6B = temp_t0_2;
        func_80020B4C(0x7C - (func_80020D18(phi_a3, phi_a3) * 3), 3, (sp + temp_t0_2)->unk60, phi_a3);
        *temp_s0_2 = (u8)1;
        temp_v0_14 = func_80014890(sp3A, &sp68);
        temp_a0_3 = temp_v0_14;
        sp74 = temp_v0_14;
        temp_v0_15 = func_800149D0(temp_a0_3, arg0->unk10->unk8);
        temp_t0_3 = temp_v0_15 & 0xFF;
        phi_a3_2 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_15 & 4) != 0) {
            phi_a3_2 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_2;
        sp6B = temp_t0_3;
        func_80020B4C(0x37 - (func_80020D18(phi_a3_2, phi_a3_2) * 3), 0x1B, (sp + temp_t0_3)->unk60, phi_a3_2);
        *temp_s0_2 = (u8)2;
        temp_v0_16 = func_80014890(sp3A, &sp68);
        temp_a0_4 = temp_v0_16;
        sp74 = temp_v0_16;
        temp_v0_17 = func_800149D0(temp_a0_4, arg0->unk10->unk8);
        temp_t0_4 = temp_v0_17 & 0xFF;
        phi_a3_3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_17 & 4) != 0) {
            phi_a3_3 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_3;
        sp6B = temp_t0_4;
        func_80020B4C(0x7C - (func_80020D18(phi_a3_3, phi_a3_3) * 3), 0x35, (sp + temp_t0_4)->unk60, phi_a3_3);
        *temp_s0_2 = (u8)3;
        temp_v0_18 = func_80014890(sp3A, &sp68);
        temp_a0_5 = temp_v0_18;
        sp74 = temp_v0_18;
        temp_v0_19 = func_800149D0(temp_a0_5, arg0->unk10->unk8);
        temp_t0_5 = temp_v0_19 & 0xFF;
        phi_a3_4 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_19 & 4) != 0) {
            phi_a3_4 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_4;
        sp6B = temp_t0_5;
        func_80020B4C(0xC3 - (func_80020D18(phi_a3_4, phi_a3_4) * 3), 0x1B, (sp + temp_t0_5)->unk60, phi_a3_4);
    }
}

void *func_8001F3DC(void *arg0) {
    u16 temp_v1;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a0_4;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t9;
    void *phi_return;

    *(void *)0x8008C648 = 0;
    *(void *)0x8008C64C = 0;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x8039D990;
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
    func_800210FC(0x803A6F60, 0x81, 0x48, 0x40, 0x14, 0, 0, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x81, 0x5C, 0x40, 0x14, 0, 0x14, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x81, 0x70, 0x40, 0x14, 0, 0x28, 0x400, 0x400);
    func_800210FC(0x803A6F60, 0x81, 0x84, 0x40, 0x14, 0, 0x3C, 0x400, 0x400);
    func_80020E2C(0x803A6F40, 0x20, 0x1D, 0x80, 0xA);
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = 0xFD100000;
    temp_v0_8->unk4 = 0x80399AB0;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = 0;
    temp_v0_9->unk0 = 0xE8000000;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0x7000000;
    temp_v0_10->unk0 = 0xF5000100;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE6000000;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk4 = 0x73FC000;
    temp_v0_12->unk0 = 0xF0000000;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0;
    temp_v0_13->unk0 = 0xE7000000;
    func_80020D4C(5, 0x9D, 0x6C, *(void *)0x8007BAA4);
    func_80020D4C(5, 0x8B, 0x7C, *(void *)0x8007BAA5);
    func_80020D4C(5, 0x9D, 0x8B, *(void *)0x8007BAA6);
    temp_v1 = *(void *)0x80092876;
    phi_return = func_80020D4C(5, 0xAF, 0x7C, *(void *)0x8007BAA7);
    if (((temp_v1 & 8) != 0) && (temp_v0_14 = arg0->unk10, temp_a0 = temp_v0_14->unk24, phi_return = temp_v0_14, (((s32) temp_a0 < 0x32) != 0))) {
        temp_v0_14->unk24 = (u8) (temp_a0 + 1);
        phi_t9 = *(void *)0x8007B2E4 & -9;
        phi_return = temp_v0_14;
block_12:
        *(void *)0x8007B2E4 = phi_t9;
    } else {
        if (((temp_v1 & 4) != 0) && (temp_v0_15 = arg0->unk10, temp_a0_2 = temp_v0_15->unk26, phi_return = temp_v0_15, (((s32) temp_a0_2 < 0x32) != 0))) {
            temp_v0_15->unk26 = (u8) (temp_a0_2 + 1);
            phi_t9 = *(void *)0x8007B2E4 & -9;
            phi_return = temp_v0_15;
            goto block_12;
        } else {
            if (((temp_v1 & 1) != 0) && (temp_v0_16 = arg0->unk10, temp_a0_3 = temp_v0_16->unk27, phi_return = temp_v0_16, (((s32) temp_a0_3 < 0x32) != 0))) {
                temp_v0_16->unk27 = (u8) (temp_a0_3 + 1);
                phi_t9 = *(void *)0x8007B2E4 & -9;
                phi_return = temp_v0_16;
                goto block_12;
            } else {
                if ((temp_v1 & 2) != 0) {
                    temp_v0_17 = arg0->unk10;
                    temp_a0_4 = temp_v0_17->unk25;
                    phi_return = temp_v0_17;
                    if ((s32) temp_a0_4 < 0x32) {
                        temp_v0_17->unk25 = (u8) (temp_a0_4 + 1);
                        phi_t9 = *(void *)0x8007B2E4 & -9;
                        phi_return = temp_v0_17;
                        goto block_12;
                    }
                }
            }
        }
    }
    if ((*(void *)0x8007B2E4 & 8) == 0) {
        phi_return = func_800268D4(0, 4, 0xFF);
    }
    return phi_return;
}

void func_8001F818(void) {
    s32 sp34;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = ((*(void *)0x8007BA74 * 0x84) - 0x70) + 0x8007BD30;
    if (func_8002413C(temp_v0->unk0, (f32) ((f64) temp_v0->unk4 + 14.0), temp_v0->unk8, &sp34, 0x8008C644) != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x803A8B90;
        func_80020F8C(sp34, *(void *)0x8008C644 - 0x1E, 0x40, 0x1D, 0, 0, 0x400, 0x400);
        return;
    }
    *(void *)0x8008C644 = 0xF0;
}

void func_8001F900(void) {
    s32 sp34;
    s32 sp30;
    void *temp_v1;

    if (func_8002413C((void *)0x8007BAB8->unk14, (f32) ((f64) (void *)0x8007BAB8->unk18 + 11.0), (void *)0x8007BAB8->unk1C, &sp34, &sp30) != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x803A8C80;
        func_80020F8C(sp34, sp30 - 0x1E, 0x18, 0x1E, 0, 0, 0x400, 0x400);
    }
}

void func_8001F9B0(void) {
    s32 sp34;
    s32 sp30;
    void *temp_v1;

    if (func_8002413C((void *)0x8007BAB8->unk14, (f32) ((f64) (void *)0x8007BAB8->unk18 + 11.0), (void *)0x8007BAB8->unk1C, &sp34, &sp30) != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x803A8C08;
        func_80020F8C(sp34, sp30 - 0x1E, 0x10, 0x1E, 0, 0, 0x400, 0x400);
    }
}

void func_8001FA60(s32 arg0) {
    s32 sp44;
    s32 sp40;
    s32 temp_t6;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    f32 phi_f14;
    void *phi_a0;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 * 0x128) + 0x8007C998;
    temp_v0 = temp_v1 + 0x24;
    if (*temp_v1->unk88 == 1) {
        temp_v0_2 = temp_v1 + 0x24;
        phi_v0 = temp_v0_2;
        phi_f14 = temp_v0_2->unk68->unk94;
        phi_a0 = (void *) temp_t6;
    } else {
        temp_a0 = temp_v0->unk64;
        if (temp_a0->unk0 == 2) {
            phi_v0 = temp_v0;
            phi_f14 = (f32) ((f64) temp_v0->unk4 + (*(void *)0x800716C0 * (f64) temp_v0->unk24));
            phi_a0 = temp_a0;
        } else {
            phi_v0 = temp_v0;
            phi_f14 = temp_v0->unk4 + (temp_a0->unk1C * temp_v0->unk24);
            phi_a0 = temp_a0;
        }
    }
    if (func_8002413C(phi_v0->unk0, phi_f14, phi_a0, phi_v0->unk8, &sp44, &sp40) != 0) {
        temp_v1_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
        temp_v1_2->unk0 = 0x6000000;
        temp_v1_2->unk4 = 0x803A8CF8;
        func_80020F8C(sp44 - 4, sp40 - 0x2A, 0x18, 0x2A, 0, 0, 0x400, 0x400);
    }
}

void func_8001FB94(void) {
    s32 sp5C;
    s32 sp58;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    if (func_8002413C((void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk18 + ((void *)0x8007BAB8->unk78->unk1C * (void *)0x8007BAB8->unk38), (void *)0x8007BAB8->unk1C, &sp5C, &sp58) != 0) {
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0xE7000000;
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk4 = 0x803A2960;
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
        func_800210FC(0x803A6F70, sp5C - 0x17, sp58 - 0xF, 0x2E, 0xF, 0x51, 0x31, 0x400, 0x400);
    }
}

s32 func_8001FCF8(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *sp38;
    s32 temp_a3;
    s32 temp_ret;
    s32 temp_t6;
    s32 temp_v0;
    s8 temp_t7;
    u32 temp_v0_2;
    void *temp_a0;
    void *temp_t1;
    void *temp_t2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    u32 phi_v0;
    void *phi_v1_2;
    s32 phi_v0_2;
    f32 phi_f0;

    temp_t6 = arg1 & 0xFFFF;
    temp_t7 = arg2 & 0xFFFF;
    temp_a3 = (s32) (arg3 << 0x10) >> 0x10;
    temp_t2 = arg0->unk68;
    phi_v1 = (void *)0x8004D2CC;
    phi_v0 = 0U;
loop_1:
    if ((*phi_v1 & temp_t6) != 0) {
        temp_v1 = temp_t2 + phi_v0;
        temp_v1->unk12 = temp_t7;
        temp_v1->unk22 = (s8) temp_a3;
    } else {
        temp_v0_2 = phi_v0 + 1;
        phi_v1 = phi_v1 + 2;
        phi_v0 = temp_v0_2;
        if (temp_v0_2 < 7U) {
            goto loop_1;
        }
    }
    phi_v1_2 = (void *)0x8004D2DC;
    phi_v0_2 = 0;
loop_5:
    temp_t1 = temp_t2 + (phi_v0_2 * 4);
    if ((*phi_v1_2 & temp_t6) != 0) {
        if (temp_t1->unk44 == 0) {
            (temp_t2 + phi_v0_2)->unk32 = (s8) temp_a3;
            temp_v1_2 = (temp_t7 * 0x10) + 0x803A8E0C;
            (void *)0x8008C748->unk0 = (f32) temp_v1_2->unk8;
            (void *)0x8008C748->unk4 = (f32) temp_v1_2->unkC;
            (void *)0x8008C748->unk8 = 1.0f;
            temp_a0 = arg0->unk64;
            if (temp_a0->unk0 == 1) {
                if ((temp_v1_2->unk4 & 0x100) != 0) {
                    phi_f0 = arg0->unk68->unk94;
                } else {
                    phi_f0 = arg0->unk68->unk94 - (temp_a0->unk18 * arg0->unk24);
                }
            } else {
                if ((temp_v1_2->unk4 & 0x100) != 0) {
                    phi_f0 = (f32) ((f64) arg0->unk4 + (((f64) temp_a0->unk1C * 0.5) * (f64) arg0->unk24));
                } else {
                    phi_f0 = arg0->unk4;
                }
            }
            sp38 = temp_t1;
            temp_ret = func_800177F8(temp_v1_2->unk2, temp_v1_2->unk4, arg0->unk0, phi_f0, arg0->unk8, 0.0f, (temp_v1_2->unk0 * 0xA) + 0x803A8DD8, (void *)0x8008C748, arg0);
            temp_t1->unk44 = temp_ret;
            return temp_ret;
        }
    }
    temp_v0 = phi_v0_2 + 1;
    phi_v1_2 = phi_v1_2 + 2;
    phi_v0_2 = temp_v0;
    if (temp_v0 != 4) {
        goto loop_5;
    }
    return temp_v0;
}

void *func_8001FEEC(void *arg0) {
    s32 spB4;
    s32 spB0;
    s32 spAC;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_t4;
    s8 temp_v0_3;
    s8 temp_v1_12;
    u16 temp_s1;
    u16 temp_s2;
    u16 temp_v1_11;
    u16 temp_v1_13;
    u8 temp_v1_9;
    void *temp_fp;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    f32 phi_f14;
    void *phi_s0;
    s32 phi_t4;
    s32 phi_s7;
    s32 phi_s6;
    s32 phi_s4;
    void *phi_a0;
    s32 phi_a2;
    s32 phi_s4_2;
    void *phi_return;

    temp_v0 = arg0->unk68;
    temp_fp = temp_v0;
    if ((*(void *)0x8007B2E4 & 0x800) == 0) {
        temp_v1 = arg0->unk64;
        if (temp_v1->unk0 == 1) {
            phi_f14 = temp_v0->unk94;
        } else {
            phi_f14 = arg0->unk4 + (temp_v1->unk1C * arg0->unk24);
        }
        temp_t4 = func_8002413C(arg0->unk0, phi_f14, arg0->unk8, &spB0, &spAC);
        temp_v1_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
        temp_v1_2->unk4 = 0;
        temp_v1_2->unk0 = 0xE7000000;
        temp_v1_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
        temp_v1_3->unk4 = 0x803A2960;
        temp_v1_3->unk0 = 0xFD100000;
        temp_v1_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_4 + 8);
        temp_v1_4->unk4 = 0;
        temp_v1_4->unk0 = 0xE8000000;
        temp_v1_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_5 + 8);
        temp_v1_5->unk4 = 0x7000000;
        temp_v1_5->unk0 = 0xF5000100;
        temp_v1_6 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_6 + 8);
        temp_v1_6->unk4 = 0;
        temp_v1_6->unk0 = 0xE6000000;
        temp_v1_7 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_7 + 8);
        temp_v1_7->unk4 = 0x73FC000;
        temp_v1_7->unk0 = 0xF0000000;
        temp_v1_8 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_8 + 8);
        temp_v1_8->unk4 = 0;
        temp_v1_8->unk0 = 0xE7000000;
        phi_s0 = temp_fp;
        phi_t4 = temp_t4;
        phi_s7 = 0;
        phi_s6 = 0;
        phi_s4 = 0;
loop_5:
        temp_v1_9 = phi_s0->unk12;
        if (temp_v1_9 != 0) {
            temp_v0_2 = (temp_v1_9 * 8) + 0x803A8D70;
            temp_s1 = temp_v0_2->unk4;
            temp_s2 = temp_v0_2->unk6;
            if (phi_t4 != 0) {
                spB4 = phi_t4;
                func_800210FC(0x803A6F70, (spB0 + phi_s7) - ((s32) temp_s1 >> 1), (spAC + phi_s6) - ((s32) temp_s2 >> 1), temp_s1, (?32) temp_s2, (?32) temp_v0_2->unk0, (?32) temp_v0_2->unk2, 0x400, 0x400);
            }
            if ((*((phi_s4 * 2) + 0x8004D2CC) & temp_fp->unk0) == 0) {
block_12:
                phi_s0->unk12 = (u8)0U;
            } else {
                temp_v0_3 = phi_s0->unk22;
                if ((s32) temp_v0_3 > 0) {
                    phi_s0->unk22 = (s8) (temp_v0_3 - 1);
                    if (phi_s0->unk22 == 0) {
                        goto block_12;
                    }
                }
            }
            phi_s7 = phi_s7 + ((s32) temp_s1 >> 1);
            phi_s6 = phi_s6 - ((s32) temp_s2 >> 1);
        }
        temp_s4 = phi_s4 + 1;
        phi_s0 = phi_s0 + 1;
        phi_s4 = temp_s4;
        if (temp_s4 != 7) {
            goto loop_5;
        }
    }
    phi_a0 = temp_fp;
    phi_a2 = 0;
    phi_s4_2 = 0;
    phi_return = NULL;
loop_16:
    if (phi_a0->unk44 != 0) {
        temp_v0_4 = (arg0->unk68 + phi_a2)->unk44;
        temp_v0_4->unkC = (f32) arg0->unk0;
        temp_s0 = temp_fp + phi_s4_2;
        temp_v0_4->unk14 = (bitwise f32) arg0->unk8;
        temp_v1_10 = arg0->unk64;
        if (1 == temp_v1_10->unk0) {
            if ((temp_v0_4->unk8 & 0x100) != 0) {
                temp_v0_4->unk10 = (f32) arg0->unk68->unk94;
            } else {
                temp_v0_4->unk10 = (f32) (arg0->unk68->unk94 - (temp_v1_10->unk18 * arg0->unk24));
            }
        } else {
            if ((temp_v0_4->unk8 & 0x100) != 0) {
                temp_v0_4->unk10 = (f32) ((f64) arg0->unk4 + (((f64) temp_v1_10->unk1C * 0.5) * (f64) arg0->unk24));
            } else {
                temp_v0_4->unk10 = (f32) arg0->unk4;
            }
        }
        if ((*((phi_s4_2 * 2) + 0x8004D2DC) & temp_fp->unk0) == 0) {
            phi_a0->unk44 = 0;
            temp_v1_11 = temp_v0_4->unk8;
            phi_return = temp_v0_4;
            if ((temp_v1_11 & 1) != 0) {
                temp_v0_4->unk8 = (u16) (temp_v1_11 & -2);
block_31:
                temp_v0_4->unk0 = (u16)8;
                phi_return = temp_v0_4;
            }
        } else {
            temp_v1_12 = temp_s0->unk32;
            phi_return = temp_v0_4;
            if ((s32) temp_v1_12 > 0) {
                temp_s0->unk32 = (s8) (temp_v1_12 - 1);
                phi_return = temp_v0_4;
                if (temp_s0->unk32 == 0) {
                    phi_a0->unk44 = 0;
                    temp_v1_13 = temp_v0_4->unk8;
                    phi_return = temp_v0_4;
                    if ((temp_v1_13 & 1) != 0) {
                        temp_v0_4->unk8 = (u16) (temp_v1_13 & -2);
                        goto block_31;
                    }
                }
            }
        }
    }
    temp_s4_2 = phi_s4_2 + 1;
    phi_a0 = phi_a0 + 4;
    phi_a2 = phi_a2 + 4;
    phi_s4_2 = temp_s4_2;
    if (temp_s4_2 != 4) {
        goto loop_16;
    }
    return phi_return;
}

void *func_800202E4(void *arg0) {
    u32 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_v0;
    void *phi_a1;
    u32 phi_v1;

    temp_v0 = arg0->unk68;
    phi_a1 = temp_v0;
    phi_v1 = 0U;
loop_1:
    temp_v1 = phi_v1 + 1;
    if (phi_a1->unk12 != 0) {
        phi_a1->unk12 = (u8)0U;
    }
    phi_a1 = phi_a1 + 1;
    phi_v1 = temp_v1;
    if (temp_v1 < 7U) {
        goto loop_1;
    }
    temp_a0 = temp_v0->unk44;
    if (temp_a0 != 0) {
        temp_a0->unk0 = (u16)8;
        temp_a0->unk8 = (u16) (temp_a0->unk8 & 0xFFFE);
        temp_v0->unk44 = 0;
    }
    temp_a0_2 = temp_v0->unk48;
    if (temp_a0_2 != 0) {
        temp_a0_2->unk0 = (u16)8;
        temp_a0_2->unk8 = (u16) (temp_a0_2->unk8 & -2);
        temp_v0->unk48 = NULL;
    }
    temp_a0_3 = temp_v0->unk4C;
    if (temp_a0_3 != 0) {
        temp_a0_3->unk0 = (u16)8;
        temp_a0_3->unk8 = (u16) (temp_a0_3->unk8 & -2);
        temp_v0->unk4C = NULL;
    }
    temp_a0_4 = temp_v0->unk50;
    if (temp_a0_4 != 0) {
        temp_a0_4->unk0 = (u16)8;
        temp_a0_4->unk8 = (u16) (temp_a0_4->unk8 & -2);
        temp_v0->unk50 = NULL;
    }
    return temp_v0;
}

void func_800203A8(void) {

}

void func_800203B0(void) {

}

void func_800203B8(void) {

}

void func_800203C0(void) {

}

void func_800203C8(void) {

}

u16 func_800203D0(void) {
    u16 temp_v0_14;
    void *temp_t1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    u16 phi_return;

    *(void *)0x8008C648 = 0xB5;
    *(void *)0x8008C64C = 0x1A;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x8039D990;
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
    if (((*(void *)0x8007D088)->unk90 & 0x80) != 0) {
        func_800210FC(0x803A6F60, 0, 0, 0x6E, 0x10, 0x64, 0x1C, 0x400, 0x400);
        func_800210FC(0x803A6F60, 0, 0x10, 0x6E, 0x10, 0x64, 0x2C, 0x400, 0x400);
        func_800210FC(0x803A6F60, 0, 0x20, 0x6E, 0x10, 0x64, 0x3C, 0x400, 0x400);
        func_800210FC(0x803A6F60, 0, 0x30, 0x6E, 4, 0x64, 0x4C, 0x400, 0x400);
    } else {
        func_800210FC(0x803A6F60, 0, 0, 0x6E, 0x10, 0x64, 0x1C, 0x400, 0x400);
        func_800210FC(0x803A6F60, 0, 0x10, 0x6E, 0xA, 0x64, 0x2C, 0x400, 0x400);
        func_800210FC(0x803A6F60, 0, 0x1A, 0x6E, 2, 0x64, 0x4E, 0x400, 0x400);
    }
    func_80020B4C(4, 0x11, 0, *(*(void *)0x8007D0AC + ((*(void *)0x8007D088)->unk20->unk2 * 4)));
    func_80020E2C(0x803A6F40, 0x20, 0x1D, 0x80, 0xA);
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = 0xFD100000;
    temp_v0_8->unk4 = 0x80399AB0;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = 0;
    temp_v0_9->unk0 = 0xE8000000;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0x7000000;
    temp_v0_10->unk0 = 0xF5000100;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE6000000;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk4 = 0x73FC000;
    temp_v0_12->unk0 = 0xF0000000;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0;
    temp_v0_13->unk0 = 0xE7000000;
    temp_t1 = *(void *)0x8007D088;
    phi_return = (u16) temp_v0_13;
    if ((temp_t1->unk90 & 0x80) != 0) {
        func_80020D4C(3, 0x10, 0x1C, temp_t1->unk20->unk6);
        func_80020D4C(3, 0x10, 0x26, (*(void *)0x8007D088)->unk20->unkE);
        func_80020D4C(3, 0x46, 0x1C, (*(void *)0x8007D088)->unk20->unk2A);
        func_80020D4C(3, 0x46, 0x26, (*(void *)0x8007D088)->unk20->unkC);
        temp_v0_14 = (*(void *)0x8007D088)->unk20->unk26;
        phi_return = temp_v0_14;
        if (temp_v0_14 != 4) {
            phi_return = func_800210FC(0x803A6F40, 0x5B, 3, 0xC, 0xC, (temp_v0_14 * 0xC) + 0x20, 0x10, 0x400, 0x400);
        }
    }
    return phi_return;
}

void *func_80020888(void) {
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;

    phi_v0 = (void *)0x8008C668;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 4;
    phi_v0->unk0 = (u16)0;
    phi_v0->unk1C = (u16)0;
    phi_v0->unk38 = (u16)0;
    phi_v0->unk54 = (u16)0;
    temp_v0 = phi_v0 + 0x70;
    phi_v0 = temp_v0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

f32 func_800208B8(void *arg0) {
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

void *func_80020988(void) {
    s32 sp74;
    s32 sp70;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_s1;
    u16 temp_a3;
    u16 temp_v0_9;
    void *temp_ret;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_s0;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f0;
    s32 phi_s1;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x803A2960;
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
    phi_s0 = (void *)0x8008C668;
    phi_s1 = 8;
    phi_return = temp_v0_7;
loop_1:
    if (phi_s0->unk0 != 0) {
        temp_v0_8 = phi_s0->unk4;
        temp_f12 = phi_s0->unk8;
        temp_f14 = phi_s0->unkC;
        temp_f0 = phi_s0->unk10;
        phi_f12 = temp_f12;
        phi_f14 = temp_f14;
        phi_f0 = temp_f0;
        if (temp_v0_8 != 0) {
            phi_f12 = temp_f12 + temp_v0_8->unk0;
            phi_f14 = temp_f14 + temp_v0_8->unk4;
            phi_f0 = temp_f0 + temp_v0_8->unk8;
        }
        func_8002413C(phi_f12, phi_f14, phi_f0, &sp74, &sp70);
        temp_v0_9 = phi_s0->unk1A;
        temp_a3 = phi_s0->unk18;
        temp_ret = func_800210FC(0x803A6F70, sp74 - ((s32) temp_a3 >> 1), sp70 - temp_v0_9, temp_a3, (?32) temp_v0_9, (?32) phi_s0->unk14, (?32) phi_s0->unk16, 0x400, 0x400);
        phi_s0->unk0 = (u16) (phi_s0->unk0 - 1);
        phi_return = temp_ret;
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x1C;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    return phi_return;
}

void *func_80020B4C(s32 arg0, ? arg1, s32 arg2, void *arg3) {
    s32 temp_v1_2;
    u8 temp_v1;
    u8 temp_v1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    u8 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    s32 phi_s2;
    s32 phi_v1_3;
    void *phi_s1;
    void *phi_return;
    void *phi_s1_2;
    void *phi_return_2;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0xFD100000;
    temp_v0_2->unk4 = (s32) ((arg2 * 4) + 0x803A0000)->unk6FB0;
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
    temp_v0_6->unk4 = 0x703C000;
    temp_v0_6->unk0 = 0xF0000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    temp_v1 = *arg3;
    phi_v1 = temp_v1;
    phi_s2 = arg0;
    phi_return = temp_v0_7;
    phi_s1_2 = arg3;
    phi_return_2 = temp_v0_7;
    if (temp_v1 != 0) {
loop_1:
        if (0x20 == phi_v1) {
            phi_s1 = phi_s1_2 + 1;
            phi_s2 = phi_s2 + 6;
        } else {
            phi_v0 = (void *)0x8004D44C;
            phi_v1_2 = 0;
loop_4:
            phi_v1_3 = phi_v1_2;
            if (*phi_v0 != phi_v1) {
                temp_v1_2 = phi_v1_2 + 1;
                phi_v0 = phi_v0 + 1;
                phi_v1_2 = temp_v1_2;
                phi_v1_3 = temp_v1_2;
                if (temp_v1_2 != 0x2C) {
                    goto loop_4;
                }
            }
            phi_s1 = phi_s1_2 + 1;
            phi_s2 = phi_s2 + 6;
            phi_return_2 = func_800210FC(0x803A6F80, phi_s2, arg1, 6, 8, phi_v1_3 * 6, 0, 0x400, 0x400);
        }
        temp_v1_3 = *phi_s1;
        phi_v1 = temp_v1_3;
        phi_return = phi_return_2;
        phi_s1_2 = phi_s1;
        if (temp_v1_3 != 0) {
            goto loop_1;
        }
    }
    return phi_return;
}

s32 func_80020D18(void *arg0) {
    s32 temp_v1;
    void *phi_a0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_a0 = arg0 + 1;
    phi_v1 = 0;
    phi_v1_2 = 0;
    if (*arg0 != 0) {
loop_1:
        temp_v1 = phi_v1_2 + 1;
        phi_a0 = phi_a0 + 1;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (*phi_a0 != 0) {
            goto loop_1;
        }
    }
    return phi_v1;
}

u8 func_80020D4C(s32 arg0, s32 arg1, ? arg2, ? arg3) {
    ? sp48;
    s32 temp_s3;
    u8 temp_ret;
    u8 temp_s2;
    u8 temp_v0;
    u8 temp_v0_2;
    ? *phi_s1;
    s32 phi_s0;
    u8 phi_s2;
    u8 phi_return;

    temp_s3 = arg0 & 0xFFFF;
    temp_ret = func_80024330(arg3, &sp48, temp_s3 & 0xFFFF);
    temp_v0 = temp_ret;
    phi_return = temp_ret;
    if (temp_v0 != 0) {
        phi_s1 = &sp48;
        phi_s0 = arg1;
        phi_s2 = temp_v0;
loop_2:
        temp_v0_2 = *phi_s1;
        if (0x20 != temp_v0_2) {
            phi_return = func_80020F8C(phi_s0, arg2, 8, 0xA, (temp_v0_2 * 8) + 0x20, 0x1D, 0x400, 0x400);
block_5:
            phi_s0 = phi_s0 + 7;
        } else {
            phi_return = temp_v0_2;
            phi_return = temp_v0_2;
            if ((temp_s3 & 6) != 0) {
                goto block_5;
            }
        }
        temp_s2 = phi_s2 - 1;
        phi_s1 = phi_s1 + 1;
        phi_s2 = temp_s2;
        if (temp_s2 != 0) {
            goto loop_2;
        }
    }
    return phi_return;
}

void func_80020E24(void) {

}

void *func_80020E2C(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *sp1C;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    temp_v0_2 = *(void *)0x8007B2FC;
    temp_t2 = arg1 + arg3;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = (s32) (((arg0->unk8 - 1) & 0xFFF) | 0xFD480000);
    temp_v0_2->unk4 = (s32) arg0->unk0;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_t5 = ((((s32) ((temp_t2 - arg1) + 8) >> 3) & 0x1FF) << 9) | 0xF5480000;
    temp_v0_3->unk4 = 0x7000000;
    temp_v0_3->unk0 = temp_t5;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE6000000;
    temp_v0_5 = *(void *)0x8007B2FC;
    temp_t7 = ((arg1 * 4) & 0xFFF) << 0xC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_t9 = (arg2 * 4) & 0xFFF;
    sp8 = temp_t9;
    spC = temp_t7;
    temp_v0_5->unk0 = (s32) ((temp_t7 | 0xF4000000) | temp_t9);
    temp_t9_2 = ((temp_t2 * 4) & 0xFFF) << 0xC;
    temp_t8 = ((arg2 + arg4) * 4) & 0xFFF;
    sp0 = temp_t8;
    sp4 = temp_t9_2;
    temp_v0_5->unk4 = (s32) ((temp_t9_2 | 0x7000000) | temp_t8);
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    sp1C = temp_v0_6;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE7000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = temp_t5;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = (s32) ((temp_t7 | 0xF2000000) | sp8);
    temp_v0->unk4 = (s32) (sp4 | temp_t8);
    return temp_v0;
}

s32 func_80020F8C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    s32 phi_a0;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_a3;

    temp_v0 = *(void *)0x8008C650;
    temp_a0 = arg0 + *(void *)0x8008C648;
    temp_a2 = arg2 + temp_a0;
    temp_a1 = arg1 + *(void *)0x8008C64C;
    if (temp_a2 >= temp_v0) {
        temp_v1 = *(void *)0x8008C654;
        temp_a3 = arg3 + temp_a1;
        if (temp_a3 >= temp_v1) {
            temp_t0 = *(void *)0x8008C658;
            if (temp_t0 >= temp_a0) {
                temp_t1 = *(void *)0x8008C65C;
                if (temp_t1 >= temp_a1) {
                    phi_a2 = temp_a2;
                    if (temp_t0 < temp_a2) {
                        phi_a2 = temp_t0;
                    }
                    phi_a3 = temp_a3;
                    if (temp_t1 < temp_a3) {
                        phi_a3 = temp_t1;
                    }
                    phi_a0 = temp_a0;
                    if (temp_a0 < temp_v0) {
                        arg4 = (arg4 - temp_a0) + temp_v0;
                        phi_a0 = temp_v0;
                    }
                    phi_a1 = temp_a1;
                    if (temp_a1 < temp_v1) {
                        arg5 = (arg5 - temp_a1) + temp_v1;
                        phi_a1 = temp_v1;
                    }
                    temp_v1_2 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
                    temp_v1_2->unk4 = (s32) ((((phi_a0 * 4) & 0xFFF) << 0xC) | ((phi_a1 * 4) & 0xFFF));
                    temp_v1_2->unk0 = (s32) (((((phi_a2 * 4) & 0xFFF) << 0xC) | 0xE4000000) | ((phi_a3 * 4) & 0xFFF));
                    temp_v1_3 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
                    temp_v1_3->unk0 = 0xB4000000;
                    temp_v1_3->unk4 = (s32) ((arg4 << 0x15) | ((arg5 << 5) & 0xFFFF));
                    temp_v1_4 = *(void *)0x8007B2FC;
                    *(void *)0x8007B2FC = (void *) (temp_v1_4 + 8);
                    temp_v1_4->unk0 = 0xB3000000;
                    temp_v1_4->unk4 = (s32) ((arg6 << 0x10) | (arg7 & 0xFFFF));
                }
            }
        }
    }
    return temp_v0;
}

void func_800210FC(s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    func_80020E2C(arg5, arg6, arg3, arg4);
    func_80020F8C(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
