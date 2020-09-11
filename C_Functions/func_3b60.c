f64 func_3b60(void) {
    void *sp24;
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_ret;
    f64 temp_f0_2;
    f64 temp_f2_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    u16 temp_v0_2;
    u16 temp_v0_4;
    u16 temp_v0_8;
    u8 temp_t4;
    void *temp_a0_2;
    void *temp_t3;
    void *temp_t4_2;
    void *temp_t6;
    void *temp_t8;
    void *temp_v0;
    void *temp_v0_6;
    void *temp_v0_7;
    ? phi_a0;
    f64 phi_return;

    temp_v0 = *(void *)0x8007BAC8;
    sp24 = ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00;
    if ((temp_v0->unk4 * 3) < (s32) temp_v0->unk6) {
        *(void *)0x8007BC2C = 0x19;
    } else {
        if ((*(void *)0x8008C592 & 1) != 0) {
            *(void *)0x8007BC2C = 0x11;
        } else {
            *(void *)0x8007BC2C = 0;
        }
    }
    *(void *)0x8007BA58 = 0.0f;
    *(void *)0x8007BA54 = 0.0f;
    if ((*(void *)0x8007B2E4 & 0x87) == 0) {
        temp_v0_2 = *(void *)0x8008C592;
        if ((temp_v0_2 & 1) != 0) {
            if ((temp_v0_2 & 2) == 0) {
                if ((*(void *)0x8007BB2C & 1) == 0) {
                    *(void *)0x8007BABA = func_00006774(0x8007BACC);
                }
            }
        } else {
            if ((*(void *)0x8007BB2C & 1) == 0) {
                *(void *)0x8007BA74 = func_00005A10(0x8007BAB8, 0x8007BACC);
                if (*(void *)0x8007BA74 == 0) {
                    *(void *)0x8007BA78 = func_00012358(0x8007BACC);
                    if (*(void *)0x8007BA78 == 0) {
                        *(void *)0x8007BA7C = func_00011E78(0x8007BACC);
                        if (*(void *)0x8007BA7C == 0) {
                            temp_v0_3 = func_0000B740();
                            *(void *)0x8007BC20 = temp_v0_3;
                            if (temp_v0_3 != 0) {
                                func_0000BA4C(temp_v0_3 - 1);
                                *(void *)0x8007BC24 = 0x1E;
                                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
                                *(void *)0x8007BAC0 = (u16) (*(void *)0x8007BAC0 | 1);
                            }
                        }
                    }
                }
            }
        }
    }
    temp_v1 = *(void *)0x8007B2E4;
    if ((temp_v1 & 0xF) == 0) {
        if ((*(void *)0x80092876 & 0xA000) != 0) {
            temp_v0_4 = *(void *)0x8008C592;
            temp_a0 = *(void *)0x8007BB2C & 1;
            if (((temp_v0_4 & 1) != 0) && (temp_a0 == 0)) {
                if ((temp_v0_4 & 2) == 0) {
                    if (func_00015B50(temp_a0, 0x80080000) == 0) {
                        if (*(void *)0x8007BABA != 0) {
                            func_000069FC(0x8007BAB8, 0x8007BACC, sp24);
                        } else {
                            func_000073CC(0x8007BAB8, 0x8007BACC);
                            *(void *)0x8007BABA = (u16)0U;
                            func_0001D358(0x8007BACC);
                        }
                    }
                }
            } else {
                if (temp_a0 == 0) {
                    temp_v0_5 = *(void *)0x8007BA74;
                    if (temp_v0_5 != 0) {
                        *(void *)0x8007BA74 = (s32) (temp_v0_5 - 1);
                        *(void *)0x8007BAB8 = (u16)7U;
                        *(void *)0x8007BAEC = 0.0f;
                        temp_a1 = *(void *)0x8007BC2C;
                        *(void *)0x8007BAE4 = 0.0f;
                        *(void *)0x8007BAE0 = 0.0f;
                        *(void *)0x8007BAD8 = 0.0f;
                        func_0001D8B0(0x8007BACC, temp_a1, 1, temp_a1, 1, 1);
                        func_000086E4(*(void *)0x8007BA74);
                        phi_a0 = 1;
                        if (*(void *)0x8008C644 < 0x46) {
                            phi_a0 = 0;
                        }
                        func_0002E768(phi_a0);
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
                    } else {
                        if (*(void *)0x8007BA78 != 0) {
                            temp_v0_6 = *(void *)0x8007BAC8;
                            temp_t4 = temp_v0_6->unk24;
                            temp_v0_6 = temp_v0_6 + 0x24;
                            if ((((0x32 != temp_t4) || (0x32 != temp_v0_6->unk1)) || (0x32 != temp_v0_6->unk2)) || (0x32 != temp_v0_6->unk3)) {
                                *(void *)0x8007B2E4 = (s32) (temp_v1 | 8);
                                *(void *)0x8007BAB8 = (u16)0U;
                                func_00012740((*(void *)0x8007BA78)->unk14, (void *)0x8007BA78);
                                temp_v0_7 = *(void *)0x8007BA78;
                                temp_v0_7->unk10 = (u16) (temp_v0_7->unk10 | 1);
                                func_000268D4(0, 1, 0xFF);
                            } else {

                            }
                        } else {
                            if ((func_00021214(temp_a0, (void *)0x8007BA78) != 0) && (temp_a0_2 = *(void *)0x8007BA7C, (temp_a0_2 != 0))) {
                                func_0001205C(temp_a0_2);
                                (void *)0x8007BC30->unk0 = 0.0f;
                                *(void *)0x8007BC34 = (f32) (*(void *)0x8007BAF0 * 171.0f);
                                func_000232F4((*(void *)0x8007BA7C)->unk10, (void *)0x8007BC30, 0x80080000);
                                *(void *)0x8007BACC = (f32) ((*(void *)0x8007BA7C)->unk0 + (void *)0x8007BC30->unk0);
                                *(void *)0x8007BAD4 = (f32) ((*(void *)0x8007BA7C)->unk8 + (void *)0x8007BC30->unk4);
                                *(void *)0x8007BADC = (f32) (*(void *)0x8007BA7C)->unk10;
                                *(void *)0x8007BBEC = (f32) ((f64) (*(void *)0x8007BA7C)->unk10 + *(void *)0x80070F30);
                                *(void *)0x8007BBD0 = (s8) (*(void *)0x8007BA7C)->unk50;
                                func_00006604(0x8007BAB8, 0x8007BACC, sp24, (void *)0x8007BC30);
                                *(void *)0x8007BA7C = NULL;
                            } else {
                                *(void *)0x8007BAB8 = (u16)3U;
                                *(void *)0x8007BABC = (u16)0xF;
                                *(void *)0x8007BAEC = 0.0f;
                                *(void *)0x8007BAE4 = 0.0f;
                                *(void *)0x8007BAE0 = 0.0f;
                                *(void *)0x8007BAD8 = 0.0f;
                                *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
                                func_0001D8B0(0x8007BACC, 0x1B, 1, *(void *)0x8007BC2C, 1, 1);
                            }
                        }
                    }
                }
            }
        } else {
            if (func_00007030(0x8007BAB8, 0x8007BACC) != 0) {
                temp_v1_2 = *(void *)0x8007B2E4;
                if ((temp_v1_2 & 4) == 0) {
                    if ((*(void *)0x80092876 & 0x10) != 0) {
                        *(void *)0x8007B2E4 = (s32) (temp_v1_2 ^ 1);
                        func_00022B08(6, 2, 0x8004D530);
                        func_000268D4(0, 1, 0xFF);
                        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
                    }
                }
                if ((*(void *)0x8007B2E4 & 1) == 0) {
                    if ((**(void *)0x8007BB34 & 0x40) == 0) {
                        if (func_000070C0(0x8007BAB8) != 0) {
                            func_000072A8(0x8007BAB8, 0x8007BACC, sp24);
                        }
                    }
                }
            }
        }
    } else {
        if ((temp_v1 & 4) != 0) {
            if (func_000070C0(0x8007BAB8) != 0) {
                func_000072A8(0x8007BAB8, 0x8007BACC, sp24);
            }
        } else {
            if ((temp_v1 & 1) != 0) {
                if ((*(void *)0x80092876 & 0x4010) != 0) {
                    *(void *)0x8007B2E4 = (s32) (temp_v1 ^ 1);
                    func_00022B08(6, 4, 0x8004D544);
                    func_000268D4(0, 2, 0xFF);
                    *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C & 0xFFFE);
                }
            }
        }
    }
    temp_v0_8 = *(void *)0x8008C592;
    if ((temp_v0_8 & 8) != 0) {
        temp_t4_2 = *(void *)0x8007BB30;
        *(void *)0x8008C592 = (u16) (temp_v0_8 & 0xFFF7);
        temp_t4_2->unk10 = (s32) (temp_t4_2->unk10 + *(void *)0x8007BA68);
        temp_t8 = *(void *)0x8007BB30;
        temp_t8->unk14 = (s32) (temp_t8->unk14 + *(void *)0x8007BA6C);
        temp_v1_3 = *(void *)0x8007BA70;
        if (temp_v1_3 != 0xFF) {
            if (func_00021240(temp_v1_3 & 0xFF) != 0) {
                *(void *)0x8007BA70 = 0xFF;
            }
        }
        func_000202E4(0x8007BACC);
        *(void *)0x8007BB38 = (u16)0;
        *(void *)0x8007BAB8 = (u16)0xFU;
        *(void *)0x8007BABC = (s16) sp24->unkC2;
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        *(void *)0x8007BAEC = 0.0f;
        *(void *)0x8007BAE4 = 0.0f;
        *(void *)0x8007BAE0 = 0.0f;
        *(void *)0x8007BAD8 = 0.0f;
        func_0001D8B0(0x8007BACC, 0x10, 1, *(void *)0x8007BC2C, 1, 1);
    } else {
        if ((temp_v0_8 & 0x10) != 0) {
            func_000202E4(0x8007BACC);
            *(void *)0x8007BB38 = (u16)0;
        }
    }
    ((*(void *)0x8007BAB8 * 4) + 0x80050000)->unk-3DD0(0x8007BACC, 0x8007BAB8, sp24);
    temp_f2 = *(void *)0x8007BA54;
    temp_f0 = *(void *)0x8007BA58;
    temp_ret = func_00034F60((temp_f2 * temp_f2) + (temp_f0 * temp_f0));
    *(void *)0x8007BA5C = temp_ret;
    phi_return = (f64) temp_ret;
    if ((*(void *)0x8008C592 & 1) == 0) {
        temp_t3 = *(void *)0x8007BB30;
        phi_return = (bitwise f64) (void *)0x8007BC0C;
        if ((s32) temp_t3->unk8 < (s32) temp_t3->unkA) {
            temp_f2_2 = *(void *)0x80070F38;
            *(void *)0x8007BC0C = (f32) (*(void *)0x8007BC0C + *(void *)0x8007BA5C);
            temp_f0_2 = (f64) *(void *)0x8007BC0C;
            phi_return = temp_f0_2;
            if (temp_f2_2 < temp_f0_2) {
                *(void *)0x8007BC0C = (f32) (temp_f0_2 - temp_f2_2);
                temp_t6 = *(void *)0x8007BB30;
                temp_t6->unk8 = (u16) (temp_t6->unk8 + 1);
                phi_return = temp_f0_2;
            }
        }
    }
    return phi_return;
}
