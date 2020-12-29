void SetDataForNewGame(void) {
    void *temp_t1;
    void *temp_t6;
    void *phi_t6;
    void *phi_t1;

    phi_t6 = (void *)0x80053D04;
    phi_t1 = (void *)0x8007BA80;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t1 = phi_t1 + 0xC;
    temp_t1->unk-C = (s32) *phi_t6;
    temp_t1->unk-8 = (s32) temp_t6->unk-8;
    temp_t1->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t1 = temp_t1;
    if (temp_t6 != 0x80053D34) {
        goto loop_1;
    }
    temp_t1->unk0 = (s32) temp_t6->unk0;
    temp_t1->unk4 = (s32) temp_t6->unk4;
    (void *)0x8007BAB8->unk10 = (void *)0x8007BA80; //8007BA80 = Beginning of Player Data. 
    (void *)0x8007BAB8->unk6 = (u16)0;
    (void *)0x8007BAB8->unk8 = (u16)0;
    (void *)0x8007BAB8->unk11C = (u16)0;
    (void *)0x8007BAB8->unk66 = (u16)-1; //BrianCurrAnim = 0xffff 
    (void *)0x8007BAB8->unk68 = (u16)0;
    (void *)0x8007BAB8->unk6C = (u16)1;
    (void *)0x8007BAB8->unk78 = (void *)0x8007BA80;
    (void *)0x8007BAB8->unk7C = 0x8007BB38;
    (void *)0x8007BAB8->unk72 = (u16)0;
    (void *)0x8007BAB8->unk74 = (u16)0;
    (void *)0x8007BAB8->unk38 = (f32) (void *)0x8007BA80->unk20; //BrianModelScale = BrianColissionSize
    (void *)0x8007BAB8->unk3C = (f32) (void *)0x8007BA80->unk18;
    (void *)0x8007BAB8->unk64 = (s16) (void *)0x8007BA80->unk2;
    *(void *)0x8007BA4C = 0x108;
    *(void *)0x8007BA60 = (u16)0xD;
    *(void *)0x8007BA62 = (u16)0x11;
    *(void *)0x8007BA64 = (u16)0;
    *(void *)0x8007BCA0 = 0.0f;
    *(void *)0x8007BC14 = 0.0f;
    *(void *)0x8007BC10 = (f32) *(void *)0x8007BC14;
    *(void *)0x8007BC1C = 0.0f;
    *(void *)0x8007BC18 = (f32) *(void *)0x8007BC1C;
    func_80024260(0x86B830, 0x80206000, 0x871900 - 0x86B830, (void *)0x8007BC14);
}

void *func_80002918(void) {
    ?32 sp34;
    s32 sp24;
    void *sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f8;
    f64 temp_f2;
    s32 temp_t6;
    s32 temp_v0_3;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_t9;
    void *temp_v0_4;
    s32 phi_a1;

    (void *)0x8007BAB8->unk0 = (u16)0;
    (void *)0x8007BAB8->unk124 = (u16)0;
    temp_f12 = *(void *)0x8007BA40;
    (void *)0x8007BAB8->unk18 = 0.0f;
    (void *)0x8007BAB8->unk14 = temp_f12;
    temp_f0 = *(void *)0x8007BA44;
    (void *)0x8007BAB8->unk20 = 0.0f;
    (void *)0x8007BAB8->unk28 = 0.0f;
    (void *)0x8007BAB8->unk1C = temp_f0;
    (void *)0x8007BAB8->unk2C = 0.0f;
    (void *)0x8007BAB8->unk30 = 0.0f;
    (void *)0x8007BAB8->unk34 = 0.0f;
    sp24 = (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00;
    (void *)0x8007BAB8->unk24 = (f32) *(void *)0x8007BA48;
    func_8000EE60(temp_f12, 0.0f, temp_f0, 0xA00, 0x8007BC40);
    *(void *)0x8007BAD0 = (f32) (void *)0x8007BC40->unk4;
    *(void *)0x8007BAF8 = (f32) (void *)0x8007BC40->unkC;
    *(void *)0x8007BAFC = (f32) (void *)0x8007BC40->unk10;
    *(void *)0x8007BB00 = (f32) (void *)0x8007BC40->unk14;
    temp_v0 = (void *)0x8007BC40->unk18;
    if ((temp_v0 & 0x8000) != 0) {
        *(void *)0x8007BB2E = (u16)0U;
    } else {
        *(void *)0x8007BB2E = temp_v0;
    }
    temp_v0_2 = *(void *)0x8007BABE;
    if (temp_v0_2 != 0) {
        phi_a1 = (s32) temp_v0_2;
    } else {
        phi_a1 = *(void *)0x8007BC2C;
    }
    func_8001D8B0(0x8007BACC, phi_a1, 1, *(void *)0x8007BC2C, 1, 1);
    temp_v0_3 = *(void *)0x8007BA4C;
    if ((temp_v0_3 & 8) != 0) {
        (void *)0x8007BAB8->unk0 = (u16)3;
        *(void *)0x8007BABC = (u16)0xF;
        *(void *)0x8007BB2C = (u16)1;
    } else {
        temp_t6 = (temp_v0_3 >> 8) & 7;
        if ((temp_t6 != 1) && (temp_t6 != 2)) {
            if (temp_t6 != 3) {
                if (temp_t6 == 4) {
block_12:
                    (void *)0x8007BAB8->unk0 = (u16)8;
                    *(void *)0x8007BABC = (u16)0xF;
                    (void *)0x8007BC30->unk0 = 0.0f;
                    (void *)0x8007BC30->unk4 = 20.0f;
                    func_800232F4(*(void *)0x8007BADC, (void *)0x8007BC30, 0x80080000);
                    *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
                    *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
                    *(void *)0x8007BB2C = (u16)1;
                    func_800268D4(5, 0x21, 0xFF, (void *)0x8007BC30);
                    func_800268D4(0xF, 0x21, 0xFF);
                }
            } else {
                (void *)0x8007BAB8->unk0 = (u16)8;
                *(void *)0x8007BABC = (u16)0xF;
                (void *)0x8007BC30->unk0 = 0.0f;
                (void *)0x8007BC30->unk4 = 20.0f;
                func_800232F4(*(void *)0x8007BADC, (void *)0x8007BC30, 0x80080000);
                *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
                *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
                *(void *)0x8007BB2C = (u16)1;
                func_80006720(0x8007BACC, (void *)0x8007BC30);
                func_8001D924(0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp24, *(void *)0x8007BAF0);
                func_8000DB7C(1, *(void *)0x8007BB20, *(void *)0x8007BA4C, sp20);
                func_800268D4(5, 0x21, 0xFF);
                func_800268D4(0xF, 0x21, 0xFF);
            }
        } else {
            goto block_12;
        }
    }
    *(void *)0x8007BAC0 = (u16)0;
    if (*(void *)0x80085370 == -1) {
        *(void *)0x8007BAC0 = (u16)0x10;
    }
    if ((*(void *)0x8007B2E4 & 0x800) != 0) {
        (*(void *)0x8007BB30)->unk4 = (u16)1;
        temp_t9 = *(void *)0x8007BB30;
        temp_t9->unk8 = (u16) temp_t9->unkA;
        **(void *)0x8007BB34 = (u16)0;
    }
    **(void *)0x8007BB34 = (u16)0;
    *(void *)0x8007BC0C = 0.0f;
    *(void *)0x8007BA5C = (f32) *(void *)0x8007BC0C;
    *(void *)0x8007BC28 = (u16)0;
    *(void *)0x8007BA70 = 0xFF;
    return (void *)0x8007BC0C;
}

s32 func_80002EA0(void) {
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;
    void *phi_a1;

    (*(void *)0x8007BAC8)->unk18 = 50.0f;
    temp_v0 = *(void *)0x80084EE4;
    *(void *)0x80084EEC = temp_v0;
    temp_v1 = *(void *)0x80084EE8;
    *(void *)0x80084EF0 = temp_v1;
    (void *)0x80085368->unk8 = 0;
    phi_a1 = (void *)0x80054048;
loop_1:
    if ((temp_v0 == phi_a1->unk0) && (temp_v1 == phi_a1->unk2)) {
        *(void *)0x8007BA40 = (f32) phi_a1->unk4;
        *(void *)0x8007BA44 = (f32) phi_a1->unk8;
        *(void *)0x8007BA48 = (f32) phi_a1->unkC;
        (void *)0x80085368->unk8 = -1;
    } else {
        temp_a1 = phi_a1 + 0x10;
        phi_a1 = temp_a1;
        if (temp_a1 != 0x80054158) {
            goto loop_1;
        }
    }
    *(void *)0x80084EE4 = -1;
    *(void *)0x80084EE8 = -1;
    return -1;
}

f64 func_80002F60(void) {
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
                    *(void *)0x8007BABA = func_80006774(0x8007BACC);
                }
            }
        } else {
            if ((*(void *)0x8007BB2C & 1) == 0) {
                *(void *)0x8007BA74 = func_80005A10(0x8007BAB8, 0x8007BACC);
                if (*(void *)0x8007BA74 == 0) {
                    *(void *)0x8007BA78 = func_80012358(0x8007BACC);
                    if (*(void *)0x8007BA78 == 0) {
                        *(void *)0x8007BA7C = func_80011E78(0x8007BACC);
                        if (*(void *)0x8007BA7C == 0) {
                            temp_v0_3 = func_8000B740();
                            *(void *)0x8007BC20 = temp_v0_3;
                            if (temp_v0_3 != 0) {
                                func_8000BA4C(temp_v0_3 - 1);
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
                    if (func_80015B50(temp_a0, 0x80080000) == 0) {
                        if (*(void *)0x8007BABA != 0) {
                            func_800069FC(0x8007BAB8, 0x8007BACC, sp24);
                        } else {
                            func_800073CC(0x8007BAB8, 0x8007BACC);
                            *(void *)0x8007BABA = (u16)0U;
                            func_8001D358(0x8007BACC);
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
                        func_8001D8B0(0x8007BACC, temp_a1, 1, temp_a1, 1, 1);
                        func_800086E4(*(void *)0x8007BA74);
                        phi_a0 = 1;
                        if (*(void *)0x8008C644 < 0x46) {
                            phi_a0 = 0;
                        }
                        func_8002E768(phi_a0);
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
                    } else {
                        if (*(void *)0x8007BA78 != 0) {
                            temp_v0_6 = *(void *)0x8007BAC8;
                            temp_t4 = temp_v0_6->unk24;
                            temp_v0_6 = temp_v0_6 + 0x24;
                            if ((((0x32 != temp_t4) || (0x32 != temp_v0_6->unk1)) || (0x32 != temp_v0_6->unk2)) || (0x32 != temp_v0_6->unk3)) {
                                *(void *)0x8007B2E4 = (s32) (temp_v1 | 8);
                                *(void *)0x8007BAB8 = (u16)0U;
                                func_80012740((*(void *)0x8007BA78)->unk14, (void *)0x8007BA78);
                                temp_v0_7 = *(void *)0x8007BA78;
                                temp_v0_7->unk10 = (u16) (temp_v0_7->unk10 | 1);
                                func_800268D4(0, 1, 0xFF);
                            } else {

                            }
                        } else {
                            if ((func_80021214(temp_a0, (void *)0x8007BA78) != 0) && (temp_a0_2 = *(void *)0x8007BA7C, (temp_a0_2 != 0))) {
                                func_8001205C(temp_a0_2);
                                (void *)0x8007BC30->unk0 = 0.0f;
                                *(void *)0x8007BC34 = (f32) (*(void *)0x8007BAF0 * 171.0f);
                                func_800232F4((*(void *)0x8007BA7C)->unk10, (void *)0x8007BC30, 0x80080000);
                                *(void *)0x8007BACC = (f32) ((*(void *)0x8007BA7C)->unk0 + (void *)0x8007BC30->unk0);
                                *(void *)0x8007BAD4 = (f32) ((*(void *)0x8007BA7C)->unk8 + (void *)0x8007BC30->unk4);
                                *(void *)0x8007BADC = (f32) (*(void *)0x8007BA7C)->unk10;
                                *(void *)0x8007BBEC = (f32) ((f64) (*(void *)0x8007BA7C)->unk10 + *(void *)0x80070F30);
                                *(void *)0x8007BBD0 = (s8) (*(void *)0x8007BA7C)->unk50;
                                func_80006604(0x8007BAB8, 0x8007BACC, sp24, (void *)0x8007BC30);
                                *(void *)0x8007BA7C = NULL;
                            } else {
                                *(void *)0x8007BAB8 = (u16)3U;
                                *(void *)0x8007BABC = (u16)0xF;
                                *(void *)0x8007BAEC = 0.0f;
                                *(void *)0x8007BAE4 = 0.0f;
                                *(void *)0x8007BAE0 = 0.0f;
                                *(void *)0x8007BAD8 = 0.0f;
                                *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
                                func_8001D8B0(0x8007BACC, 0x1B, 1, *(void *)0x8007BC2C, 1, 1);
                            }
                        }
                    }
                }
            }
        } else {
            if (func_80007030(0x8007BAB8, 0x8007BACC) != 0) {
                temp_v1_2 = *(void *)0x8007B2E4;
                if ((temp_v1_2 & 4) == 0) {
                    if ((*(void *)0x80092876 & 0x10) != 0) {
                        *(void *)0x8007B2E4 = (s32) (temp_v1_2 ^ 1);
                        func_80022B08(6, 2, 0x8004D530);
                        func_800268D4(0, 1, 0xFF);
                        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
                    }
                }
                if ((*(void *)0x8007B2E4 & 1) == 0) {
                    if ((**(void *)0x8007BB34 & 0x40) == 0) {
                        if (func_800070C0(0x8007BAB8) != 0) {
                            func_800072A8(0x8007BAB8, 0x8007BACC, sp24);
                        }
                    }
                }
            }
        }
    } else {
        if ((temp_v1 & 4) != 0) {
            if (func_800070C0(0x8007BAB8) != 0) {
                func_800072A8(0x8007BAB8, 0x8007BACC, sp24);
            }
        } else {
            if ((temp_v1 & 1) != 0) {
                if ((*(void *)0x80092876 & 0x4010) != 0) {
                    *(void *)0x8007B2E4 = (s32) (temp_v1 ^ 1);
                    func_80022B08(6, 4, 0x8004D544);
                    func_800268D4(0, 2, 0xFF);
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
            if (func_80021240(temp_v1_3 & 0xFF) != 0) {
                *(void *)0x8007BA70 = 0xFF;
            }
        }
        func_800202E4(0x8007BACC);
        *(void *)0x8007BB38 = (u16)0;
        *(void *)0x8007BAB8 = (u16)0xFU;
        *(void *)0x8007BABC = (s16) sp24->unkC2;
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        *(void *)0x8007BAEC = 0.0f;
        *(void *)0x8007BAE4 = 0.0f;
        *(void *)0x8007BAE0 = 0.0f;
        *(void *)0x8007BAD8 = 0.0f;
        func_8001D8B0(0x8007BACC, 0x10, 1, *(void *)0x8007BC2C, 1, 1);
    } else {
        if ((temp_v0_8 & 0x10) != 0) {
            func_800202E4(0x8007BACC);
            *(void *)0x8007BB38 = (u16)0;
        }
    }
    ((*(void *)0x8007BAB8 * 4) + 0x80050000)->unk-3DD0(0x8007BACC, 0x8007BAB8, sp24);
    temp_f2 = *(void *)0x8007BA54;
    temp_f0 = *(void *)0x8007BA58;
    temp_ret = sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0));
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

void func_80003870(s32 arg0) {
    s32 sp34;
    s32 sp28;
    u16 temp_t9;
    void *temp_v1;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = 0x10000A0;
    func_800111F8(*(void *)0x8007BC08, (void *)0x8007B2FC);
    temp_t9 = *(void *)0x8007BAB8;
    if ((temp_t9 == 0xA) || (temp_t9 == 0xB)) {
        sp34 = 1;
    } else {
        sp34 = 0;
    }
    sp28 = ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00;
    func_80006720(0x8007BACC);
    func_8001DB38(sp34, 0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp28, arg0);
    func_8001E0AC(*(void *)0x8007BB24, 0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp28);
    func_80006720(0x8007BACC);
    func_8000EE60((void *)0x8008C5B0->unk0, *(void *)0x8007BAD0, (void *)0x8008C5B0->unk8, 0xA00, 0x8007BC40);
    (void *)0x8007BBF0->unk0 = (f32) (void *)0x8008C5B0->unk0;
    (void *)0x8007BBF0->unk4 = (f32) *(void *)0x8007BC44;
    (void *)0x8007BBF0->unk8 = (bitwise f32) (void *)0x8008C5B0->unk8;
    func_80011860((void *)0x8007BBF0->unk0, (void *)0x8007BBF0->unk4, (bitwise s32) (void *)0x8007BBF0->unk8, *(void *)0x8007BAF8, *(void *)0x8007BAFC, *(void *)0x8007BB00, *(void *)0x8007BAF4 * *(void *)0x8007BAF0);
}

void func_80003A1C(void) {
    void *temp_t0;
    void *temp_v1;

    *(void *)0x8007BA6C = 0;
    *(void *)0x8007BA68 = 0;
    temp_t0 = (void *)0x8007BAB8->unk78;
    temp_v1 = (void *)0x8007BAB8->unk10;
    (void *)0x8007BAB8->unk80 = (u16)0;
    (void *)0x8007BAB8->unk10C = (u16)0;
    (void *)0x8007BAB8->unkC = (f32) (((f64) (f32) (u32) temp_t0->unkC * *(void *)0x80070F40) + 17.0);
    (void *)0x8007BAB8->unk104 = (s16) (((temp_v1->unk27 + temp_v1->unk24) + temp_v1->unk25) + temp_v1->unk26);
    (void *)0x8007BAB8->unk10A = (u16)0x10;
    (void *)0x8007BAB8->unk106 = (u16) temp_t0->unkC;
    (void *)0x8007BAB8->unk0 = (u16)3;
    (void *)0x8007BAB8->unk110 = 1.0f;
    (void *)0x8007BAB8->unk108 = (u16) temp_t0->unkE;
    (void *)0x8007BAB8->unk2 = (u16)0;
    (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 & 0xFFDF);
    (void *)0x8007BAB8->unk74 = (u16) ((void *)0x8007BAB8->unk74 | 1);
    (void *)0x8007BAB8->unk130 = (f32) (void *)0x8007BAB8->unk24;
    (void *)0x8007BAB8->unk4 = (s16) (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00->unkDA;
    func_8001D8B0(0x8007BACC, 0x12, 1, *(void *)0x8007BC2C, 1, 1);
}

void func_80003B60(void *arg0, void *arg1, ? arg2) {
    f32 sp1C;
    f32 sp18;
    f32 temp_f14;
    f32 temp_f8;
    s32 temp_t0;
    s32 temp_v1;
    u16 temp_t5;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    f32 phi_f14;
    f32 phi_f14_2;
    void *phi_a1;
    u16 phi_v0;

    temp_f8 = -(f32) *(void *)0x80092871;
    temp_f14 = -(f32) *(void *)0x80092872;
    sp1C = temp_f8;
    if (-8.0f < temp_f8) {
        if (temp_f8 < 8.0f) {
            sp1C = 0.0f;
        }
    }
    phi_f14 = temp_f14;
    if (-8.0f < temp_f14) {
        phi_f14 = temp_f14;
        if (temp_f14 < 8.0f) {
            phi_f14 = 0.0f;
        }
    }
    if ((sp1C != 0.0f) || (phi_f14_2 = phi_f14, (phi_f14 != 0.0f))) {
        (void *)0x8007BC30->unk0 = sp1C;
        (void *)0x8007BC30->unk4 = phi_f14;
        func_800232F4(*(void *)0x80086DE8, phi_f14, (void *)0x8007BC30);
        sp1C = (void *)0x8007BC30->unk0;
        phi_f14_2 = (void *)0x8007BC30->unk4;
    } else {

    }
    if (*(void *)0x8008C638 != 0) {
        sp1C = 0.0f;
        phi_a1 = (void *)0x8007B2E4;
        phi_f14_2 = 0.0f;
    } else {
        if (*(void *)0x8008C63C != 0) {
block_17:
            sp1C = 0.0f;
        } else {
            if ((*(void *)0x8007B2E4 & 0x300F) != 0) {
                goto block_17;
            } else {
                phi_a1 = (void *)0x8007B2E4;
                if ((arg1->unk80 & 8) != 0) {
                    goto block_17;
                }
            }
        }
    }
    temp_v0 = *(void *)0x8008C592;
    if (((temp_v0 & 1) != 0) && ((temp_v0 & 0x202) != 0)) {
block_23:
        sp1C = 0.0f;
    } else {
        if (*(void *)0x8008C594 != 0) {
            goto block_23;
        }
    }
    temp_v0_2 = arg1->unk8;
    if ((temp_v0_2 & 1) != 0) {
        temp_v1 = *(void *)0x8007BC24;
        temp_t0 = temp_v1 - 1;
        if (temp_v1 != 0) {
            *(void *)0x8007BC24 = temp_t0;
            if (temp_t0 == 0) {
                sp18 = phi_f14_2;
                func_8002E768(phi_f14_2, 0, phi_a1);
            }
        } else {
            if (*(void *)0x800905C0 == 0) {
                arg1->unk8 = (s16) (temp_v0_2 & 0xFFFE);
                sp18 = phi_f14_2;
                *phi_a1 = (s32) (*phi_a1 & -3);
                func_8001C8C4(phi_f14_2, (void *)0x8007BC24, phi_a1);
            }
        }
    } else {
        if ((temp_v0_2 & 2) != 0) {
            if (*(void *)0x800905C0 == 0) {
                arg1->unk8 = (s16) (temp_v0_2 & 0xFFFD);
                *phi_a1 = (s32) (*phi_a1 & -3);
            }
        } else {
            if ((temp_v0_2 & 0x10) != 0) {
                if (*(void *)0x800905C0 == 0) {
                    arg1->unk8 = (s16) (temp_v0_2 & 0xFFEF);
                    *phi_a1 = (s32) (*phi_a1 & -3);
                }
            }
        }
    }
    temp_v0_3 = arg1->unk0;
    if (temp_v0_3 != 1) {
        if (temp_v0_3 == 2) {
            func_8000534C(sp1C, phi_f14_2, arg0, arg1);
        } else {
            func_80004D30(sp1C, phi_f14_2, arg0, arg1);
        }
    } else {
        func_80004E58(sp1C, phi_f14_2, arg0, arg1);
    }
    func_80005748(0xA01, arg0, arg1);
    if (arg1->unk0 == 2) {
        temp_t5 = *(void *)0x8007BC28 + arg0->unk58;
        *(void *)0x8007BC28 = temp_t5;
        if ((temp_t5 & 0xFFFF) >= 0x97) {
            *(void *)0x8007BC28 = (u16)0U;
            func_800268D4(0, 0x21, 0xFF);
        }
        temp_v0_4 = arg1->unk4;
        if (temp_v0_4 != 0) {
            phi_v0 = temp_v0_4;
            if ((temp_v0_4 & 3) == 0) {
                (void *)0x8004CE30->unk18 = (f32) arg0->unk0;
                (void *)0x8004CE30->unk1C = (f32) (arg0->unk4 + 1.0f);
                (void *)0x8004CE30->unk30 = 0.0f;
                (void *)0x8004CE30->unk20 = (f32) arg0->unk8;
                (void *)0x8004CE30->unk38 = 0.0f;
                (void *)0x8004CE30->unk34 = (f32) *(void *)0x80070F48;
                func_8001B108((void *)0x8004CE30);
                phi_v0 = arg1->unk4;
            }
            arg1->unk4 = (s16) (phi_v0 - 1);
        }
    }
    func_8000600C(arg1, arg0);
    func_800074A0(arg1, arg0);
}

f32 func_80003F5C(void *arg0, void *arg1, ? arg2) {
    u16 temp_t7;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
    }
    return 0.0f;
}

f64 func_80003F98(void *arg0, void *arg1, ? arg2) {
    f64 temp_f0;
    u16 temp_t7;
    void *temp_a1;
    void *temp_a2;

    temp_a2 = arg1;
    temp_a1 = arg0;
    arg0 = temp_a1;
    arg1 = temp_a2;
    func_80005748(0xA01, temp_a1, temp_a2);
    temp_f0 = *(void *)0x80070F50;
    arg0->unk18 = (f32) ((f64) arg0->unk18 * temp_f0);
    arg0->unk20 = (f32) ((f64) arg0->unk20 * temp_f0);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk20 = 0.0f;
        arg0->unk18 = 0.0f;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
    }
    return temp_f0;
}

f32 func_80004040(void *arg0, void *arg1, ? arg2) {
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
            func_8001D8B0(9, 1, *(void *)0x8007BC2C, 1, 1);
            func_800202E4(arg0);
            func_800267B8(0x1E);
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

void *func_800041B4(void *arg0, void *arg1, s32 arg2) {
    u16 temp_t7;
    void *temp_a3;

    temp_a3 = arg1;
    arg1 = temp_a3;
    func_800056D0(arg0, arg2, 0x8007BC30, temp_a3);
    arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
    arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
    func_80005748(0xA01, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if (arg1->unk120 == (temp_t7 & 0xFFFF)) {
        (void *)0x80086DC0->unk4C = 250.0f;
        (void *)0x80086DC0->unk58 = 150.0f;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80070F58;
    }
    return (void *)0x80086DC0;
}

f32 func_80004260(void *arg0, void *arg1, ? arg2) {
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
        func_80008948(*(void *)0x8007BA74, temp_a2, temp_a3);
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
                phi_return = func_800268D4(0, 0x3B, 0xFF, arg1);
            }
        }
        *(void *)0x8007BA74 = 0;
    }
    return phi_return;
}

void func_800043C4(void *arg0, void *arg1, ? arg2) {
    u16 temp_t7;

    func_80004E58(arg1->unk128, arg1->unk12C, arg0, arg1);
    func_80005748(0xA01, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk20 = 0.0f;
        arg0->unk18 = 0.0f;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
    }
}

f32 func_80004448(void *arg0, void *arg1, void *arg2) {
    s32 temp_a2;
    s32 temp_v0;
    u16 temp_a0;
    u16 temp_a1;
    u16 temp_t7;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    f32 phi_return;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    phi_return = 0.0f;
    if ((temp_t7 & 0xFFFF) == 0) {
        if (func_80006A74(arg1->unk2 - 1, arg0) != 0) {
            temp_v0 = func_8000ACC0(arg1->unk2 - 1, func_80006B1C(arg1) & 0xFFFF, ((s32) arg1->unk11E >> 8) & 0xF, 0x8004, arg0);
            if (temp_v0 != 0) {
                temp_v1 = arg0->unk64;
                temp_v1->unk8 = (u16) (temp_v1->unk8 + 1);
                temp_v1_2 = arg0->unk64;
                temp_a0 = temp_v1_2->unkA;
                if ((s32) temp_a0 < (s32) temp_v1_2->unk8) {
                    temp_v1_2->unk8 = temp_a0;
                }
                if ((arg1->unk80 & 2) != 0) {
                    temp_v1_3 = arg0->unk64;
                    temp_a2 = (((s32) ((temp_v0 & 0xFFFF) + 3) >> 2) + 1) & 0xFFFF;
                    temp_v1_3->unk4 = (u16) (temp_v1_3->unk4 + temp_a2);
                    temp_v1_4 = arg0->unk64;
                    temp_a1 = temp_v1_4->unk6;
                    if ((s32) temp_a1 < (s32) temp_v1_4->unk4) {
                        temp_v1_4->unk4 = temp_a1;
                    }
                    func_80018DF4(arg0, 1, temp_a2);
                    func_8001FCF8(arg0, 2, 1, 0x1E);
                }
            }
            temp_v0_2 = arg1->unk10;
            temp_v0_2->unk28 = (u16) (temp_v0_2->unk28 + 1);
        } else {
            func_8000B110(((arg1->unk2 * 0x128) - 0x104) + 0x8007C998);
        }
        arg1->unk0 = (u16)3;
        arg1->unk2 = (u16)0U;
        arg1->unk4 = (u16) (arg2->unk7A - 0x14);
        func_800073CC(arg1);
        arg1->unk2 = (u16)0U;
        phi_return = func_8001D358(arg0);
    }
    return phi_return;
}

u16 func_800045F0(void *arg0, void *arg1, void *arg2) {
    u16 temp_ret;
    u16 temp_t6;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 phi_return;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_v0 = arg1->unk120;
    temp_t6 = temp_v0 - 1;
    if (temp_v0 != 0) {
        arg1->unk120 = temp_t6;
        phi_return = temp_v0;
        if ((temp_t6 & 0xFFFF) == 0) {
            return func_80014A98(arg0, arg1->unk11E, 0, 0);
        }
    } else {
        temp_t9 = arg1->unk4 - 1;
        arg1->unk4 = temp_t9;
        phi_return = temp_v0;
        if ((temp_t9 & 0xFFFF) == 0) {
            temp_ret = func_80015B50();
            if (temp_ret != 0) {
                arg1->unk4 = (u16)8U;
                return temp_ret;
            }
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            temp_v0_2 = arg1->unk8;
            if ((temp_v0_2 & 4) != 0) {
                arg1->unk0 = (u16)3;
                arg1->unk8 = (u16) (temp_v0_2 & 0xFFFB);
                arg1->unk4 = (u16) arg2->unk122;
                func_8001D8B0(arg0, 0x18, 1, *(void *)0x8007BC2C, 1, 1);
            } else {
                arg1->unk0 = (u16)0;
            }
            func_800073CC(arg1);
            arg1->unk2 = (u16)0;
            phi_return = func_8001D358(arg0);
        }
    }
    return phi_return;
}

f64 func_80004708(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    u16 temp_t7;
    f64 phi_f0;
    f64 phi_return;
    f32 phi_f2;

    temp_f16 = *(void *)0x80070F60;
    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_f12 = arg0->unk10;
    arg0->unk0 = (f32) (arg0->unk0 + arg1->unk128);
    arg0->unk8 = (f32) (arg0->unk8 + arg1->unk12C);
    temp_f0 = (f64) (arg1->unk130 - temp_f12);
    if (temp_f16 < temp_f0) {
        phi_f2 = (f32) (temp_f0 - *(void *)0x80070F68);
block_4:
        temp_f0_2 = (f64) phi_f2;
        phi_f0 = temp_f0_2;
        phi_return = temp_f0_2;
    } else {
        phi_f0 = temp_f0;
        phi_return = temp_f0;
        if (temp_f0 < *(void *)0x80070F70) {
            phi_f2 = (f32) (temp_f0 + *(void *)0x80070F78);
            goto block_4;
        }
    }
    temp_f14 = *(void *)0x80070F80;
    arg0->unk10 = (f32) ((f64) temp_f12 + (phi_f0 * *(void *)0x80070F88));
    temp_f2 = (f64) arg0->unk10;
    if (temp_f16 < temp_f2) {
        arg0->unk10 = (f32) (temp_f2 - temp_f14);
    } else {
        if (temp_f2 < *(void *)0x80070F90) {
            arg0->unk10 = (f32) (temp_f2 + temp_f14);
        }
    }
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0xA;
        arg1->unk4 = (u16)0x50U;
        func_8001D8B0(temp_f12, temp_f14, arg0, arg1->unk6, 1, *(void *)0x8007BC2C, 1, 1);
        func_80006720(arg0);
        func_8001D924(arg0, (arg0->unk52 * 0xC) + arg2, arg0->unk24);
        arg0->unk10 = (f32) arg1->unk134;
        phi_return = func_800268D4(0x1A, 8, 0xFF);
    }
    return phi_return;
}

void func_800048D0(void *arg0, void *arg1, s32 arg2) {
    u16 temp_t7;
    void *temp_a0;
    void *temp_a3;

    temp_a3 = arg0;
    temp_a0 = temp_a3;
    arg0 = temp_a3;
    func_800056D0(temp_a0, arg2, 0x8007BC30, temp_a3);
    arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
    arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
    func_80005748(0xA00, arg0, arg1);
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
        arg0->unk10 = (f32) arg1->unk134;
    }
}

void func_8000496C(void *arg0, void *arg1, ? arg2) {
    s32 temp_a1;
    u16 temp_t9;

    if (arg1->unk4 != 0) {
        func_800056D0(arg0, arg2, 0x8007BC30, arg2);
        arg0->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg0->unk20 = (f32) (void *)0x8007BC30->unk4;
        func_80005748(0xA00, arg0, arg1);
        if (arg1->unk4 == 0x20) {
            func_800120C0(arg1->unk118);
            func_8002E768(1);
            func_800212A0(arg1->unk118);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
            func_800268D4(0, 0x3B, 0xFF);
        }
        temp_t9 = arg1->unk4 - 1;
        arg1->unk4 = temp_t9;
        if ((temp_t9 & 0xFFFF) == 0) {
            arg0->unk10 = (f32) arg1->unk134;
            temp_a1 = *(void *)0x8007BC2C;
            func_8001D8B0(arg0, temp_a1, 1, temp_a1, 1, 1);
            return;
        }
    } else {
        if (*(void *)0x800905C0 == 0) {
            arg1->unk0 = (u16)0;
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -3);
            *(void *)0x8007BA74 = 0;
        }
    }
}

void func_80004AB8(s32 arg0, void *arg1, ? arg2) {
    u16 temp_t4;
    u16 temp_t7;

    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        func_800213D8(arg1->unk118, arg0);
        if (((arg1->unk118 * 0xC) + 0x803B0000)->unk-6E0E != 2) {
            arg1->unk120 = (u16)0xFU;
            func_800073CC(arg1);
            return;
        }
        func_800073CC(arg1);
        arg1->unk2 = (u16)0;
        func_8001D358(arg0);
        return;
    }
    temp_t4 = arg1->unk120 - 1;
    arg1->unk120 = temp_t4;
    if ((temp_t4 & 0xFFFF) == 0) {
        if (func_80015B50() != 0) {
            arg1->unk120 = (u16)8U;
            return;
        }
        arg1->unk0 = (u16)3;
        arg1->unk4 = (u16)0xFU;
        func_8001D8B0(arg0, 0x18, 1, *(void *)0x8007BC2C, 1, 1);
        arg1->unk2 = (u16)0;
        func_8001D358(arg0);
    }
}

f32 func_80004BD0(void *arg0, void *arg1, ? arg2) {
    f32 temp_f12;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    u16 temp_t8;
    f64 phi_f0;
    f32 phi_f12;
    f64 phi_f14;
    f32 phi_return;
    f32 phi_f2;
    f32 phi_return_2;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    phi_f12 = (bitwise f32) arg0;
    phi_f14 = (bitwise f64) arg1;
    phi_return = 0.0f;
    if ((s32) arg1->unk4 < 0x26) {
        temp_f12 = arg0->unk10;
        temp_f14 = *(void *)0x80070F98;
        temp_f0 = (f64) (arg1->unk130 - temp_f12);
        if (temp_f0 < temp_f14) {
            phi_f2 = (f32) (temp_f0 + *(void *)0x80070FA0);
block_5:
            temp_f0_2 = (f64) phi_f2;
            phi_f0 = temp_f0_2;
            phi_return_2 = (f32) temp_f0_2;
        } else {
            phi_f0 = temp_f0;
            phi_return_2 = (f32) temp_f0;
            if (*(void *)0x80070FA8 < temp_f0) {
                phi_f2 = (f32) (temp_f0 - *(void *)0x80070FB0);
                goto block_5;
            }
        }
        temp_f16 = *(void *)0x80070FB8;
        arg0->unk10 = (f32) ((f64) temp_f12 + (phi_f0 * *(void *)0x80070FC0));
        temp_f2 = (f64) arg0->unk10;
        if (temp_f2 < temp_f14) {
            arg0->unk10 = (f32) (temp_f2 + temp_f16);
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            phi_return = phi_return_2;
        } else {
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            phi_return = phi_return_2;
            if (*(void *)0x80070FC8 < temp_f2) {
                arg0->unk10 = (f32) (temp_f2 - temp_f16);
                phi_f12 = temp_f12;
                phi_f14 = temp_f14;
                phi_return = phi_return_2;
            }
        }
    }
    temp_t8 = arg1->unk4 - 1;
    arg1->unk4 = temp_t8;
    if ((temp_t8 & 0xFFFF) == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
        phi_return = func_8002684C(phi_f12, phi_f14, *(void *)0x80084EE4, *(void *)0x80084EE8, 0x1E, arg0);
    }
    return phi_return;
}

f32 func_80004D30(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    f32 temp_f12;
    f32 temp_ret;
    s32 temp_a1;
    void *phi_a1;
    f32 phi_f12;
    f32 phi_return;

    arg2->unk20 = 0.0f;
    arg2->unk18 = 0.0f;
    phi_a1 = (bitwise void *) arg1;
    if (arg0 != 0.0f) {
block_2:
        temp_ret = sqrtf((arg0 * arg0) + (arg1 * arg1), arg2, phi_a1);
        temp_f12 = (f32) ((f64) temp_ret * *(void *)0x80070FD0);
        phi_f12 = temp_f12;
        if (2.0 < (f64) temp_f12) {
            phi_f12 = 2.0f;
        }
        if (!(1.5 < (f64) phi_f12)) {
            arg3->unk0 = (u16)1;
            return temp_ret;
        }
        arg3->unk0 = (u16)2;
        arg3->unk4 = (u16)0x1E;
        *(void *)0x8007BC28 = (u16)0;
        return temp_ret;
    }
    phi_a1 = (void *)0x80080000;
    if (arg1 != 0.0f) {
        goto block_2;
    }
    temp_a1 = *(void *)0x8007BC2C;
    phi_return = 0.0f;
    if (temp_a1 != arg2->unk52) {
        phi_return = 0.0f;
        if (temp_a1 != arg2->unk5A) {
            phi_return = func_8001D8B0(arg2, temp_a1, 1, temp_a1, 1, 1);
        }
    }
    return phi_return;
}

s32 func_80004E58(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    f32 sp38;
    f32 sp34;
    f32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_5;
    f32 temp_f0_7;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f2;
    f32 temp_f4;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_6;
    f64 temp_f12;
    f64 temp_f12_2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 temp_f2_4;
    s32 temp_a3;
    s32 temp_f6;
    s32 temp_f6_2;
    s32 temp_ret;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    f32 phi_f16;
    f32 phi_f14;
    f64 phi_f2;
    f32 phi_f12;
    f64 phi_f2_2;
    f32 phi_f6;
    f32 phi_f14_2;
    void *phi_a0;
    s32 phi_a2;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_return;
    f32 phi_f12_2;
    f32 phi_f12_3;

    temp_a0 = arg2;
    temp_f0 = temp_a0->unk18;
    temp_f2 = temp_a0->unk20;
    temp_f4 = temp_f0 * temp_f0;
    arg2 = temp_a0;
    temp_f0_2 = sqrtf(temp_f4 + (temp_f2 * temp_f2), temp_a0);
    temp_a0_2 = arg2;
    temp_f14 = arg1;
    sp34 = temp_f0_2;
    sp48 = 0;
    if ((arg0 != 0.0f) || (temp_f14 != 0.0f)) {
        arg2 = temp_a0_2;
        arg1 = temp_f14;
        temp_a0_3 = arg2;
        temp_f16 = (f32) ((f64) sqrtf((arg0 * arg0) + (temp_f14 * temp_f14), temp_f14, temp_a0_2) * *(void *)0x80070FD8);
        temp_f12_2 = (f64) temp_f16;
        phi_f16 = temp_f16;
        phi_f14 = arg1;
        if (2.0 < temp_f12_2) {
            temp_f0_4 = (f64) arg0;
            temp_f2_3 = (f64) arg1;
            arg0 = (f32) ((temp_f0_4 + temp_f0_4) / temp_f12_2);
            phi_f16 = 2.0f;
            phi_f14 = (f32) ((temp_f2_3 + temp_f2_3) / temp_f12_2);
        }
        arg2 = temp_a0_3;
        sp38 = phi_f16;
        temp_f0_5 = func_80023210(arg0, phi_f14, temp_a0_3);
        temp_a0_4 = arg2;
        sp24 = temp_a0_4->unk10;
        temp_f12_3 = temp_f0_5 - sp24;
        temp_f2_4 = (f64) temp_f12_3;
        if (*(void *)0x80070FE0 < temp_f2_4) {
            phi_f12_2 = (f32) (temp_f2_4 - *(void *)0x80070FE8);
block_8:
            phi_f2 = (f64) phi_f12_2;
            phi_f12 = phi_f12_2;
        } else {
            phi_f2 = temp_f2_4;
            phi_f12 = temp_f12_3;
            if (temp_f2_4 < *(void *)0x80070FF0) {
                phi_f12_2 = (f32) (temp_f2_4 + *(void *)0x80070FF8);
                goto block_8;
            }
        }
        if (*(void *)0x80071000 < phi_f2) {
            phi_f12_3 = *(void *)0x80071008;
block_13:
            phi_f12 = phi_f12_3;
            phi_f2_2 = (f64) phi_f12_3;
        } else {
            phi_f2_2 = phi_f2;
            if (phi_f2 < *(void *)0x80071010) {
                phi_f12_3 = *(void *)0x80071018;
                goto block_13;
            }
        }
        if (0.0f <= phi_f12) {
            phi_f14_2 = phi_f12;
        } else {
            phi_f14_2 = -phi_f12;
        }
        temp_f16_2 = (f32) ((f64) phi_f16 * (1.0 - ((f64) phi_f14_2 / *(void *)0x80071020)));
        temp_a0_4->unk10 = (f32) ((f64) sp24 + (phi_f2_2 * 0.5));
        temp_f0_6 = (f64) temp_a0_4->unk10;
        if (*(void *)0x80071028 < temp_f0_6) {
            phi_f6 = (f32) (temp_f0_6 - *(void *)0x80071030);
block_21:
            temp_a0_4->unk10 = phi_f6;
        } else {
            if (temp_f0_6 < *(void *)0x80071038) {
                phi_f6 = (f32) (temp_f0_6 + *(void *)0x80071040);
                goto block_21;
            }
        }
        (void *)0x8007BC30->unk0 = 0.0f;
        temp_f0_7 = (f32) ((f64) sp34 + ((f64) (temp_f16_2 - sp34) * *(void *)0x80071048));
        (void *)0x8007BC30->unk4 = temp_f0_7;
        temp_f12_4 = temp_a0_4->unk10;
        sp38 = temp_f16_2;
        sp24 = temp_f0_7;
        arg2 = temp_a0_4;
        func_800232F4(temp_f12_4, phi_f14_2, temp_a0_4, (void *)0x8007BC30);
        arg2->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg2->unk20 = (f32) (void *)0x8007BC30->unk4;
        sp54 = 1;
        temp_f6_2 = (s32) ((temp_f16_2 * 14.0f) + 3.0f);
        if ((1.5 < (f64) temp_f16_2) || (phi_a0 = arg2, phi_a2 = temp_f6_2, phi_a3 = 1, phi_v0 = 0, phi_return = 0, (1.5 < (f64) temp_f0_7))) {
            arg3->unk0 = (u16)2;
            arg3->unk4 = (u16)0x1E;
            *(void *)0x8007BC28 = (u16)0;
            phi_a0 = arg2;
            phi_a2 = temp_f6_2;
            phi_a3 = 1;
            phi_v0 = 0;
            phi_return = 0;
        } else {

        }
    } else {
        temp_f12 = *(void *)0x80071050;
        temp_f2_2 = (f64) temp_f0_2;
        temp_a0_2->unk18 = (f32) ((f64) temp_a0_2->unk18 * temp_f12);
        temp_a0_2->unk20 = (f32) ((f64) temp_a0_2->unk20 * temp_f12);
        if (1.0 < temp_f2_2) {
            temp_f0_3 = *(void *)0x80071058;
            temp_a3 = *(void *)0x8007BC2C;
            sp54 = 0xF;
            sp48 = 3;
            arg3->unk0 = (u16)4;
            arg3->unk4 = (u16)8;
            temp_a0_2->unkC = 0.0f;
            temp_a0_2->unk14 = 0.0f;
            temp_a0_2->unk18 = (f32) ((f64) temp_a0_2->unk18 * temp_f0_3);
            temp_a0_2->unk20 = (f32) ((f64) temp_a0_2->unk20 * temp_f0_3);
            sp4C = 1;
            arg2 = temp_a0_2;
            sp44 = 1;
            sp50 = temp_a3;
            func_800186B4(temp_f12, temp_f14, temp_a0_2, 1, temp_a3);
            phi_a0 = arg2;
            phi_a2 = 1;
            phi_a3 = temp_a3;
            phi_v0 = 1;
            phi_return = 1;
        } else {
            sp54 = 1;
            temp_f6 = (s32) ((temp_f0_2 * 14.0f) + 3.0f);
            phi_a0 = temp_a0_2;
            phi_a2 = temp_f6;
            phi_a3 = 1;
            phi_v0 = 0;
            phi_return = 0;
            if (temp_f2_2 < *(void *)0x80071060) {
                arg3->unk0 = (u16)0;
                temp_a0_2->unk18 = 0.0f;
                temp_a0_2->unk20 = 0.0f;
                phi_a0 = temp_a0_2;
                phi_a2 = temp_f6;
                phi_a3 = 1;
                phi_v0 = 0;
                phi_return = 0;
            }
        }
    }
    if (sp54 != phi_a0->unk52) {
        if (sp54 != phi_a0->unk5A) {
            arg2 = phi_a0;
            temp_ret = func_8001D8B0(phi_a0, sp54, phi_a2, phi_a3, phi_a2, phi_v0);
            arg2->unk54 = (s16) sp48;
            return temp_ret;
        }
    }
    phi_a0->unk58 = (s16) phi_a2;
    return phi_return;
}

s32 func_8000534C(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp40;
    f32 sp3C;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_5;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f2;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f12;
    f64 temp_f18;
    f64 temp_f2_2;
    f64 temp_f2_3;
    s32 temp_a3;
    s32 temp_f10;
    s32 temp_ret;
    f32 phi_f16;
    f32 phi_f14;
    f64 phi_f2;
    f32 phi_f4;
    s32 phi_a2;
    s32 phi_a3;
    s32 phi_v0;
    s32 phi_return;
    f32 phi_f12;

    temp_f0 = arg2->unk18;
    temp_f2 = arg2->unk20;
    temp_f14 = arg1;
    sp3C = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    if ((arg0 != 0.0f) || (temp_f14 != 0.0f)) {
        arg1 = temp_f14;
        temp_f16 = (f32) ((f64) sqrtf((arg0 * arg0) + (temp_f14 * temp_f14), temp_f14) * *(void *)0x80071068);
        temp_f12 = (f64) temp_f16;
        phi_f16 = temp_f16;
        phi_f14 = arg1;
        if (2.0 < temp_f12) {
            temp_f0_3 = (f64) arg0;
            temp_f2_2 = (f64) arg1;
            arg0 = (f32) ((temp_f0_3 + temp_f0_3) / temp_f12);
            phi_f16 = 2.0f;
            phi_f14 = (f32) ((temp_f2_2 + temp_f2_2) / temp_f12);
        }
        sp40 = phi_f16;
        temp_f14_2 = arg2->unk10;
        temp_f18 = *(void *)0x80071070;
        temp_f16_2 = phi_f16;
        temp_f2_3 = (f64) (func_80023210(arg0, phi_f14) - temp_f14_2);
        if (temp_f18 < temp_f2_3) {
            phi_f12 = (f32) (temp_f2_3 - *(void *)0x80071078);
block_8:
            phi_f2 = (f64) phi_f12;
        } else {
            phi_f2 = temp_f2_3;
            if (temp_f2_3 < *(void *)0x80071080) {
                phi_f12 = (f32) (temp_f2_3 + *(void *)0x80071088);
                goto block_8;
            }
        }
        arg2->unk10 = (f32) ((f64) temp_f14_2 + (phi_f2 * *(void *)0x80071090));
        temp_f0_4 = (f64) arg2->unk10;
        if (temp_f18 < temp_f0_4) {
            phi_f4 = (f32) (temp_f0_4 - *(void *)0x80071098);
block_13:
            arg2->unk10 = phi_f4;
        } else {
            if (temp_f0_4 < *(void *)0x800710A0) {
                phi_f4 = (f32) (temp_f0_4 + *(void *)0x800710A8);
                goto block_13;
            }
        }
        (void *)0x8007BC30->unk0 = 0.0f;
        temp_f0_5 = (f32) ((f64) sp3C + ((f64) (temp_f16_2 - sp3C) * *(void *)0x800710B0));
        (void *)0x8007BC30->unk4 = temp_f0_5;
        sp40 = temp_f16_2;
        sp2C = temp_f0_5;
        func_800232F4(arg2->unk10, temp_f14_2, (void *)0x8007BC30);
        arg2->unk18 = (f32) (void *)0x8007BC30->unk0;
        arg2->unk20 = (f32) (void *)0x8007BC30->unk4;
        sp5C = 2;
        temp_f10 = (s32) ((temp_f16_2 * 14.0f) + 3.0f);
        sp50 = 0;
        phi_a2 = temp_f10;
        phi_a3 = 2;
        phi_v0 = 0;
        phi_return = 0;
        if ((f64) temp_f0_5 < 1.0) {
            phi_a2 = temp_f10;
            phi_a3 = 2;
            phi_v0 = 0;
            phi_return = 0;
            if ((f64) temp_f16_2 < 1.0) {
                arg3->unk0 = (u16)1;
                phi_a2 = temp_f10;
                phi_a3 = 2;
                phi_v0 = 0;
                phi_return = 0;
            }
        }
    } else {
        temp_f0_2 = *(void *)0x800710B8;
        temp_a3 = *(void *)0x8007BC2C;
        sp5C = 0xF;
        sp50 = 3;
        arg3->unk0 = (u16)4;
        arg3->unk4 = (u16)8;
        arg2->unkC = 0.0f;
        arg2->unk14 = 0.0f;
        arg2->unk18 = (f32) ((f64) arg2->unk18 * temp_f0_2);
        arg2->unk20 = (f32) ((f64) arg2->unk20 * temp_f0_2);
        sp54 = 1;
        sp4C = 1;
        sp58 = temp_a3;
        func_800186B4(temp_f14, arg2, 1, temp_a3);
        phi_a2 = 1;
        phi_a3 = temp_a3;
        phi_v0 = 1;
        phi_return = 1;
    }
    if (sp5C != arg2->unk52) {
        if (sp5C != arg2->unk5A) {
            temp_ret = func_8001D8B0(arg2, sp5C, phi_a2, phi_a3, phi_a2, phi_v0);
            arg2->unk54 = (s16) sp50;
            return temp_ret;
        }
    }
    arg2->unk58 = (s16) phi_a2;
    return phi_return;
}

void func_800056D0(void *arg0, s32 arg1, void *arg2) {
    func_80006720();
    func_8001D924(arg0, (arg0->unk52 * 0xC) + arg1, arg0->unk24);
    arg2->unk0 = (f32) -arg0->unk44;
    arg2->unk4 = (f32) arg0->unk4C;
    func_800232F4(arg0->unk10, arg0, arg2);
}

void func_80005740(void) {

}

void *func_80005748(u16 arg0, void *arg1, void *arg2) {
    f32 sp30;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f2;
    f32 temp_f2_2;
    u16 temp_v0;
    void *temp_a2;
    void *temp_v1;

    temp_v0 = *(void *)0x8008C592;
    if ((temp_v0 & 1) != 0) {
        if ((temp_v0 & 6) == 0) {
            temp_f20 = (arg1->unk0 + arg1->unk18) - *(void *)0x8008C5A4;
            temp_f2 = (arg1->unk8 + arg1->unk20) - *(void *)0x8008C430;
            sp30 = temp_f2;
            temp_f0 = sqrtf((temp_f20 * temp_f20) + (temp_f2 * temp_f2));
            temp_a2 = arg2;
            temp_f12 = temp_a2->unkC * temp_a2->unk110;
            if (temp_f12 < temp_f0) {
                arg1->unk18 = (f32) ((((temp_f12 * temp_f20) / temp_f0) - arg1->unk0) + *(void *)0x8008C5A4);
                arg1->unk20 = (f32) ((((temp_f12 * temp_f2) / temp_f0) - arg1->unk8) + *(void *)0x8008C430);
            }
            temp_f20_2 = (arg1->unk0 + arg1->unk18) - *(void *)0x8008C59C;
            arg2 = temp_a2;
            temp_f2_2 = (arg1->unk8 + arg1->unk20) - *(void *)0x8008C5A0;
            sp30 = temp_f2_2;
            temp_f0_2 = sqrtf((temp_f20_2 * temp_f20_2) + (temp_f2_2 * temp_f2_2), temp_a2);
            if ((*(void *)0x8008C592 & 0x100) != 0) {
                temp_f12_2 = *(void *)0x8008C434;
                if (temp_f12_2 < temp_f0_2) {
                    arg1->unk18 = (f32) ((((temp_f12_2 * temp_f20_2) / temp_f0_2) - arg1->unk0) + *(void *)0x8008C59C);
                    arg1->unk20 = (f32) ((((*(void *)0x8008C434 * temp_f2_2) / temp_f0_2) - arg1->unk8) + *(void *)0x8008C5A0);
                }
            } else {
                if (*(void *)0x8008C434 < temp_f0_2) {
                    arg2->unk8 = (u16) (arg2->unk8 | 0x20);
                } else {
                    arg2->unk8 = (u16) (arg2->unk8 & 0xFFDF);
                }
            }
        }
    }
    func_80005C6C(arg1 + 0x18, arg1 + 0x20, arg1);
    *(void *)0x8007BA54 = (f32) arg1->unk18;
    *(void *)0x8007BA58 = (f32) arg1->unk20;
    temp_v1 = arg1->unk64;
    (void *)0x8007BC40->unk0 = (f32) (temp_v1->unk18 * temp_v1->unk20);
    func_8000EE60(arg1->unk0 + arg1->unk18, arg1->unk4, arg1->unk8 + arg1->unk20, arg0, (void *)0x8007BC40);
    arg1->unk18 = (f32) ((void *)0x8007BC40->unk0 - arg1->unk0);
    arg1->unk20 = (f32) ((void *)0x8007BC40->unk8 - arg1->unk8);
    arg1->unk0 = (f32) (void *)0x8007BC40->unk0;
    arg1->unk4 = (f32) (void *)0x8007BC40->unk4;
    arg1->unk8 = (f32) (void *)0x8007BC40->unk8;
    arg1->unk2C = (f32) (void *)0x8007BC40->unkC;
    arg1->unk30 = (f32) (void *)0x8007BC40->unk10;
    arg1->unk34 = (f32) (void *)0x8007BC40->unk14;
    arg1->unk62 = (u16) (void *)0x8007BC40->unk18;
    return (void *)0x8007BC40;
}

Failed to decompile function func_80005A10:

Label L80005C04 refers to a delay slot; this is currently not supported.
Please modify the assembly to work around it (e.g. copy the instruction
to all jump sources and move the label, or add a nop to the delay slot).

void func_80005C6C(void *arg0, void *arg1, void *arg2) {
    f64 sp68;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f64 temp_f0_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s1_6;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *phi_s2;
    s32 phi_s4;
    s32 phi_s1;
    s32 phi_s4_2;
    void *phi_s2_2;
    s32 phi_s4_3;
    s32 phi_s1_2;
    s32 phi_s4_4;
    void *phi_s2_3;
    f64 phi_f14;
    s32 phi_s4_5;
    s32 phi_s1_3;
    s32 phi_s4_6;
    s32 phi_s4_7;
    s32 phi_s4_8;

    temp_f30 = arg2->unk28 * arg2->unk24;
    temp_s1 = *(void *)0x8007D08C;
    temp_f26 = *arg0 + arg2->unk0;
    temp_f28 = *arg1 + arg2->unk8;
    phi_s4_2 = 0;
    if (temp_s1 != 0) {
        phi_s2 = (void *)0x8007D090;
        phi_s1 = temp_s1;
        phi_s4_2 = 0;
        phi_s4_6 = 0;
        if (temp_s1 != 0) {
loop_2:
            temp_s0 = *phi_s2;
            temp_f20 = temp_f26 - temp_s0->unk0;
            temp_f22 = temp_f28 - temp_s0->unk8;
            temp_f24 = (temp_s0->unk28 * temp_s0->unk24) + temp_f30;
            phi_s4 = phi_s4_6;
            if (temp_f20 < temp_f24) {
                temp_f0 = -temp_f24;
                phi_s4 = phi_s4_6;
                if (temp_f0 < temp_f20) {
                    phi_s4 = phi_s4_6;
                    if (temp_f22 < temp_f24) {
                        phi_s4 = phi_s4_6;
                        if (temp_f0 < temp_f22) {
                            temp_f0_2 = sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22));
                            phi_s4 = phi_s4_6;
                            if (temp_f0_2 < temp_f24) {
                                temp_f2 = temp_f24 / temp_f0_2;
                                *arg0 = (f32) ((temp_s0->unk0 + (temp_f20 * temp_f2)) - arg2->unk0);
                                *arg1 = (f32) ((temp_s0->unk8 + (temp_f22 * temp_f2)) - arg2->unk8);
                                phi_s4 = 1;
                            }
                        }
                    }
                }
            }
            temp_s1_2 = phi_s1 - 1;
            phi_s4_2 = phi_s4;
            if (phi_s4 == 0) {
                phi_s2 = phi_s2 + 4;
                phi_s1 = temp_s1_2;
                phi_s4_2 = phi_s4;
                phi_s4_6 = phi_s4;
                if (temp_s1_2 != 0) {
                    goto loop_2;
                }
            }
        }
    }
    temp_s1_3 = *(void *)0x8007BCE8;
    phi_s4_4 = phi_s4_2;
    if (temp_s1_3 != 0) {
        phi_s4_4 = phi_s4_2;
        if (phi_s4_2 == 0) {
            phi_s2_2 = (void *)0x8007BCF0;
            phi_s1_2 = temp_s1_3;
            phi_s4_4 = phi_s4_2;
            phi_s4_7 = phi_s4_2;
            if (temp_s1_3 != 0) {
loop_13:
                temp_s0_2 = *phi_s2_2;
                temp_f20_2 = temp_f26 - temp_s0_2->unk0;
                temp_f22_2 = temp_f28 - temp_s0_2->unk8;
                temp_f24_2 = (temp_s0_2->unk28 * temp_s0_2->unk24) + temp_f30;
                phi_s4_3 = phi_s4_7;
                if (temp_f20_2 < temp_f24_2) {
                    temp_f0_3 = -temp_f24_2;
                    phi_s4_3 = phi_s4_7;
                    if (temp_f0_3 < temp_f20_2) {
                        phi_s4_3 = phi_s4_7;
                        if (temp_f22_2 < temp_f24_2) {
                            phi_s4_3 = phi_s4_7;
                            if (temp_f0_3 < temp_f22_2) {
                                temp_f0_4 = sqrtf((temp_f20_2 * temp_f20_2) + (temp_f22_2 * temp_f22_2));
                                phi_s4_3 = phi_s4_7;
                                if (temp_f0_4 < temp_f24_2) {
                                    temp_f2_2 = temp_f24_2 / temp_f0_4;
                                    *arg0 = (f32) ((temp_s0_2->unk0 + (temp_f20_2 * temp_f2_2)) - arg2->unk0);
                                    *arg1 = (f32) ((temp_s0_2->unk8 + (temp_f22_2 * temp_f2_2)) - arg2->unk8);
                                    phi_s4_3 = 1;
                                }
                            }
                        }
                    }
                }
                temp_s1_4 = phi_s1_2 - 1;
                phi_s4_4 = phi_s4_3;
                if (phi_s4_3 == 0) {
                    phi_s2_2 = phi_s2_2 + 4;
                    phi_s1_2 = temp_s1_4;
                    phi_s4_4 = phi_s4_3;
                    phi_s4_7 = phi_s4_3;
                    if (temp_s1_4 != 0) {
                        goto loop_13;
                    }
                }
            }
        }
    }
    temp_s1_5 = *(void *)0x80084F38;
    if (temp_s1_5 != 0) {
        if (phi_s4_4 == 0) {
            if (temp_s1_5 != 0) {
                phi_s2_3 = (void *)0x80084F40;
                phi_f14 = (f64) temp_f30;
                phi_s1_3 = temp_s1_5;
                phi_s4_8 = phi_s4_4;
loop_25:
                temp_s0_3 = *phi_s2_3;
                temp_f0_5 = (f64) temp_s0_3->unk10;
                temp_f20_3 = temp_f26 - temp_s0_3->unk0;
                temp_f22_3 = temp_f28 - temp_s0_3->unk8;
                temp_f24_3 = (f32) (phi_f14 + (temp_f0_5 + temp_f0_5));
                phi_s4_5 = phi_s4_8;
                if (temp_f20_3 < temp_f24_3) {
                    temp_f0_6 = -temp_f24_3;
                    phi_s4_5 = phi_s4_8;
                    if (temp_f0_6 < temp_f20_3) {
                        phi_s4_5 = phi_s4_8;
                        if (temp_f22_3 < temp_f24_3) {
                            phi_s4_5 = phi_s4_8;
                            if (temp_f0_6 < temp_f22_3) {
                                sp68 = phi_f14;
                                temp_f0_7 = sqrtf((temp_f20_3 * temp_f20_3) + (temp_f22_3 * temp_f22_3), phi_f14);
                                phi_s4_5 = phi_s4_8;
                                if (temp_f0_7 < temp_f24_3) {
                                    temp_f2_3 = temp_f24_3 / temp_f0_7;
                                    *arg0 = (f32) ((temp_s0_3->unk0 + (temp_f20_3 * temp_f2_3)) - arg2->unk0);
                                    *arg1 = (f32) ((temp_s0_3->unk8 + (temp_f22_3 * temp_f2_3)) - arg2->unk8);
                                    phi_s4_5 = 1;
                                }
                            }
                        }
                    }
                }
                temp_s1_6 = phi_s1_3 - 1;
                if (phi_s4_5 == 0) {
                    phi_s2_3 = phi_s2_3 + 4;
                    phi_s1_3 = temp_s1_6;
                    phi_s4_8 = phi_s4_5;
                    if (temp_s1_6 != 0) {
                        goto loop_25;
                    }
                }
            }
        }
    }
}

u16 func_8000600C(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_t8;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_a3;
    u16 phi_v0;
    void *phi_a3;
    u16 phi_return;
    u16 phi_return_2;

    temp_a3 = arg0;
    temp_v0 = arg1->unk62;
    temp_t8 = ((s32) temp_v0 >> 6) & 7;
    phi_return_2 = temp_v0;
    if (temp_t8 != 0) {
        if (temp_t8 == 1) {
            temp_v0_2 = temp_a3->unk124;
            phi_v0 = temp_v0_2;
            phi_a3 = temp_a3;
            phi_return = temp_v0_2;
            if (temp_v0_2 == 0) {
                arg0 = temp_a3;
                func_80006BEC(1, 4, arg1, temp_a3);
                temp_v0_3 = arg0->unk124;
                phi_v0 = temp_v0_3;
                phi_a3 = arg0;
                phi_return = temp_v0_3;
            }
            phi_a3->unk124 = (s16) (phi_v0 - 1);
            return phi_return;
        }
        if (temp_t8 != 2) {
            return temp_v0;
        }
        temp_f0 = arg1->unk2C * 2.0f;
        temp_f2 = arg1->unk34 * 2.0f;
        arg1->unk0 = (f32) (arg1->unk0 + temp_f0);
        arg1->unk8 = (f32) (arg1->unk8 + temp_f2);
        arg1->unk18 = (f32) (arg1->unk18 + temp_f0);
        arg1->unk20 = (f32) (arg1->unk20 + temp_f2);
        phi_return_2 = (bitwise u16) temp_f0;
    }
    return phi_return_2;
}

s32 func_800060D4(void) {
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
        temp_ret = func_8001D8B0(0x8007BACC, temp_a1, 1, temp_a1, 1, 1);
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
        func_800232F4(temp_f12, (void *)0x8007BC30, temp_a2, 0x80080000);
        *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
        *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
        *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
        func_800268D4(5, 0x21, 0xFF, (void *)0x8007BC30);
        temp_ret_2 = func_800268D4(0xF, 0x21, 0xFF);
        *(void *)0x8007B2EC = 0x13;
        return temp_ret_2;
    }
    if (temp_t6 == 2) {
block_8:
        temp_ret_3 = func_80006340(0x8007BAB8, 0x8007BACC, temp_a2, 0x80080000);
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
    func_8000DB7C(1, 0, temp_a2, ((void *)0x80085368->unk10 * 0x18) + *(void *)0x80084F24);
    *(void *)0x8007BAB8 = (u16)3;
    *(void *)0x8007BABC = (u16)0x1E;
    *(void *)0x8007BABE = (u16)0;
    temp_a1_2 = *(void *)0x8007BC2C;
    *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 1);
    temp_ret_4 = func_8001D8B0(0x8007BACC, temp_a1_2, 1, temp_a1_2, 1, 1);
    *(void *)0x8007B2EC = 0x19;
    return temp_ret_4;
}

f32 func_80006340(void *arg0, void *arg1) {
    f32 sp34;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    f64 temp_f0;
    void *temp_s2;
    s16 phi_v0;
    f32 phi_f2;
    f32 phi_return;

    temp_s2 = ((void *)0x80085368->unk10 * 0x18) + *(void *)0x80084F24;
    func_8000DB7C(0, 0, (void *)0x80085368->unkC, temp_s2);
    if ((((s32) *(void *)0x80085374 >> 8) & 0xF) == 3) {
        arg0->unk6 = (u16)0;
        func_8001D8B0(arg1, 0x1A, 1, 1, 0xA, 1);
        arg0->unk0 = (u16)3;
        arg0->unk4 = (u16)0x4BU;
        arg1->unkC = 0.0f;
        arg1->unk14 = 0.0f;
        arg1->unk18 = 0.0f;
        arg1->unk20 = 0.0f;
        phi_return = func_800268D4(0x1E, 9, 0xFF);
    } else {
        arg0->unk0 = (u16)9;
        arg0->unk4 = (u16)8U;
        func_8001D8B0(arg1, 1, 0xA, 1, 0xA, 1);
        if ((*(void *)0x80085374 & 1) != 0) {
            (void *)0x8007BC30->unk0 = -133.0f;
            (void *)0x8007BC30->unk4 = -92.0f;
            (void *)0x8007BC30->unk8 = 4.0f;
            phi_v0 = (u16)0x15;
        } else {
            (void *)0x8007BC30->unk0 = -119.0f;
            (void *)0x8007BC30->unk4 = 125.0f;
            (void *)0x8007BC30->unk8 = 162.0f;
            phi_v0 = (u16)0x14;
        }
        arg0->unk6 = phi_v0;
        temp_f2 = (f32) ((f64) temp_s2->unkC * *(void *)0x800710C8);
        sp34 = temp_f2;
        func_800232F4(-temp_f2, (void *)0x8007BC30);
        temp_f12 = (f32) (u32) arg0->unk4;
        arg0->unk128 = (f32) (((temp_s2->unk0 - ((void *)0x8007BC30->unk0 * arg1->unk24)) - arg1->unk0) / temp_f12);
        arg0->unk134 = temp_f2;
        arg0->unk12C = (f32) (((temp_s2->unk8 + ((void *)0x8007BC30->unk4 * arg1->unk24)) - arg1->unk8) / temp_f12);
        temp_f2_2 = (f32) ((f64) temp_f2 + ((f64) (void *)0x8007BC30->unk8 * *(void *)0x800710D0));
        temp_f0 = (f64) temp_f2_2;
        if (*(void *)0x800710D8 < temp_f0) {
            phi_f2 = (f32) (temp_f0 - *(void *)0x800710E0);
        } else {
            phi_f2 = temp_f2_2;
            if (temp_f0 < *(void *)0x800710E8) {
                phi_f2 = (f32) (temp_f0 + *(void *)0x800710F0);
            }
        }
        arg0->unk130 = phi_f2;
        arg1->unkC = 0.0f;
        arg1->unk14 = 0.0f;
        phi_return = 0.0f;
    }
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    return phi_return;
}

void *func_80006604(void *arg0, void *arg1, s32 arg2) {
    func_8001D8B0(arg1, 0x1C, 1, 0x1D, 1, 1);
    func_80006720(arg1);
    func_8001D924(arg1, (arg1->unk52 * 0xC) + arg2, arg1->unk24);
    arg0->unk0 = (u16)0xB;
    arg0->unk4 = (u16)0x5A;
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    return arg0;
}

void func_8000669C(u8 arg0) {
    (void *)0x8007BAB8->unk0 = (u16)0xC;
    (void *)0x8007BAB8->unk118 = arg0;
    (void *)0x8007BAB8->unk74 = (u16) ((void *)0x8007BAB8->unk74 | 1);
    (void *)0x8007BAB8->unk4 = (s16) (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00->unk116;
    func_8001D8B0(0x8007BACC, 0x17, 1, 0x16, 1, 1);
}

void func_80006720(void *arg0) {
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_a3;
    void *temp_v0;

    temp_a3 = *(void *)0x8004C270;
    temp_v1 = arg0->unk52;
    if (temp_a3 != temp_v1) {
        temp_v0 = (temp_v1 * 8) + 0x80053F58;
        temp_a0 = temp_v0->unk0;
        *(void *)0x8004C270 = (s32) temp_v1;
        func_80024260(temp_a0, 0x80200000, temp_v0->unk4 - temp_a0, temp_a3);
    }
}

Failed to decompile function func_80006774:

Complex control flow; node assumed to be part of &&/|| wasn't. Run with --no-andor to disable detection of &&/|| and try again.

void func_800069FC(void *arg0, void *arg1, ? arg2) {
    arg0->unk0 = (u16)0xD;
    arg0->unk4 = (u16)0x14;
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    func_8001D8B0(arg1, 0xA, 1, *(void *)0x8007BC2C, 1, 1);
    func_800140EC(0x23, arg1);
}

u32 func_80006A74(s32 arg0, void *arg1) {
    s16 sp1E;
    u16 temp_v0;

    temp_v0 = arg1->unk68->unk86;
    sp1E = (s16) ((s32) (temp_v0 * 0x64) / (s32) (temp_v0 + ((s32) (((arg0 * 0x128) + 0x80080000)->unk-35DC->unk86 + 7) >> 3)));
    return func_80022FD0(0x64, arg0) < (u32) sp1E;
}

u32 func_80006B1C(void *arg0) {
    s32 temp_a2;
    s32 temp_t6;
    u16 temp_v0;
    u32 temp_t1;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_t0;
    void *temp_a3;
    u32 phi_v1;
    s32 phi_a2;
    s32 phi_a2_2;
    s32 phi_a2_3;
    s32 phi_a2_4;

    temp_a3 = arg0->unk10;
    temp_v0 = arg0->unk104;
    temp_t0 = temp_a3->unk24;
    temp_t6 = ((s32) temp_v0 >> 2) & 0xFFFF;
    temp_a2 = temp_v0 & 0xFFFF;
    phi_a2_4 = temp_a2;
    if (temp_t6 < (s32) temp_t0) {
        phi_a2_4 = ((temp_a2 - temp_t0) + temp_t6) & 0xFFFF;
    }
    temp_a1 = temp_a3->unk25;
    phi_a2_3 = phi_a2_4;
    if (temp_t6 < (s32) temp_a1) {
        phi_a2_3 = ((phi_a2_4 - temp_a1) + temp_t6) & 0xFFFF;
    }
    temp_a1_2 = temp_a3->unk26;
    phi_a2_2 = phi_a2_3;
    if (temp_t6 < (s32) temp_a1_2) {
        phi_a2_2 = ((phi_a2_3 - temp_a1_2) + temp_t6) & 0xFFFF;
    }
    temp_a1_3 = temp_a3->unk27;
    phi_a2 = phi_a2_2;
    if (temp_t6 < (s32) temp_a1_3) {
        phi_a2 = ((phi_a2_2 - temp_a1_3) + temp_t6) & 0xFFFF;
    }
    temp_t1 = ((s32) (((((s32) temp_v0 >> 1) + phi_a2) & 0xFFFF) * arg0->unk10A) >> 4) & 0xFFFF;
    phi_v1 = temp_t1;
    if ((arg0->unk80 & 1) != 0) {
        phi_v1 = (temp_t1 >> 1) & 0xFFFF;
    }
    return phi_v1;
}

s32 func_80006BEC(s32 arg0, u16 arg1, void *arg2) {
    void *sp38;
    s32 sp2C;
    f32 temp_f12;
    f32 temp_f18;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_t4;
    s32 temp_t6;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_t0;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    f32 phi_f18;
    f32 phi_f12;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;

    temp_s0 = arg0 & 0xFFFF;
    phi_s0_3 = temp_s0;
    if (*(void *)0x8007BAB8 != 6) {
        sp38 = ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00;
        phi_s0_2 = temp_s0;
        if (temp_s0 != 0) {
            temp_v0 = arg2->unk68->unk84;
            temp_f18 = (f32) temp_s0;
            phi_f18 = temp_f18;
            if (temp_s0 < 0) {
                phi_f18 = temp_f18 + 4294967296.0f;
            }
            temp_t4 = (u32) (phi_f18 * ((f32) (u32) temp_v0 / (f32) (temp_v0 + *(void *)0x8007BBC0))) & 0xFFFF;
            temp_s0_2 = temp_t4;
            temp_f12 = (f32) temp_s0_2;
            phi_f12 = temp_f12;
            if (temp_t4 < 0) {
                phi_f12 = temp_f12 + 4294967296.0f;
            }
            temp_t6 = (temp_s0_2 + func_80022FD0((u32) (sqrtf(phi_f12) + 1.0f))) & 0xFFFF;
            phi_s0 = temp_t6;
            if (temp_t6 == 0) {
                phi_s0 = (temp_t6 + 1) & 0xFFFF;
            }
            temp_v0_2 = (void *)0x8007BACC->unk64;
            temp_v1 = temp_v0_2->unk4;
            sp2C = phi_s0;
            if ((s32) temp_v1 < phi_s0) {
                temp_v0_2->unk4 = (u16)0U;
            } else {
                temp_v0_2->unk4 = (u16) (temp_v1 - sp2C);
            }
            if ((*(void *)0x8007BB38 & 0x200) != 0) {
                temp_v0_3 = (void *)0x8007BACC->unk64;
                temp_v0_3->unk8 = (u16) (temp_v0_3->unk8 + sp2C);
                temp_v0_4 = (void *)0x8007BACC->unk64;
                temp_v1_2 = temp_v0_4->unkA;
                if ((s32) temp_v1_2 < (s32) temp_v0_4->unk8) {
                    temp_v0_4->unk8 = temp_v1_2;
                }
                func_8001FCF8((void *)0x8007BACC, 0x200, 2, 0x1E);
            }
            temp_t7 = *(void *)0x8007BAC8;
            temp_t7->unk28 = (u16) (temp_t7->unk28 + 1);
            temp_t0 = *(void *)0x8007BAC8;
            temp_t0->unk2E = (u16) (temp_t0->unk2E + 1);
            func_80018DF4((void *)0x8007BACC, 0, sp2C);
            phi_s0_2 = phi_s0;
        }
        *(void *)0x8007BAB8 = (u16)5U;
        *(void *)0x8007BABC = (s16) sp38->unk62;
        temp_t8 = (void *)0x8007BACC->unk60 | 1;
        (void *)0x8007BACC->unk60 = temp_t8;
        if ((arg1 & 4) != 0) {
            (void *)0x8007BACC->unk60 = (u16) (temp_t8 | 2);
        }
        sp2C = (s32) arg1;
        func_8001D8B0((void *)0x8007BACC, 8, 1, *(void *)0x8007BC2C, 1, 1);
        if (phi_s0_2 != 0) {
            sp2C = (s32) arg1;
            func_80013F20(2);
        }
        phi_s0_3 = phi_s0_2;
        if ((arg1 & 0x8000) != 0) {
            func_800268D4(0, 0x18, 0xFF);
            phi_s0_3 = phi_s0_2;
        }
    }
    return phi_s0_3;
}

void func_80006F6C(void) {
    if (*(void *)0x8007BAB8 != 6) {
        if ((*(void *)0x8007BAC8)->unk4 != 0) {
            *(void *)0x8007BAB8 = (u16)3U;
            *(void *)0x8007BABC = (s16) ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00->unk56;
            *(void *)0x8007BB2C = (u16) (*(void *)0x8007BB2C | 3);
            func_8001D8B0(0x8007BACC, 7, 1, *(void *)0x8007BC2C, 1, 1);
            func_800208B8(0x8007BACC);
            func_800268D4(0, 0x17, 0xFF);
        }
    }
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

s32 func_80007030(s32 arg0, void *arg1) {
    s32 sp1C;
    u16 temp_v0;
    s32 phi_v1;

    phi_v1 = 0;
    if ((arg1->unk60 & 1) == 0) {
        phi_v1 = 0;
        if ((*(void *)0x8007B2E4 & 0x80) == 0) {
            temp_v0 = *(void *)0x8008C592;
            if ((temp_v0 & 1) != 0) {
                phi_v1 = 0;
                if ((temp_v0 & 0x202) == 0) {
                    sp1C = 0;
                    phi_v1 = sp1C;
                    if (func_80015B50() == 0) {
                        phi_v1 = sp1C;
                        if (*(void *)0x8008C594 == 0) {
block_7:
                            phi_v1 = 1;
                        }
                    }
                }
            } else {
                goto block_7;
            }
        }
    }
    return phi_v1;
}

s32 func_800070C0(void *arg0) {
    s32 sp24;
    s32 sp1C;
    s16 temp_v0_3;
    s32 temp_a0;
    s32 temp_v1;
    u16 temp_a3;
    u16 temp_t3;
    u16 temp_t7;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_a1;
    void *temp_a2;
    s32 phi_v0;
    u16 phi_a3;

    temp_a2 = arg0;
    sp1C = 0;
    temp_a3 = temp_a2->unk11C;
    if (((s32) temp_a3 < 3) && (temp_v0 = *(void *)0x80092876, ((temp_v0 & 0xF) != 0))) {
        if ((temp_v0 & 8) != 0) {
            sp24 = 0;
        } else {
            if ((temp_v0 & 4) != 0) {
                sp24 = 2;
            } else {
                if ((temp_v0 & 2) != 0) {
                    sp24 = 1;
                } else {
                    if ((temp_v0 & 1) != 0) {
                        sp24 = 3;
                    }
                }
            }
        }
        temp_a1 = temp_a2 + 0x119;
        (temp_a2 + temp_a3)->unk119 = (s8) sp24;
        temp_t7 = temp_a2->unk11C + 1;
        temp_a2->unk11C = temp_t7;
        arg0 = temp_a2;
        if ((func_800149D0(func_80014890(temp_t7 & 0xFFFF, temp_a1, temp_a2, temp_a3), arg0->unk10->unk8, arg0) & 5) != 0) {
            arg0->unk11C = (u16) (arg0->unk11C - 1);
            phi_v0 = 0x13;
        } else {
            temp_v1 = *(void *)0x8007B2E4;
            if ((temp_v1 & 4) == 0) {
                *(void *)0x8007B2E4 = (s32) (temp_v1 | 4);
                phi_v0 = 0x17;
            } else {
                phi_v0 = 0x17;
            }
        }
        func_800268D4(0, (s32) (phi_v0 << 0x18) >> 0x18, 0xFF);
    } else {
        temp_v0_2 = *(void *)0x80092876;
        if ((temp_a3 != 0) && ((temp_v0_2 & 0xA000) != 0)) {
            arg0 = temp_a2;
            temp_v0_3 = func_80014890(temp_a3 & 0xFFFF, temp_a2 + 0x119, temp_a2, temp_a3);
            temp_a0 = temp_v0_3 & 0xFFFF;
            arg0->unk11E = temp_v0_3;
            if (func_800149D0(temp_a0, arg0->unk10->unk8, arg0) == 0) {
                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -5);
                sp1C = 1;
            }
        } else {
            if ((temp_v0_2 & 0x4000) != 0) {
                if ((*(void *)0x8007B2E4 & 4) != 0) {
                    temp_t3 = temp_a3 - 1;
                    phi_a3 = temp_a3;
                    if (temp_a3 != 0) {
                        temp_a2->unk11C = temp_t3;
                        phi_a3 = temp_t3 & 0xFFFF;
                    }
                    if (phi_a3 == 0) {
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -5);
                    }
                    func_800268D4(0, 0x13, 0xFF, phi_a3);
                }
            }
        }
    }
    return sp1C;
}

void func_800072A8(void *arg0, void *arg1, s32 arg2) {
    u16 temp_v1;
    void *temp_v0;
    s32 phi_a1;
    s32 phi_a3;

    temp_v0 = arg1->unk64;
    temp_v0->unk8 = (u16) (temp_v0->unk8 - ((arg0->unk11C * 2) + 0x800C0000)->unk1B26);
    temp_v1 = arg0->unk11E;
    if (((((((s32) temp_v1 >> 8) & 0xF) * 4) + 0x800C0000)->unk1B14 + ((temp_v1 & 0xFF) * 0x44))->unk18 == 2) {
        arg0->unk8 = (u16) (arg0->unk8 | 4);
        phi_a1 = 0x17;
        phi_a3 = 0x16;
    } else {
        phi_a1 = 3;
        phi_a3 = *(void *)0x8007BC2C;
    }
    arg0->unk0 = (u16)0xE;
    arg0->unk120 = (u16)0x12;
    arg0->unk11C = (u16)0U;
    arg0->unk4 = (u16) (arg2 + (((phi_a1 * 4) - phi_a1) * 4))->unk2;
    arg1->unk18 = 0.0f;
    arg1->unk20 = 0.0f;
    arg1->unk60 = (u16) (arg1->unk60 | 1);
    func_8001D8B0(arg1, phi_a1, 1, phi_a3, 1, 1);
    func_800140EC(0x2D, arg1);
}

void func_800073CC(void *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    void *temp_v0;
    f64 phi_f2;

    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_f0 = arg0->unk14 - *(void *)0x8008C5A4;
        temp_f2 = arg0->unk1C - *(void *)0x8008C430;
        *(void *)0x8007BCA0 = (f32) (*(void *)0x8007BCA0 + sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2)));
        temp_f2_2 = (f64) *(void *)0x8007BCA0;
        phi_f2 = temp_f2_2;
        if (50.0 < temp_f2_2) {
loop_2:
            *(void *)0x8007BCA0 = (f32) (phi_f2 - 50.0);
            temp_v0 = arg0->unk10;
            temp_v0->unk2C = (u16) (temp_v0->unk2C + 1);
            temp_f2_3 = (f64) *(void *)0x8007BCA0;
            phi_f2 = temp_f2_3;
            if (50.0 < temp_f2_3) {
                goto loop_2;
            }
        }
    }
}

void *func_800074A0(void *arg0, void *arg1) {
    f32 temp_f2;
    f32 temp_f2_2;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f12;
    f64 temp_f12_2;
    s32 temp_a0_3;
    s32 temp_t1;
    s32 temp_t4;
    u16 temp_a1;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u16 temp_a1_4;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u16 temp_a2_5;
    u16 temp_a3;
    u16 temp_a3_4;
    u32 temp_a1_5;
    u32 temp_a2_7;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a2_4;
    u8 temp_a2_6;
    u8 temp_a3_2;
    u8 temp_a3_3;
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
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    s32 phi_a0;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a0_2;
    void *phi_v1_2;
    void *phi_v0_2;
    s32 phi_a0_3;
    void *phi_v1_3;
    void *phi_v0_3;
    s32 phi_a0_4;
    f64 phi_f12;
    void *phi_return;
    void *phi_return_2;
    void *phi_return_3;
    void *phi_return_4;

    phi_f12 = (bitwise f64) arg0;
    if ((*(void *)0x8008C592 & 1) == 0) {
        if ((*(void *)0x80084F10 & 1) != 0) {
            temp_f2 = *(void *)0x8007BA5C;
            *(void *)0x8007BC10 = (f32) (*(void *)0x8007BC10 + temp_f2);
            temp_f0 = (f64) *(void *)0x8007BC10;
            if (200.0 < temp_f0) {
                *(void *)0x8007BC10 = (f32) (temp_f0 - 200.0);
            }
            temp_f12 = *(void *)0x800710F8;
            *(void *)0x8007BC18 = (f32) (*(void *)0x8007BC18 + temp_f2);
            temp_f0_2 = (f64) *(void *)0x8007BC18;
            phi_f12 = temp_f12;
            if (temp_f12 < temp_f0_2) {
                *(void *)0x8007BC18 = (f32) (temp_f0_2 - temp_f12);
                temp_v0 = arg0->unk10;
                temp_v0->unk2C = (u16) (temp_v0->unk2C + 1);
                phi_f12 = temp_f12;
            }
        } else {
            temp_f2_2 = *(void *)0x8007BA5C;
            *(void *)0x8007BC14 = (f32) (*(void *)0x8007BC14 + temp_f2_2);
            temp_f0_3 = (f64) *(void *)0x8007BC14;
            if (800.0 < temp_f0_3) {
                *(void *)0x8007BC14 = (f32) (temp_f0_3 - 800.0);
            }
            temp_f12_2 = *(void *)0x80071100;
            *(void *)0x8007BC1C = (f32) (*(void *)0x8007BC1C + temp_f2_2);
            temp_f0_4 = (f64) *(void *)0x8007BC1C;
            phi_f12 = temp_f12_2;
            if (temp_f12_2 < temp_f0_4) {
                *(void *)0x8007BC1C = (f32) (temp_f0_4 - temp_f12_2);
                temp_v0_2 = arg0->unk10;
                temp_v0_2->unk2C = (u16) (temp_v0_2->unk2C + 1);
                phi_f12 = temp_f12_2;
            }
        }
    }
    if ((s32) arg1->unk64->unk6 < 0x1F4) {
        temp_v0_3 = arg0->unk10;
        temp_a1 = temp_v0_3->unk28;
        temp_a3 = *((temp_v0_3->unk30 * 2) + 0x80053ECC);
        if ((s32) temp_a1 >= (s32) temp_a3) {
            temp_v0_3->unk28 = (u16) (temp_a1 - temp_a3);
            temp_v1 = arg1->unk64;
            temp_a2 = temp_v1->unk6;
            phi_a0 = 1;
            if ((temp_a2 + 1) >= 0x1F5) {
                phi_a0 = (0x1F4 - temp_a2) & 0xFFFF;
            }
            temp_v1->unk6 = (u16) (temp_a2 + phi_a0);
            temp_v1_2 = arg1->unk64;
            temp_v1_2->unk4 = (u16) (temp_v1_2->unk4 + phi_a0);
            temp_v0_4 = arg0->unk10;
            temp_a3_2 = temp_v0_4->unk30;
            if ((s32) temp_a3_2 < 0x36) {
                temp_v0_4->unk30 = (u8) (temp_a3_2 + 1);
            }
        }
        phi_v1 = arg1->unk64;
    } else {
        arg0->unk10->unk28 = (u16)0;
        temp_v0_5 = arg0->unk10;
        phi_v1 = arg1->unk64;
        phi_v0 = temp_v0_5;
        phi_return_4 = temp_v0_5;
    }
    if ((s32) phi_v1->unkA < 0x1F4) {
        temp_a1_2 = phi_v0->unk2A;
        temp_t1 = *(0x80053ECC + (phi_v0->unk31 * 2)) * 4;
        phi_v0_2 = phi_v0;
        if ((s32) temp_a1_2 >= temp_t1) {
            phi_v0->unk2A = (u16) (temp_a1_2 - temp_t1);
            temp_v1_3 = arg1->unk64;
            temp_a2_2 = temp_v1_3->unkA;
            phi_a0_2 = 1;
            if ((temp_a2_2 + 1) >= 0x1F5) {
                phi_a0_2 = (0x1F4 - temp_a2_2) & 0xFFFF;
            }
            temp_v1_3->unkA = (u16) (temp_a2_2 + phi_a0_2);
            temp_v1_4 = arg1->unk64;
            temp_v1_4->unk8 = (u16) (temp_v1_4->unk8 + phi_a0_2);
            temp_v0_6 = arg0->unk10;
            temp_a3_3 = temp_v0_6->unk31;
            phi_v0_2 = temp_v0_6;
            phi_return_4 = temp_v0_6;
            if ((s32) temp_a3_3 < 0x36) {
                temp_v0_6->unk31 = (u8) (temp_a3_3 + 1);
                temp_v0_7 = arg0->unk10;
                phi_v0_2 = temp_v0_7;
                phi_return_4 = temp_v0_7;
            }
        }
        phi_v1_2 = arg1->unk64;
    } else {
        phi_v0->unk2A = (u16)0U;
        temp_v0_8 = arg0->unk10;
        phi_v1_2 = arg1->unk64;
        phi_v0_2 = temp_v0_8;
        phi_return_4 = temp_v0_8;
    }
    if ((s32) phi_v1_2->unkC < 0xFF) {
        temp_a2_3 = phi_v0_2->unk2C;
        temp_a3_4 = *(0x80053ECC + (phi_v0_2->unk32 * 2));
        phi_v0_3 = phi_v0_2;
        if ((s32) temp_a2_3 >= (s32) temp_a3_4) {
            phi_v0_2->unk2C = (u16) (temp_a2_3 - temp_a3_4);
            temp_v1_5 = arg1->unk64;
            temp_a1_3 = temp_v1_5->unkC;
            phi_a0_3 = 1;
            if ((temp_a1_3 + 1) >= 0x100) {
                phi_a0_3 = (0xFF - temp_a1_3) & 0xFFFF;
            }
            temp_v1_5->unkC = (u16) (temp_a1_3 + phi_a0_3);
            temp_v0_9 = arg0->unk10;
            temp_a2_4 = temp_v0_9->unk32;
            phi_v0_3 = temp_v0_9;
            phi_return_4 = temp_v0_9;
            if ((s32) temp_a2_4 < 0x36) {
                temp_v0_9->unk32 = (u8) (temp_a2_4 + 1);
                temp_v0_10 = arg0->unk10;
                phi_v0_3 = temp_v0_10;
                phi_return_4 = temp_v0_10;
            }
        }
        phi_v1_3 = arg1->unk64;
    } else {
        phi_v0_2->unk2C = (u16)0U;
        temp_v0_11 = arg0->unk10;
        phi_v1_3 = arg1->unk64;
        phi_v0_3 = temp_v0_11;
        phi_return_4 = temp_v0_11;
    }
    if ((s32) phi_v1_3->unkE < 0xFF) {
        temp_a2_5 = phi_v0_3->unk2E;
        temp_t4 = *(0x80053ECC + (phi_v0_3->unk33 * 2)) * 2;
        phi_return_3 = phi_return_4;
        if ((s32) temp_a2_5 >= temp_t4) {
            phi_v0_3->unk2E = (u16) (temp_a2_5 - temp_t4);
            temp_v1_6 = arg1->unk64;
            temp_a1_4 = temp_v1_6->unkE;
            phi_a0_4 = 1;
            if ((temp_a1_4 + 1) >= 0x100) {
                phi_a0_4 = (0xFF - temp_a1_4) & 0xFFFF;
            }
            temp_v1_6->unkE = (u16) (temp_a1_4 + phi_a0_4);
            temp_v0_12 = arg0->unk10;
            temp_a2_6 = temp_v0_12->unk33;
            phi_return_3 = temp_v0_12;
            if ((s32) temp_a2_6 < 0x36) {
                temp_v0_12->unk33 = (u8) (temp_a2_6 + 1);
                phi_return_3 = temp_v0_12;
            }
        }
    } else {
        phi_v0_3->unk2E = (u16)0U;
        phi_return_3 = phi_return_4;
    }
    phi_return_2 = phi_return_3;
    if ((*(void *)0x8007B2E4 & 8) == 0) {
        temp_a0 = arg0->unk10->unk34;
        temp_v1_7 = arg1->unk64;
        if ((s32) temp_a0 >= 0x62) {
            temp_v1_7->unk10 = 0U;
            phi_return_2 = phi_return_3;
        } else {
            temp_a2_7 = ((temp_a0 * 4) + 0x80050000)->unk3D3C;
            temp_a1_5 = temp_v1_7->unk10;
            phi_return_2 = phi_return_3;
            if (temp_a1_5 >= temp_a2_7) {
                temp_v1_7->unk10 = (u32) (temp_a1_5 - temp_a2_7);
                temp_v0_13 = arg0->unk10;
                temp_a0_2 = temp_v0_13->unk34;
                if ((s32) temp_a0_2 < 0x62) {
                    temp_v0_13->unk34 = (u8) (temp_a0_2 + 1);
                }
                temp_v1_8 = arg0->unk10 + 0x24;
                if ((((0x32 != temp_v1_8->unk0) || (0x32 != temp_v1_8->unk1)) || (0x32 != temp_v1_8->unk2)) || (0x32 != temp_v1_8->unk3)) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 8);
                    arg0->unk0 = (u16)0;
                    phi_return_2 = func_800268D4(phi_f12, 0, 1, 0xFF, (void *)0x8007B2E4);
                } else {

                }
            }
        }
    }
    phi_return = phi_return_2;
    if ((*(void *)0x8007B2E4 & 0xA) == 0) {
        temp_a0_3 = *(void *)0x8007BA70;
        phi_return = phi_return_2;
        if (temp_a0_3 != 0xFF) {
            func_800120C0(temp_a0_3, (void *)0x8007B2E4);
            func_8002E768(1);
            func_800212A0(*(void *)0x8007BA73);
            *(void *)0x8007BA70 = 0xFF;
            arg0->unk8 = (u16) (arg0->unk8 | 2);
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 2);
            phi_return = func_800268D4(0, 0x3B, 0xFF);
        }
    }
    return phi_return;
}
