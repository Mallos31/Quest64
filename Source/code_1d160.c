void *func_8001C560(void) {
    s32 temp_a0;
    s32 temp_v1;
    void *temp_v0;
    void *phi_return;

    *(void *)0x8008C592 = (u16) (*(void *)0x8008C592 & 0x8000);
    *(void *)0x8008C574 = 0.0f;
    *(void *)0x8008C578 = (u16)0;
    phi_return = (void *)0x8008C592;
    if ((*(void *)0x80084F10 & 1) != 0) {
        temp_v0 = *(void *)0x80084F18;
        temp_v1 = temp_v0->unk30;
        if (temp_v1 != 0) {
            temp_a0 = *(void *)0x80084EE8;
            *(void *)0x8008C560 = (s32) (temp_v1 + (temp_a0 * 8));
            *(void *)0x8008C564 = (s32) (temp_v0->unk34 + (temp_a0 * 0x10));
            return temp_v0;
        }
        *(void *)0x8008C560 = 0;
        *(void *)0x8008C564 = 0;
        phi_return = temp_v0;
    }
    return phi_return;
}

void *func_8001C5F4(void) {
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
                        if (func_80022FD0(0x7D0) < (u32) *(void *)0x8008C578) {
                            temp_f12 = (void *)0x8007BAB8->unk14;
                            temp_f14 = (void *)0x8007BAB8->unk1C;
                            sp3C = temp_f12;
                            sp38 = temp_f14;
                            temp_ret = func_8001D538(temp_f12, temp_f14);
                            temp_v0_2 = temp_ret;
                            phi_return = temp_ret;
                            if (temp_v0_2 != 0) {
                                sp24 = temp_v0_2;
                                temp_ret_2 = func_8001D474(temp_f12, sp38, *(void *)0x8008C560);
                                temp_v0_3 = temp_ret_2;
                                phi_return = temp_ret_2;
                                if (temp_v0_3 != 0) {
                                    *(void *)0x8008C578 = (u16)0U;
                                    temp_f16 = sp24->unk2;
                                    temp_f8 = (f32) sp24->unk0;
                                    sp28 = temp_v0_3;
                                    sp24 = sp24;
                                    func_8001D640((f32) sp24->unk0, (f32) sp24->unk2, sp28, func_80023210(sp3C - temp_f8, sp38 - (f32) temp_f16), sp28 + 8);
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
                                    func_80003A1C();
                                    func_80020888();
                                    *(void *)0x8008C434 = 100.0f;
                                    *(void *)0x8008C55C = func_80019A98(0, (bitwise s32) *(void *)0x8008C59C, *(void *)0x8007BAD0, (bitwise s32) *(void *)0x8008C5A0, (f32) ((f64) *(void *)0x8008C434 * *(void *)0x80071610));
                                    *(void *)0x8008C58C = (u16)0;
                                    *(void *)0x8008C58E = (u16)1;
                                    *(void *)0x8008C590 = func_80022FD0(*(void *)0x8007C990);
                                    phi_return = func_800267B8(0xD);
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

void func_8001C8C4(void) {
    s32 temp_v0;
    s32 phi_v0;

    temp_v0 = *(void *)0x8007D1A0;
    if (temp_v0 == 7) {
        *(void *)0x8008C59C = 0.0f;
        *(void *)0x8008C5A0 = 0.0f;
    } else {
        *(void *)0x8008C59C = (f32) *(void *)0x8007D1CC;
        *(void *)0x8008C5A0 = (f32) *(void *)0x8007D1D4;
    }
    *(void *)0x8008C592 = (u16)0x305;
    *(void *)0x8008C596 = (u16)0;
    *(void *)0x8008C594 = (u16)0;
    *(void *)0x8008C568 = (s32) *(void *)0x8007D0A8;
    *(void *)0x8008C56C = (s32) *(void *)0x8007D0AC;
    *(void *)0x8008C570 = temp_v0;
    *(void *)0x8007D0A8 = 0x803AA164;
    *(void *)0x8007D0AC = 0x803AABB8;
    func_8000B7DC(temp_v0 - 1, (bitwise s32) *(void *)0x8008C59C, (bitwise s32) *(void *)0x8008C5A0, *(void *)0x8007D1DC, 0x8007C998);
    func_8000B2B8();
    *(void *)0x8007D1A0 = 0;
    *(void *)0x8007C990 = 1;
    *(void *)0x8008C59A = (u16) 1;
    func_80009260();
    *(void *)0x8008C558 = 1;
    *(void *)0x8008C538 = 0x8007C9BC;
    *(void *)0x8008C58C = (s16) 1;
    *(void *)0x8008C58E = (s16) 1;
    *(void *)0x8008C590 = (u16)0;
    *(void *)0x8008C598 = (s16) (*(void *)0x8008C59A - 1);
    phi_v0 = 0x29;
    if (*(void *)0x8008C570 != 8) {
        phi_v0 = 0;
    }
    func_800267B8((s32) (phi_v0 << 0x18) >> 0x18);
    func_80003A1C();
    func_80020888();
    *(void *)0x8008C434 = (f32) ((*(void *)0x8008C570 * 4) + 0x80050000)->unk-2D74;
    *(void *)0x8008C55C = func_80019A98(0, (bitwise s32) *(void *)0x8008C59C, *(void *)0x8007D1D0, (bitwise s32) *(void *)0x8008C5A0, (f32) ((f64) *(void *)0x8008C434 * *(void *)0x80071618));
}

u16 func_8001CACC(void) {
    f32 sp1C;
    void *sp18;
    f32 temp_f0;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f2_2;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_5;
    f64 temp_f12;
    f64 temp_f16;
    f64 temp_f16_2;
    f64 temp_f2;
    u16 temp_t4;
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    f32 phi_f14;
    f32 phi_f14_2;
    f32 phi_f14_3;
    u16 phi_return;

    temp_v0 = *(void *)0x8008C58C;
    if (temp_v0 == 0) {
        temp_v1_2 = ((*(void *)0x8008C590 * 0x128) + 0x24) + 0x8007C998;
        sp18 = temp_v1_2;
        sp1C = func_80023210(temp_v1_2->unk0 - (void *)0x8007BAB8->unk14, temp_v1_2->unk8 - (void *)0x8007BAB8->unk1C);
        phi_f14_2 = sp1C;
        if (func_80022FD0(0x64) >= 0x33U) {
            temp_f16_2 = *(void *)0x80071620;
            temp_f14_2 = (f32) ((f64) sp1C + temp_f16_2);
            temp_f0_2 = (f64) temp_f14_2;
            if (temp_f0_2 < *(void *)0x80071628) {
                phi_f14_2 = (f32) (temp_f0_2 + *(void *)0x80071630);
            } else {
                phi_f14_2 = temp_f14_2;
                if (temp_f16_2 < temp_f0_2) {
                    phi_f14_2 = (f32) (temp_f0_2 - *(void *)0x80071638);
                }
            }
        }
        temp_f12 = *(void *)0x80071640;
        temp_f14_3 = (f32) ((f64) phi_f14_2 + *(void *)0x80071650);
        temp_f0_3 = (f64) temp_f14_3;
        if (temp_f0_3 < *(void *)0x80071658) {
            phi_f14_3 = (f32) (temp_f0_3 + temp_f12);
        } else {
            phi_f14_3 = temp_f14_3;
            if (*(void *)0x80071648 < temp_f0_3) {
                phi_f14_3 = (f32) (temp_f0_3 - temp_f12);
            }
        }
        (void *)0x8008C580->unk0 = 0.0f;
        temp_v0_2 = temp_v1_2->unk64;
        temp_f2_2 = temp_v0_2->unk1C;
        temp_f12_2 = temp_v0_2->unk18;
        if (temp_f2_2 < temp_f12_2) {
            temp_f0_4 = (f64) (temp_f12_2 * temp_v1_2->unk24);
            (void *)0x8008C580->unk4 = (f32) ((temp_f0_4 + temp_f0_4) + 15.0);
        } else {
            temp_f0_5 = (f64) (temp_f2_2 * temp_v1_2->unk24);
            (void *)0x8008C580->unk4 = (f32) ((temp_f0_5 + temp_f0_5) + 15.0);
        }
        sp18 = temp_v1_2;
        (void *)0x80086DC0->unk4C = (f32) ((f64) (void *)0x8008C580->unk4 * 1.5);
        func_800232F4(phi_f14_3, phi_f14_3, (void *)0x8008C580);
        (void *)0x80086DC0->unkC = (f32) (temp_v1_2->unk0 + (void *)0x8008C580->unk0);
        (void *)0x80086DC0->unk14 = (f32) (temp_v1_2->unk8 + (void *)0x8008C580->unk4);
        (void *)0x80086DC0->unk10 = (f32) ((f64) temp_v1_2->unk4 + 15.0);
        temp_f0 = *(void *)0x8007BAD0;
        if ((void *)0x80086DC0->unk10 < temp_f0) {
            (void *)0x80086DC0->unk10 = temp_f0;
        }
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk0 = 0;
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk58 = 15.0f;
        (void *)0x80086DC0->unk80 = temp_v1_2;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80071660;
        *(void *)0x80086EF0 = (f32) (void *)0x80086DC0->unk2C;
        *(void *)0x8008C58E = (u16)0x3CU;
        *(void *)0x8008C58C = (u16) (*(void *)0x8008C58C + 1);
        return (bitwise u16) temp_f0;
    }
    if (temp_v0 != 1) {
        return temp_v0;
    }
    temp_t4 = *(void *)0x8008C58E - 1;
    *(void *)0x8008C58E = temp_t4;
    phi_return = temp_v0;
    if ((temp_t4 & 0xFFFF) == 0) {
        *(void *)0x8008C592 = (u16) (*(void *)0x8008C592 & 0xFDFF);
        func_80013F5C(*(void *)0x80086ED8);
        temp_f16 = *(void *)0x80071668;
        temp_f14 = (f32) ((f64) func_80023210(*(void *)0x8008C59C - (void *)0x8007BAB8->unk14, *(void *)0x8008C5A0 - (void *)0x8007BAB8->unk1C) + temp_f16);
        temp_f2 = (f64) temp_f14;
        if (temp_f16 < temp_f2) {
            phi_f14 = (f32) (temp_f2 - *(void *)0x80071670);
        } else {
            phi_f14 = temp_f14;
            if (temp_f2 < *(void *)0x80071678) {
                phi_f14 = (f32) (temp_f2 + *(void *)0x80071680);
            }
        }
        (void *)0x8008C580->unk0 = 0.0f;
        (void *)0x8008C580->unk4 = 50.0f;
        func_800232F4(phi_f14, phi_f14, (void *)0x8008C580);
        (void *)0x80086DC0->unkC = (f32) ((void *)0x8007BAB8->unk14 + (void *)0x8008C580->unk0);
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk10 = (f32) ((f64) (void *)0x8007BAB8->unk18 + 30.0);
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk0 = 4;
        (void *)0x80086DC0->unk8 = (u16) ((void *)0x80086DC0->unk8 | 0x10);
        (void *)0x80086DC0->unk14 = (f32) ((void *)0x8007BAB8->unk1C + (void *)0x8008C580->unk4);
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        if (((*(void *)0x8008C592 & 0x100) != 0) && (*(void *)0x8008C570 == 8)) {
            (void *)0x80086DC0->unk58 = 50.0f;
            (void *)0x80086DC0->unk5C = 28.0f;
            (void *)0x80086DC0->unk4C = 180.0f;
        } else {
            temp_v1 = (*(void *)0x80084EE4 * 0xC) + 0x8004D0A0;
            (void *)0x80086DC0->unk58 = (f32) ((void *)0x80086DC0->unk58 + temp_v1->unk0);
            (void *)0x80086DC0->unk4C = (f32) ((void *)0x80086DC0->unk4C + temp_v1->unk4);
        }
        (void *)0x80086DC0->unk80 = (void *)0x8007BACC;
        (void *)0x80086DC0->unk70 = (f32) *(void *)0x80071688;
        *(void *)0x80086EFC = 0.0f;
        phi_return = (u16) (void *)0x80086DC0;
    }
    return phi_return;
}

void func_8001CFE8(void) {
    s32 sp2C;
    void *sp24;
    s16 temp_v0_2;
    s32 temp_t3;
    u16 temp_t4;
    u16 temp_t5;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *phi_t0;
    s32 phi_a1;
    u16 phi_v1;
    u16 phi_v1_2;
    void *phi_t0_2;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_t0_3;
    f32 phi_f0;

    temp_v1 = *(void *)0x8008C592;
    if ((temp_v1 & 4) != 0) {
        temp_v0 = *(void *)0x8008C594;
        if (temp_v0 != 0) {
            *(void *)0x8008C594 = (u16) (temp_v0 - 1);
            return;
        }
        if ((temp_v1 & 2) != 0) {
            phi_t0 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x24) + 0x8007C998;
        } else {
            phi_t0 = (void *)0x8007BACC;
        }
        if ((phi_t0->unk60 & 1) == 0) {
            temp_t4 = temp_v1 | 8;
            if ((*(void *)0x8007C990 == 0) || ((temp_v1 & 0x400) != 0)) {
                *(void *)0x8008C592 = temp_t4;
                if ((temp_t4 & 0x100) != 0) {
                    sp2C = 1;
                    sp24 = phi_t0;
                    func_8000BA0C((*(void *)0x8008C570 - 1) & 0xFFFF, 1, (void *)0x8008C592);
                    func_8000BB68(*(void *)0x8008C570 - 1);
                    *(void *)0x8007D0A8 = (s32) *(void *)0x8008C568;
                    *(void *)0x8007D0AC = (s32) *(void *)0x8008C56C;
                }
                sp2C = 1;
                sp24 = phi_t0;
                *(void *)0x8007BA70 = func_8001D828(1);
                phi_a1 = 1;
                phi_v1 = *(void *)0x8008C592;
                phi_t0_2 = phi_t0;
            } else {
                if ((temp_v1 & 0x10) != 0) {
                    phi_a1 = 1;
                    phi_v1 = temp_v1;
                    phi_t0_2 = phi_t0;
                } else {
                    phi_a1 = 0;
                    phi_v1 = temp_v1;
                    phi_t0_2 = phi_t0;
                    if ((temp_v1 & 0x100) == 0) {
                        temp_t5 = temp_v1 | 0x10;
                        phi_a1 = 0;
                        phi_v1 = temp_v1;
                        phi_t0_2 = phi_t0;
                        if ((*(void *)0x8007BAC0 & 0x20) != 0) {
                            *(void *)0x8008C592 = temp_t5;
                            phi_a1 = 1;
                            phi_v1 = temp_t5 & 0xFFFF;
                            phi_t0_2 = phi_t0;
                        }
                    }
                }
            }
            temp_v0_2 = phi_v1 & 0xFFFB;
            if (phi_a1 != 0) {
                *(void *)0x8008C592 = (s16) (phi_v1 & 0xFFFE);
                *(void *)0x8008C630 = (u16)0;
                func_80019CA4(*(void *)0x8008C55C, phi_a1, (void *)0x8008C592);
                func_80008F6C();
                func_800143C0(*(void *)0x80086ED8);
                temp_v1_2 = *(void *)0x8008C592;
                temp_t8 = temp_v1_2 & 0xFEFF;
                phi_v1_2 = temp_v1_2;
                if ((temp_v1_2 & 0x100) != 0) {
                    *(void *)0x8008C592 = temp_t8;
                    phi_v1_2 = temp_t8 & 0xFFFF;
                }
                if ((phi_v1_2 & 0x10) == 0) {
                    func_800267F8(0x2B, 8, 0);
                    return;
                }
                func_8002684C(*(void *)0x80084EE4, *(void *)0x80084EE8, 0);
                return;
            }
            *(void *)0x8008C592 = temp_v0_2;
            temp_t3 = temp_v0_2 & 2;
            phi_v0 = temp_t3;
            if (temp_t3 != 0) {
                sp24 = phi_t0_2;
                func_8000932C(phi_a1, (void *)0x8008C592);
                phi_v0 = *(void *)0x8008C592 & 2;
            }
            *(void *)0x8008C5A4 = (f32) *phi_t0_2;
            *(void *)0x8008C430 = (f32) phi_t0_2->unk8;
            if (phi_v0 != 0) {
                phi_f0 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x80080000)->unk-3658;
            } else {
                phi_f0 = *(void *)0x8007BAC4;
            }
            if (phi_v0 != 0) {
                phi_t0_3 = ((((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x24) + 0x8007C998;
            } else {
                phi_t0_3 = (void *)0x8007BACC;
            }
            if (phi_v0 != 0) {
                phi_v0_2 = 1;
            } else {
                phi_v0_2 = 2;
            }
            *(void *)0x8008C55E = func_80019A98(phi_v0_2 & 0xFFFF, (bitwise s32) *(void *)0x8008C5A4, phi_t0_3->unk4, (bitwise s32) *(void *)0x8008C430, (f32) ((f64) ((phi_f0 * phi_t0_3->unk68->unk90) + (phi_t0_3->unk64->unk18 * phi_t0_3->unk24)) * *(void *)0x80071690));
        }
    }
}

void func_8001D358(void) {
    s32 temp_v1;
    u16 temp_a2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t8;
    u16 temp_v0;
    void *temp_a0;
    u16 phi_v1;
    u16 phi_v1_2;
    u16 phi_a2;
    u16 phi_a2_2;

    func_8001817C();
    temp_t4 = *(void *)0x8008C592;
    if ((temp_t4 & 1) != 0) {
        if ((temp_t4 & 2) == 0) {
            temp_v0 = *(void *)0x8008C59A;
            phi_a2_2 = temp_v0;
            if (temp_v0 != 0) {
                phi_v1 = *(void *)0x8008C598;
                phi_a2 = temp_v0;
loop_4:
                temp_t8 = phi_v1 + 1;
                temp_v1 = temp_t8 & 0xFFFF;
                *(void *)0x8008C598 = temp_t8;
                phi_v1_2 = (u16) temp_v1;
                if (temp_v1 >= (s32) temp_v0) {
                    *(void *)0x8008C598 = (u16)0U;
                    phi_v1_2 = 0 & 0xFFFF;
                }
                temp_a0 = (*((phi_v1_2 * 2) + 0x8007D0B0) * 0x128) + 0x8007C998;
                if ((temp_a0->unkA == 0) || (phi_a2_2 = phi_a2, (-1 == temp_a0->unk74))) {
                    temp_a2 = phi_a2 - 1;
                    phi_v1 = phi_v1_2;
                    phi_a2 = temp_a2;
                    phi_a2_2 = temp_a2;
                    if (temp_a2 != 0) {
                        goto loop_4;
                    }
                } else {

                }
            }
            if (phi_a2_2 == 0) {
                *(void *)0x8008C592 = (u16) (temp_t4 | 0x400);
            }
            *(void *)0x8008C594 = (u16)0x14;
        } else {
            *(void *)0x8008C594 = (u16)0;
        }
        func_80019CA4(*(void *)0x8008C55E);
        temp_t6 = *(void *)0x8008C592 ^ 2;
        *(void *)0x8008C592 = temp_t6;
        *(void *)0x8008C592 = (u16) (temp_t6 | 4);
    }
}

void *func_8001D474(f32 arg0, f32 arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_v1_2;

    phi_v1_2 = NULL;
    if (arg2 != 0) {
        temp_v0 = arg2->unk4;
        temp_v1 = arg2->unk0;
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
        phi_v0_2 = temp_v0;
        phi_v1_2 = temp_v1;
        if (temp_v0 != 0) {
loop_2:
            temp_f0 = (f32) phi_v1->unk0;
            if (((!(temp_f0 <= arg0) || (temp_f2 = (f32) phi_v1->unk2, !(temp_f2 <= arg1))) || !((arg0 - temp_f0) <= (f32) phi_v1->unk4)) || (phi_v0_2 = phi_v0, phi_v1_2 = phi_v1, !((arg1 - temp_f2) <= (f32) phi_v1->unk6))) {
                temp_v0_2 = phi_v0 - 1;
                temp_v1_2 = phi_v1 + 0x18;
                phi_v1 = temp_v1_2;
                phi_v0 = temp_v0_2;
                phi_v0_2 = temp_v0_2;
                phi_v1_2 = temp_v1_2;
                if (temp_v0_2 != 0) {
                    goto loop_2;
                }
            } else {

            }
        }
        if (phi_v0_2 == 0) {
            phi_v1_2 = NULL;
        }
    }
    return phi_v1_2;
}

s32 func_8001D538(f32 arg0, f32 arg1) {
    ? sp30;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a1;
    void *phi_v1;
    s32 phi_a0;
    s32 phi_a0_2;
    s32 phi_v0;
    s32 phi_a0_3;
    f32 phi_f12;
    f32 phi_f14;
    s32 phi_v1_2;

    temp_a1 = *(void *)0x8008C564;
    phi_v1_2 = 0;
    if (temp_a1 != 0) {
        temp_v0 = temp_a1->unkC;
        phi_a0_3 = 0;
        phi_f12 = arg0;
        phi_f14 = arg1;
        if (temp_v0 != 0) {
            temp_f14 = *(void *)0x8007169C;
            phi_v1 = temp_a1->unk8;
            phi_a0 = 0;
            phi_v0 = temp_v0;
loop_3:
            temp_v0_2 = phi_v0 - 1;
            temp_f0 = (f32) phi_v1->unk0 - arg0;
            temp_f2 = (f32) phi_v1->unk2 - arg1;
            temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
            phi_a0_2 = phi_a0;
            if (temp_f14 <= temp_f12) {
                phi_a0_2 = phi_a0;
                if (temp_f12 <= *(void *)0x80071698) {
                    *(&sp30 + (phi_a0 * 4)) = phi_v1;
                    phi_a0_2 = phi_a0 + 1;
                }
            }
            phi_a0_3 = phi_a0_2;
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            if (phi_a0_2 < 6) {
                phi_v1 = phi_v1 + 4;
                phi_a0 = phi_a0_2;
                phi_v0 = temp_v0_2;
                phi_a0_3 = phi_a0_2;
                phi_f12 = temp_f12;
                phi_f14 = temp_f14;
                if (temp_v0_2 != 0) {
                    goto loop_3;
                }
            }
        }
        if (phi_a0_3 == 0) {
            phi_v1_2 = 0;
        } else {
            phi_v1_2 = *(&sp30 + (func_80022FD0(phi_f12, phi_f14, phi_a0_3, &sp30) * 4));
        }
    }
    return phi_v1_2;
}

void func_8001D640(f32 arg0, f32 arg1, ? arg2, void *arg3) {
    ? sp6C;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_t4;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_a0;
    u16 temp_s7;
    u16 temp_s7_2;
    void *temp_a0_2;
    void *temp_s3;
    void *temp_s5;
    void *temp_v1;
    void *phi_s5;
    s32 phi_s1;
    ? *phi_s6;
    s32 phi_s2;
    void *phi_s3;
    s32 phi_s2_2;
    s32 phi_s1_2;
    u16 phi_s7;
    void *phi_s3_2;

    temp_a0 = *arg3;
    temp_a0_2 = *(void *)0x8008C564;
    temp_v1 = (*((arg3 + 2) + (func_80022FD0(temp_a0) * 2)) * 8) + temp_a0_2->unk4;
    temp_s7 = temp_v1->unk4;
    temp_t4 = temp_v1->unk6 * 0xC;
    temp_s5 = temp_v1->unk0;
    *(void *)0x8008C558 = 0;
    if (temp_s7 != 0) {
        phi_s5 = temp_s5;
        phi_s6 = &sp6C;
        phi_s2 = 0x8007C998;
        phi_s7 = temp_s7;
        phi_s3_2 = *temp_a0_2->unk0 + temp_t4;
loop_2:
        temp_v0 = phi_s5->unk8;
        temp_s1 = phi_s5->unk4;
        phi_s1 = temp_s1;
        if (temp_v0 != 0) {
            phi_s1 = temp_s1 + func_80022FD0(temp_v0 + 1);
        }
        phi_s6->unk4 = phi_s1;
        phi_s6->unk0 = (s32) phi_s5->unk0;
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 + phi_s1);
        temp_v0_2 = *(void *)0x8008C558;
        ((temp_v0_2 * 4) + 0x80090000)->unk-3AC8 = (s32) (phi_s2 + 0x24);
        *(void *)0x8008C558 = (s32) (temp_v0_2 + 1);
        phi_s3 = phi_s3_2;
        phi_s2_2 = phi_s2;
        phi_s1_2 = phi_s1;
        if (phi_s1 != 0) {
loop_5:
            (void *)0x8008C580->unk0 = (f32) phi_s3->unk0;
            (void *)0x8008C580->unk4 = (f32) phi_s3->unk4;
            func_800232F4(arg2, (void *)0x8008C580);
            func_80008FE0(phi_s5->unk0, arg0 + (void *)0x8008C580->unk0, arg1 + (void *)0x8008C580->unk4, arg2, phi_s2_2 + 0x24, phi_s2_2);
            temp_s1_2 = phi_s1_2 - 1;
            temp_s2 = phi_s2_2 + 0x128;
            temp_s3 = phi_s3 + 0xC;
            phi_s3 = temp_s3;
            phi_s2_2 = temp_s2;
            phi_s1_2 = temp_s1_2;
            phi_s2 = temp_s2;
            phi_s3_2 = temp_s3;
            if (temp_s1_2 != 0) {
                goto loop_5;
            }
        }
        temp_s7_2 = phi_s7 - 1;
        phi_s5 = phi_s5 + 0xC;
        phi_s6 = phi_s6 + 8;
        phi_s7 = temp_s7_2;
        if (temp_s7_2 != 0) {
            goto loop_2;
        }
    }
    func_80009260();
    *(void *)0x8008C59A = (s16) *(void *)0x8007C990;
}

void func_8001D820(void) {

}

u8 func_8001D828(void) {
    u8 phi_v1;

    if (((*(void *)0x8008C592 & 0x100) != 0) || (phi_v1 = (u8)0xFFU, (func_80022FD0(4) == 0))) {
        phi_v1 = ((func_80022FD0(*(void *)0x8008C59A) * 0x128) + 0x80080000)->unk-3648->unk34;
    } else {

    }
    return phi_v1;
}

void func_8001D89C(void) {

}
