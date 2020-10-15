s32 func_80011B40(void) {
    void *temp_v1;
    void *phi_v1;

    phi_v1 = (void *)0x800869D8;
loop_1:
    temp_v1 = phi_v1 + 4;
    temp_v1->unk-3 = (u8)0;
    temp_v1->unk-2 = (u8)0;
    temp_v1->unk-1 = (u8)0;
    temp_v1->unk-4 = (u8)0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0x800869F8) {
        goto loop_1;
    }
    return 0x800869F8;
}

void *func_80011B70(void) {
    f32 temp_f22;
    u16 temp_s3_2;
    u16 temp_s3_3;
    u32 temp_s3;
    u8 temp_t1;
    void *temp_v0;
    void *temp_v1;
    void *phi_v0;
    u32 phi_s3;
    u32 phi_s3_2;
    void *phi_v0_2;
    void *phi_s1;
    void *phi_s0;
    ? phi_a1;
    u16 phi_s3_3;
    void *phi_return;

    phi_v0 = (void *)0x8004C470;
    phi_s3 = 0U;
    phi_return = (void *)0x8004C470;
loop_1:
    phi_s3_2 = phi_s3;
    phi_v0_2 = phi_v0;
    if (*(void *)0x80084EE4 != *phi_v0) {
        temp_s3 = phi_s3 + 1;
        temp_v0 = phi_v0 + 8;
        phi_v0 = temp_v0;
        phi_s3 = temp_s3;
        phi_s3_2 = temp_s3;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        phi_return = temp_v0;
        if (temp_s3 < 0x13U) {
            goto loop_1;
        }
    }
    if (phi_s3_2 != 0x13) {
        temp_v1 = phi_v0_2->unk4 + (*(void *)0x80084EE8 * 8);
        temp_s3_2 = temp_v1->unk0;
        *(void *)0x800869A0 = (?32) temp_s3_2;
        if (temp_s3_2 != 0) {
            temp_f22 = *(void *)0x800712C0;
            phi_s1 = temp_v1->unk4;
            phi_s0 = (void *)0x800862E0;
            phi_s3_3 = temp_s3_2;
loop_6:
            phi_s0->unk0 = (f32) phi_s1->unk0;
            phi_s0->unkC = 0.0f;
            phi_s0->unk14 = 0.0f;
            phi_s0->unk8 = (f32) phi_s1->unk4;
            phi_s0->unk10 = (f32) phi_s1->unk8;
            func_8000EE60(phi_s0->unk0, 0.0f, (bitwise s32) phi_s0->unk8, 0xA00, (void *)0x800869B8);
            phi_s0->unk4 = (f32) (void *)0x800869B8->unk4;
            phi_s0->unk2C = (f32) (void *)0x800869B8->unkC;
            phi_s0->unk30 = (f32) (void *)0x800869B8->unk10;
            phi_s0->unk34 = (f32) (void *)0x800869B8->unk14;
            phi_s0->unk1C = (f32) phi_s1->unk14;
            phi_s0->unk18 = (f32) phi_s1->unk18;
            phi_s0->unk20 = (f32) phi_s1->unk1C;
            phi_s0->unk44 = (f32) phi_s1->unkC;
            phi_s0->unk24 = temp_f22;
            phi_s0->unk4C = (f32) phi_s1->unk10;
            temp_t1 = phi_s1->unk20;
            phi_s0->unk62 = (s16) temp_t1;
            phi_s0->unk60 = (u16)0;
            phi_s0->unk50 = (s16) phi_s1->unk21;
            if (func_80012170(temp_t1 & 0xFFFF) != 0) {
                phi_a1 = 3;
            } else {
                phi_a1 = 0;
            }
            temp_s3_3 = phi_s3_3 - 1;
            phi_s1 = phi_s1 + 0x24;
            phi_s0 = phi_s0 + 0x6C;
            phi_s3_3 = temp_s3_3;
            if (temp_s3_3 != 0) {
                goto loop_6;
            }
            return func_8001D8B0(phi_s0, phi_a1, 1, phi_a1, 1, 1);
        }
    } else {
        *(void *)0x800869A0 = 0;
    }
    return phi_return;
}

void func_80011D28(s32 arg0) {
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_t8;
    u16 temp_v1;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x800869A0;
    if (temp_s1 != 0) {
        phi_s0 = (void *)0x800862E0;
        phi_s1 = temp_s1;
loop_2:
        temp_v1 = phi_s0->unk60;
        if ((temp_v1 & 0x8000) != 0) {
            temp_t8 = ((temp_v1 & 0xFFFF7FFF) - 1) & 0xFFFF;
            if (temp_t8 == 0) {
                phi_s0->unk60 = (u16)0U;
                func_8001D8B0(phi_s0, 3, 1, 3, 1, 1);
            } else {
                phi_s0->unk60 = (u16) (temp_t8 | 0x8000);
            }
        }
        func_8001DB38(0, phi_s0, (phi_s0->unk52 * 0xC) + 0x8010FDC4, arg0);
        func_8001E0AC(phi_s0->unk58, phi_s0, (phi_s0->unk52 * 0xC) + 0x8010FDC4);
        func_80011860(phi_s0->unk0, phi_s0->unk4, phi_s0->unk8, phi_s0->unk2C, phi_s0->unk30, phi_s0->unk34, 6.0f);
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x6C;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_2;
        }
    }
}

Failed to decompile function func_80011E78:

Complex control flow; node assumed to be part of &&/|| wasn't. Run with --no-andor to disable detection of &&/|| and try again.

void func_8001205C(void *arg0) {
    func_800121B0(arg0->unk62);
    arg0->unk60 = (u16)0x805B;
    func_8001D8B0(arg0, 1, 1, 2, 1, 1);
    func_800268D4(0x1A, 8, 0xFF);
}

void *func_800120C0(s32 arg0) {
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    u8 phi_a1;
    void *phi_v1;
    void *phi_v0;
    u8 phi_a1_2;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v0_3;
    void *phi_v1_3;
    void *phi_return;
    void *phi_v1_4;

    temp_v0 = ((arg0 * 4) + 0x803B0000)->unk-66AC;
    (void *)0x8007C570->unk0 = (u8)0x7F;
    (void *)0x8007C570->unk1 = (u8)0xE0;
    (void *)0x8007C570->unk2 = (u8)0x7F;
    (void *)0x8007C570->unk3 = (u8)0x7F;
    temp_a1 = *temp_v0;
    phi_a1 = temp_a1;
    phi_v1 = (void *)0x8007C574;
    phi_v0 = temp_v0;
    phi_v1_4 = (void *)0x8007C574;
    if (0xFF != temp_a1) {
loop_1:
        *phi_v1 = phi_a1;
        temp_a1_2 = phi_v0->unk1;
        temp_v1 = phi_v1 + 1;
        phi_a1 = temp_a1_2;
        phi_v1 = temp_v1;
        phi_v0 = phi_v0 + 1;
        phi_v1_4 = temp_v1;
        if (0xFF != temp_a1_2) {
            goto loop_1;
        }
    }
    phi_v0_3 = (void *)0x8004C460;
    phi_v1_3 = phi_v1_4;
    phi_return = (void *)0x8004C460;
    if (0xFF != *(void *)0x8004C460) {
        phi_a1_2 = *(void *)0x8004C460;
        phi_v1_2 = phi_v1_4;
        phi_v0_2 = (void *)0x8004C460;
loop_4:
        *phi_v1_2 = phi_a1_2;
        temp_a1_3 = phi_v0_2->unk1;
        temp_v1_2 = phi_v1_2 + 1;
        temp_v0_2 = phi_v0_2 + 1;
        phi_a1_2 = temp_a1_3;
        phi_v1_2 = temp_v1_2;
        phi_v0_2 = temp_v0_2;
        phi_v0_3 = temp_v0_2;
        phi_v1_3 = temp_v1_2;
        phi_return = temp_v0_2;
        if (0xFF != temp_a1_3) {
            goto loop_4;
        }
    }
    *phi_v1_3 = (u8) *phi_v0_3;
    *(void *)0x8007C970 = (u8)0xFF;
    return phi_return;
}

s32 func_80012170(s32 arg0) {
    s32 temp_t6;

    temp_t6 = arg0 & 0xFFFF;
    return (((temp_t6 & 7) + 0x80050000)->unk-28C0 & ((temp_t6 >> 3) + 0x80080000)->unk69D8) & 0xFF;
}

void func_800121B0(s32 arg0) {
    s32 temp_t6;
    void *temp_v1;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 >> 3) + 0x800869D8;
    *temp_v1 = (u8) (*temp_v1 | ((temp_t6 & 7) + 0x80050000)->unk-28C0);
}

s32 func_800121F0(void) {
    void *temp_v1;
    void *phi_v1;

    phi_v1 = (void *)0x80086AE8;
loop_1:
    temp_v1 = phi_v1 + 4;
    temp_v1->unk-3 = (u8)0;
    temp_v1->unk-2 = (u8)0;
    temp_v1->unk-1 = (u8)0;
    temp_v1->unk-4 = (u8)0;
    phi_v1 = temp_v1;
    if (temp_v1 != 0x80086AF8) {
        goto loop_1;
    }
    return 0x80086AF8;
}

void *func_80012220(void) {
    u16 temp_s2_2;
    u16 temp_s2_3;
    u32 temp_s2;
    void *temp_ret;
    void *temp_s0;
    void *temp_v0;
    void *phi_v0;
    u32 phi_s2;
    u32 phi_s2_2;
    void *phi_v0_2;
    void *phi_s0;
    void *phi_s1;
    u16 phi_s2_3;
    void *phi_return;

    phi_v0 = (void *)0x8004C510;
    phi_s2 = 0U;
    phi_return = (void *)0x8004C510;
loop_1:
    if ((*(void *)0x80084EE4 != phi_v0->unk0) || (phi_s2_2 = phi_s2, phi_v0_2 = phi_v0, (*(void *)0x80084EE8 != phi_v0->unk2))) {
        temp_s2 = phi_s2 + 1;
        temp_v0 = phi_v0 + 0xC;
        phi_v0 = temp_v0;
        phi_s2 = temp_s2;
        phi_s2_2 = temp_s2;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        phi_return = temp_v0;
        if (temp_s2 < 0x2BU) {
            goto loop_1;
        }
    } else {

    }
    if (phi_s2_2 < 0x2BU) {
        temp_s2_2 = phi_v0_2->unk4;
        *(void *)0x80086A00 = (?32) temp_s2_2;
        if (temp_s2_2 != 0) {
            phi_s0 = (void *)0x80086A08;
            phi_s1 = phi_v0_2->unk8;
            phi_s2_3 = temp_s2_2;
loop_7:
            phi_s0->unk12 = (u16)-1;
            phi_s0->unk10 = func_80012700(phi_s1->unk8);
            phi_s0->unk0 = (f32) phi_s1->unk0;
            phi_s0->unk8 = (f32) -phi_s1->unk4;
            temp_ret = func_8000EE60(phi_s0->unk0, 0.0f, (bitwise s32) phi_s0->unk8, 0xA00, (void *)0x80086AC8);
            phi_s0->unkC = 0.0f;
            temp_s2_3 = phi_s2_3 - 1;
            phi_s0->unk4 = (f32) (void *)0x80086AC8->unk4;
            temp_s0 = phi_s0 + 0x18;
            temp_s0->unk-4 = (u8) phi_s1->unk8;
            phi_s0 = temp_s0;
            phi_s1 = phi_s1 + 0xC;
            phi_s2_3 = temp_s2_3;
            if (temp_s2_3 != 0) {
                goto loop_7;
            }
            return temp_ret;
        }
    } else {
        *(void *)0x80086A00 = 0;
    }
    return phi_return;
}

void *func_80012358(void *arg0) {
    void *sp5C;
    f32 sp54;
    f32 sp50;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    f64 temp_f0_2;
    s32 temp_s1;
    s32 temp_s1_2;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x80086A00;
    sp5C = NULL;
    if (temp_s1 != 0) {
        phi_s0 = (void *)0x80086A08;
        phi_s1 = temp_s1;
loop_2:
        if (((((phi_s0->unk10 == 0) && (temp_f0 = phi_s0->unk0 - arg0->unk0, temp_a1 = &sp50, temp_f2 = phi_s0->unk8 - arg0->unk8, (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 400.0f))) && (sp50 = temp_f0, sp54 = temp_f2, func_800232F4(arg0->unk10, temp_a1), (0.0f <= sp54))) && (temp_f0_2 = (f64) sp50, (-5.0 < temp_f0_2))) && (temp_f0_2 < 5.0)) {
            sp5C = phi_s0;
        } else {
            temp_s1_2 = phi_s1 - 1;
            phi_s0 = phi_s0 + 0x18;
            phi_s1 = temp_s1_2;
            if (temp_s1_2 != 0) {
                goto loop_2;
            }
        }
    }
    return sp5C;
}

void func_8001249C(void) {
    f32 sp50;
    f32 sp4C;
    f32 *temp_a1;
    f64 temp_f20;
    s16 temp_v0;
    s32 temp_s1;
    s32 temp_s1_2;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x80086A00;
    if (temp_s1 != 0) {
        temp_f20 = *(void *)0x800712F0;
        phi_s0 = (void *)0x80086A08;
        phi_s1 = temp_s1;
loop_2:
        if (phi_s0->unk10 == 0) {
            phi_s0->unk12 = (s16) (phi_s0->unk12 + 1);
            temp_v0 = phi_s0->unk12;
            if ((s32) temp_v0 >= 0) {
                temp_a1 = &sp4C;
                if ((temp_v0 & 1) != 0) {
                    sp4C = 0.0f;
                    sp50 = 1.0f;
                    func_800232F4(phi_s0->unkC, temp_a1);
                    *(void *)0x8004CBC0 = (f32) (phi_s0->unk0 + sp4C);
                    *(void *)0x8004CBC4 = (f32) phi_s0->unk4;
                    *(void *)0x8004CBC8 = (f32) (phi_s0->unk8 + sp50);
                    *(void *)0x8004CBB8 = (s32) ((((s32) phi_s0->unk12 >> 1) << 8) + 0x8004C7A8);
                    func_8001B108(0x8004CBA8);
                    if ((s32) phi_s0->unk12 >= 6) {
                        phi_s0->unk12 = (s16) (func_80022FD0(0x1E) - 0x3C);
                        phi_s0->unkC = (f32) ((f64) phi_s0->unkC + temp_f20);
                    }
                }
            }
        }
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x18;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_2;
        }
    }
}

void *func_800125F4(void *arg0) {
    f32 temp_f2;
    f32 temp_f6;
    f64 temp_f4;
    u8 temp_t6;
    void *temp_a1;
    void *temp_v0;
    f32 phi_f6;

    temp_t6 = arg0->unk3C;
    temp_f6 = (f32) temp_t6;
    phi_f6 = temp_f6;
    if ((s32) temp_t6 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    temp_f4 = (f64) func_80035680((f32) ((f64) phi_f6 * *(void *)0x800712F8));
    arg0->unk3C = (u8) (arg0->unk3C + 4);
    temp_v0 = ((arg0->unk0 & 1) * 4) + 0x8004CBE8;
    temp_f2 = (f32) (temp_f4 * *(void *)0x80071300);
    arg0->unk1C = (f32) (arg0->unk1C + arg0->unk34);
    arg0->unk18 = (f32) (arg0->unk18 + (arg0->unk30 + temp_f2));
    arg0->unk20 = (f32) (arg0->unk20 + (arg0->unk38 + temp_f2));
    temp_a1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
    temp_a1->unk0 = 0xFB000000;
    temp_a1->unk4 = (s32) (((temp_v0->unk3 | (temp_v0->unk0 << 0x18)) | (temp_v0->unk1 << 0x10)) | (temp_v0->unk2 << 8));
    return temp_v0;
}

s32 func_80012700(s32 arg0) {
    s32 temp_t6;

    temp_t6 = arg0 & 0xFFFF;
    return (((temp_t6 & 7) + 0x80050000)->unk-28C0 & ((temp_t6 >> 3) + 0x80080000)->unk6AE8) & 0xFF;
}

void func_80012740(s32 arg0) {
    s32 temp_t6;
    void *temp_v1;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 >> 3) + 0x80086AE8;
    *temp_v1 = (u8) (*temp_v1 | ((temp_t6 & 7) + 0x80050000)->unk-28C0);
}

f32 func_80012780(void) {
    void *sp28;
    f32 temp_f2;
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t9;
    s32 temp_v1_2;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f0;
    void *phi_v0;
    f32 phi_return;

    func_80035994(0x80301098, 0xC31F0000, 0x431F0000, 0x42EE0000, -119.0f, 10.0f, 200.0f, 1.0f);
    func_80035994(0x8030E1E8, 0xC31F0000, 0x431F0000, 0x42EE0000, -119.0f, 10.0f, 200.0f, 1.0f);
    if (*(void *)0x80085370 < 0) {
        *(void *)0x80086E44 = (f32) *(void *)0x80071310;
    }
    *(void *)0x80086ED8 = (s32) (((s32) *(void *)0x8007BB2E >> 1) & 7);
    temp_v1 = *(void *)0x80084F18;
    temp_a0 = temp_v1->unk24;
    if (temp_a0 != 0) {
        temp_t0 = *(void *)0x80084EE8 * 8;
        *(void *)0x80086EDC = (s32) *(temp_a0 + temp_t0);
        *(void *)0x80086B88 = (?32) (temp_v1->unk24 + temp_t0)->unk4;
    } else {
        *(void *)0x80086EDC = 0x8004CBF0;
        *(void *)0x80086B88 = 1;
    }
    temp_t0_2 = *(void *)0x80086EDC;
    temp_t9 = *(void *)0x80086ED8 * 0x38;
    temp_v0 = temp_t9 + temp_t0_2;
    *(void *)0x80086DC0 = (s32) temp_v0->unk0;
    *(void *)0x80086DC8 = (u16)1;
    *(void *)0x80086DC4 = 0;
    *(void *)0x80086E40 = 0x8007BACC;
    *(void *)0x80086E20 = (f32) temp_v0->unk1C;
    *(void *)0x80086E24 = (f32) temp_v0->unk20;
    *(void *)0x80086E28 = (f32) temp_v0->unk24;
    *(void *)0x80086E2C = (f32) temp_v0->unk28;
    *(void *)0x80086E0C = (f32) temp_v0->unk18;
    *(void *)0x80086E10 = 0.0f;
    *(void *)0x80086E18 = (f32) temp_v0->unk14;
    *(void *)0x80086E1C = (f32) temp_v0->unk10;
    temp_v1_2 = *(void *)0x80086DC0;
    if ((temp_v1_2 != 0) && (temp_v1_2 != 1)) {
        phi_f0 = 0.0f;
        phi_v0 = temp_v0;
        phi_return = 0.0f;
        if (temp_v1_2 == 2) {
block_8:
            (void *)0x80086B90->unk0 = 0.0f;
            *(void *)0x80086B94 = (f32) ((f64) *(void *)0x80086E0C * *(void *)0x80071318);
            sp28 = temp_v0;
            *(void *)0x80086DD0 = (f32) (*(void *)0x8007BAD0 + temp_v0->unk14);
            func_800232F4(*(void *)0x80086E44 + *(void *)0x8007BA48, temp_a0, (void *)0x80086B90, (void *)0x80086EDC);
            *(void *)0x80086DCC = (f32) (*(void *)0x8007BACC - (void *)0x80086B90->unk0);
            *(void *)0x80086DD4 = (f32) (*(void *)0x8007BAD4 - (void *)0x80086B90->unk4);
            phi_return = (bitwise f32) temp_v0;
            (void *)0x80080000->unk6E14 = 0.0f;
            phi_f0 = 0.0f;
        }
    } else {
        goto block_8;
    }
    *(void *)0x80086DE4 = phi_f0;
    *(void *)0x80086DEC = phi_f0;
    *(void *)0x80086DE8 = phi_f0;
    *(void *)0x80086DD8 = (f32) *(void *)0x8007BACC;
    *(void *)0x80086DDC = (f32) (*(void *)0x8007BAD0 + *(void *)0x80086E1C);
    *(void *)0x80086DE0 = (f32) *(void *)0x8007BAD4;
    *(void *)0x80086DF0 = phi_f0;
    *(void *)0x80086DF4 = phi_f0;
    *(void *)0x80086DF8 = phi_f0;
    *(void *)0x80086E08 = phi_f0;
    *(void *)0x80086E04 = phi_f0;
    *(void *)0x80086E00 = phi_f0;
    *(void *)0x80086DFC = phi_f0;
    *(void *)0x80086E30 = (f32) *(void *)0x80071320;
    temp_f2 = *(void *)0x80071324;
    *(void *)0x80086E34 = temp_f2;
    *(void *)0x80086E3C = temp_f2;
    *(void *)0x80086E38 = (f32) *(void *)0x80071328;
    *(void *)0x80086C2C = 0;
    *(void *)0x80086BBC = (u16)0;
    *(void *)0x80086EC8 = (f32) phi_v0->unk2C;
    *(void *)0x80086ECC = (f32) phi_v0->unk30;
    *(void *)0x80086ED0 = (f32) phi_v0->unk34;
    if (*(void *)0x8007B2E8 == 4) {
        *(void *)0x80086DC0 = 3;
        *(void *)0x80086DCC = (f32) *(void *)0x8007132C;
        *(void *)0x80086DD0 = 36.0f;
        *(void *)0x80086DD4 = (f32) *(void *)0x80071330;
        *(void *)0x80086DD8 = (f32) *(void *)0x80071334;
        *(void *)0x80086DDC = 42.0f;
        *(void *)0x80086DE0 = (f32) *(void *)0x80071338;
        *(void *)0x80086EC8 = 40.0f;
    }
    *(void *)0x80086EFC = phi_f0;
    return phi_return;
}

void func_80012BE0(s32 arg0) {
    f32 sp60;
    f32 sp38;
    f32 temp_f12;
    f64 temp_f0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    s32 phi_a0;

    if (((*(void *)0x80084F1C)->unk14 & 2) != 0) {
        if ((*(void *)0x8008C592 & 1) == 0) {
            temp_a0 = ((s32) *(void *)0x8007BB2E >> 1) & 7;
            if (temp_a0 != *(void *)0x80086ED8) {
                func_80013F5C(temp_a0);
            }
        }
    }
    ((*(void *)0x80086DC0 * 4) + 0x80050000)->unk-3368(0x80086DC0);
    if ((*(void *)0x8007B2E4 & 0x82) == 0) {
        if (*(void *)0x8008C638 == 0) {
            if ((*(void *)0x8008C592 & 1) == 0) {
                if (((*(void *)0x80084F1C)->unk14 & 2) == 0) {
                    if ((*(void *)0x80092876 & 0x20) != 0) {
                        temp_v0 = *(void *)0x80086B88;
                        if (temp_v0 >= 2) {
                            temp_a0_2 = *(void *)0x80086ED8 + 1;
                            *(void *)0x80086ED8 = temp_a0_2;
                            phi_a0 = temp_a0_2;
                            if (temp_a0_2 >= temp_v0) {
                                *(void *)0x80086ED8 = 0;
                                phi_a0 = 0;
                            }
                            func_80013F5C(phi_a0);
                        }
                    }
                }
            }
        }
    }
    func_80035A00(0x80086E48, 0x80086F00, *(void *)0x80086EC8, 0x3FAAAAAB, *(void *)0x80086ECC, *(void *)0x80086ED0, 1.0f);
    func_80035C90(0x80086E88, arg0 + 0x80C0, *(void *)0x80086DCC, *(void *)0x80086DD0, *(void *)0x80086DD4, *(void *)0x80086DD8, *(void *)0x80086DDC, *(void *)0x80086DE0, 0.0f, 1.0f, 0.0f);
    func_80035200(0x80086E48, arg0);
    func_80035200(0x80086E88, arg0 + 0x80);
    if (*(void *)0x80086C2C != 0) {
        func_80036198((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, *(void *)0x80086C30, *(void *)0x80086C34, 0);
        temp_f0 = *(void *)0x80071340;
        *(void *)0x80086C2C = (s32) (*(void *)0x80086C2C - 1);
        *(void *)0x80086C30 = (f32) ((f64) (bitwise f32) *(void *)0x80086C30 * temp_f0);
        *(void *)0x80086C34 = (f32) ((f64) (bitwise f32) *(void *)0x80086C34 * temp_f0);
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk0 = 0x1030040;
        temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0x2000000;
        temp_v0_3->unk0 = 0x1010040;
    } else {
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x2000000;
        temp_v0_4->unk0 = 0x1030040;
    }
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk0 = 0x1010040;
    temp_v0_5->unk4 = 0x2000080;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk0 = 0x3840010;
    temp_v0_6->unk4 = 0x20080C0;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk0 = 0x3820010;
    temp_v0_7->unk4 = 0x20080D0;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = 0xBC00000E;
    temp_v0_8->unk4 = (?32) *(void *)0x80086F00;
    temp_f12 = (f32) (((f64) (bitwise f32) *(void *)0x80086EC8 * *(void *)0x80071348) / 2.0);
    sp60 = temp_f12;
    sp38 = func_80035680(temp_f12);
    *(void *)0x80086ED4 = (f32) (sp38 / func_800361F0(temp_f12));
}

void func_80013008(void *arg0) {
    u8 sp47;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp2C;
    f32 sp24;
    void *sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_9;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f12_8;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f6;
    f32 temp_f8;
    f64 temp_f0_3;
    f64 temp_f0_4;
    f64 temp_f0_7;
    f64 temp_f0_8;
    f64 temp_f12_4;
    f64 temp_f12_5;
    f64 temp_f14_3;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    f64 phi_f0;
    f32 phi_f2;
    f64 phi_f0_2;
    f32 phi_f6;
    f64 phi_f12;
    f32 phi_f14;
    f32 phi_f2_2;
    f32 phi_f2_3;
    f32 phi_f16;
    f64 phi_f0_3;
    void *phi_a0;
    f32 phi_f2_4;

    sp20 = arg0->unk80;
    func_80013D30();
    temp_a0 = arg0;
    if ((((*(void *)0x8007B2E4 & 0x82) == 0) && ((*(void *)0x8008C592 & 0x200) == 0)) && (temp_v0 = temp_a0->unk8, ((temp_v0 & 0x40) == 0))) {
        if (((*(void *)0x80092874 & 0x4000) != 0) || (temp_a0->unk0 == 2)) {
            temp_a0->unk8 = (u16) (temp_v0 | 0x24);
        } else {
            temp_a0->unk8 = (u16) (temp_v0 & 0xFFDB);
        }
    } else {
        temp_a0->unk8 = (u16) (temp_a0->unk8 & 0xFFDB);
    }
    temp_f6 = temp_a0->unkC;
    temp_f10 = temp_a0->unk14;
    arg0 = temp_a0;
    temp_f0 = sp20->unk0 - temp_f6;
    temp_f2 = sp20->unk8 - temp_f10;
    sp40 = temp_f0;
    sp38 = temp_f2;
    temp_f0_2 = func_80034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2), temp_a0);
    temp_a0_2 = arg0;
    if (temp_f0_2 != 0.0f) {
        temp_f14 = temp_a0_2->unk4C;
        if (temp_f14 < temp_f0_2) {
            temp_f2_2 = temp_f14 / temp_f0_2;
            temp_f12 = temp_a0_2->unk70;
            sp2C = (sp40 - (sp40 * temp_f2_2)) * temp_f12;
            sp24 = (sp38 - (sp38 * temp_f2_2)) * temp_f12;
        } else {
            if (temp_f0_2 <= temp_f14) {
                temp_f2_3 = temp_f14 / temp_f0_2;
                temp_f12_2 = temp_a0_2->unk70;
                sp2C = (f32) ((f64) ((sp40 - (sp40 * temp_f2_3)) * temp_f12_2) * 0.5);
                sp24 = (f32) ((f64) ((sp38 - (sp38 * temp_f2_3)) * temp_f12_2) * 0.5);
            }
        }
    } else {
        sp24 = 0.0f;
        sp2C = 0.0f;
    }
    temp_f14_2 = temp_a0_2->unk74;
    temp_a0_2->unk40 = (f32) (temp_a0_2->unk40 + sp2C);
    temp_f2_4 = temp_a0_2->unk40;
    temp_a0_2->unk48 = (f32) (temp_a0_2->unk48 + sp24);
    temp_f12_3 = temp_a0_2->unk48;
    temp_a0_2->unkC = (f32) (temp_a0_2->unkC + temp_f2_4);
    temp_a0_2->unk14 = (f32) (temp_a0_2->unk14 + temp_f12_3);
    temp_a0_2->unk40 = (f32) (temp_f2_4 * temp_f14_2);
    temp_a0_2->unk48 = (f32) (temp_f12_3 * temp_f14_2);
    sp47 = (u8)0U;
    if ((temp_f0_2 < 25.0f) && ((*(void *)0x8007B2E4 & 0x80) == 0)) {
        temp_f16 = sp20->unk10;
        temp_f2_5 = temp_f16 - temp_a0_2->unk28;
        temp_f0_3 = (f64) temp_f2_5;
        if (*(void *)0x80071350 < temp_f0_3) {
            phi_f2_4 = (f32) (temp_f0_3 - *(void *)0x80071358);
block_20:
            phi_f0 = (f64) phi_f2_4;
            phi_f2 = phi_f2_4;
        } else {
            phi_f0 = temp_f0_3;
            phi_f2 = temp_f2_5;
            if (temp_f0_3 < *(void *)0x80071360) {
                phi_f2_4 = (f32) (temp_f0_3 + *(void *)0x80071368);
                goto block_20;
            }
        }
        temp_f12_4 = *(void *)0x80071370;
        phi_f14 = temp_f14_2;
        if (phi_f0 < temp_f12_4) {
            temp_f14_3 = *(void *)0x80071378;
            phi_f14 = (f32) temp_f14_3;
            if (temp_f14_3 < phi_f0) {
                if (phi_f2 < 0.0f) {
                    phi_f0_2 = temp_f12_4;
                } else {
                    phi_f0_2 = temp_f14_3;
                }
                temp_a0_2->unk54 = (f32) (phi_f0_2 + (f64) temp_f16);
                phi_f14 = (f32) temp_f14_3;
            }
        }
        temp_a0_2->unk8 = (u16) (temp_a0_2->unk8 | 4);
        sp47 = (u8)1U;
        phi_f12 = temp_f12_4;
    } else {
        phi_f12 = (f64) temp_f12_3;
        phi_f14 = temp_f14_2;
        if ((temp_a0_2->unk8 & 0x20) != 0) {
            temp_f12_5 = *(void *)0x80071380;
            temp_a0_2->unk54 = (f32) ((f64) sp20->unk10 + temp_f12_5);
            temp_f0_4 = (f64) temp_a0_2->unk54;
            if (temp_f12_5 < temp_f0_4) {
                phi_f6 = (f32) (temp_f0_4 - *(void *)0x80071388);
block_33:
                temp_a0_2->unk54 = phi_f6;
                phi_f12 = temp_f12_5;
                phi_f14 = temp_f14_2;
            } else {
                phi_f12 = temp_f12_5;
                phi_f14 = temp_f14_2;
                if (temp_f0_4 < *(void *)0x80071390) {
                    phi_f6 = (f32) (temp_f0_4 + *(void *)0x80071398);
                    goto block_33;
                }
            }
        }
    }
    arg0 = temp_a0_2;
    func_80013DE0(phi_f12, phi_f14, temp_a0_2, sp20);
    (void *)0x80086BA0->unk0 = 4.0f;
    func_8000EE60(arg0->unkC, arg0->unk10, arg0, arg0->unk14, 0x602, (void *)0x80086BA0);
    temp_a0_3 = arg0;
    temp_a0_3->unkC = (f32) (void *)0x80086BA0->unk0;
    temp_a0_3->unk14 = (f32) (void *)0x80086BA0->unk8;
    temp_v1 = (void *)0x80086BA0->unk18;
    if ((temp_v1 & 0x8000) != 0) {
        phi_f2_2 = sp20->unk4;
    } else {
        sp3C = (void *)0x80086BA0->unk4;
        phi_f2_2 = sp3C;
    }
    *(void *)0x80086BBC = temp_v1;
    temp_f0_5 = sp20->unk4 + temp_a0_3->unk58;
    phi_f2_3 = phi_f2_2;
    if (phi_f2_2 < temp_f0_5) {
        phi_f2_3 = temp_f0_5;
    }
    arg0 = temp_a0_3;
    temp_f0_6 = func_80014720(temp_a0_3, phi_f2_3);
    temp_a0_4 = arg0;
    phi_f16 = temp_f0_6;
    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_f2_6 = *(void *)0x8007BAD0;
        phi_f16 = temp_f0_6;
        if (temp_f0_6 < temp_f2_6) {
            phi_f16 = temp_f2_6;
        }
    }
    temp_f14_4 = temp_a0_4->unk10;
    temp_f12_6 = phi_f16 - temp_f14_4;
    if (temp_f12_6 < 0.0f) {
        phi_f0_3 = *(void *)0x800713A0;
    } else {
        phi_f0_3 = *(void *)0x800713A8;
    }
    temp_f12_7 = (f32) ((f64) temp_f12_6 * ((f64) temp_a0_4->unk70 * phi_f0_3));
    temp_a0_4->unk44 = (f32) (temp_a0_4->unk44 + temp_f12_7);
    temp_f2_7 = temp_a0_4->unk44;
    temp_a0_4->unk10 = (f32) (temp_f14_4 + temp_f2_7);
    temp_a0_4->unk44 = (f32) (temp_f2_7 * temp_a0_4->unk74);
    arg0 = temp_a0_4;
    func_80013D3C(temp_f12_7, temp_f14_4, temp_a0_4, sp20);
    temp_a0_5 = arg0;
    temp_f2_8 = temp_a0_5->unkC;
    temp_f16_2 = temp_f2_8 - temp_a0_5->unk18;
    temp_f0_7 = (f64) temp_f16_2;
    sp3C = temp_a0_5->unk10 - temp_a0_5->unk1C;
    temp_f12_8 = temp_a0_5->unk14;
    temp_f18 = temp_f12_8 - temp_a0_5->unk20;
    if (-0.5 < temp_f0_7) {
        if (temp_f0_7 < 0.5) {
            temp_f0_8 = (f64) temp_f18;
            if (-0.5 < temp_f0_8) {
                if (temp_f0_8 < 0.5) {
                    temp_a0_5->unkC = (f32) ((f64) temp_f2_8 + 0.5);
                    temp_a0_5->unk14 = (f32) ((f64) temp_f12_8 + 0.5);
                }
            }
        }
    }
    temp_f8 = temp_f16_2 * temp_f16_2;
    arg0 = temp_a0_5;
    sp40 = temp_f16_2;
    sp38 = temp_f18;
    temp_f0_9 = func_80034F60(temp_f8 + (temp_f18 * temp_f18), 0, temp_a0_5);
    temp_a0_6 = arg0;
    temp_f14_5 = temp_f0_9;
    if ((sp3C != 0.0f) || (phi_a0 = temp_a0_6, (temp_f0_9 != 0.0f))) {
        arg0 = temp_a0_6;
        arg0->unk24 = func_80023210(sp3C, temp_f14_5, temp_a0_6);
        phi_a0 = arg0;
    } else {

    }
    if ((sp40 != 0.0f) || (sp38 != 0.0f)) {
        arg0 = phi_a0;
        arg0->unk2C = func_80023210(sp40, sp38, phi_a0);
        if (sp47 == 0) {
            arg0->unk28 = (f32) arg0->unk2C;
        }
    } else {

    }
}

f32 func_80013698(void *arg0) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_ret;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f32 temp_ret_4;
    f32 temp_ret_5;
    f32 temp_ret_6;
    f32 temp_ret_7;
    f32 temp_ret_8;
    f32 temp_ret_9;
    f32 phi_f16;
    f32 phi_f16_2;
    f32 phi_return;

    sp24 = arg0->unk80;
    func_80013D30(arg0);
    func_80013D3C(arg0, sp24);
    temp_f0 = arg0->unkC - arg0->unk18;
    sp30 = arg0->unk10 - arg0->unk1C;
    sp34 = temp_f0;
    temp_f2 = arg0->unk14 - arg0->unk20;
    sp2C = temp_f2;
    temp_ret = func_80034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    temp_f0_2 = temp_ret;
    sp28 = temp_f0_2;
    if ((sp30 != 0.0f) || (phi_return = temp_ret, (temp_f0_2 != 0.0f))) {
        temp_ret_2 = func_80023210(sp30, sp28);
        arg0->unk24 = temp_ret_2;
        phi_return = temp_ret_2;
    } else {

    }
    if ((sp34 != 0.0f) || (phi_f16 = 0.0f, (sp2C != 0.0f))) {
        temp_ret_3 = func_80023210(sp34, sp2C);
        arg0->unk28 = temp_ret_3;
        phi_f16 = 0.0f;
        phi_return = temp_ret_3;
    } else {

    }
    temp_f12 = arg0->unk60;
    if ((phi_f16 != temp_f12) || (phi_f16_2 = phi_f16, (phi_f16 != arg0->unk64))) {
        temp_f0_3 = arg0->unk24;
        if (temp_f0_3 < temp_f12) {
            arg0->unk24 = temp_f12;
            sp34 = sp28 / func_800361F0(temp_f12);
            temp_ret_4 = func_80035680(arg0->unk60);
            arg0->unk1C = (f32) (arg0->unk10 - (temp_ret_4 * sp34));
            phi_f16_2 = 0.0f;
            phi_return = temp_ret_4;
        } else {
            temp_f12_2 = arg0->unk64;
            phi_f16_2 = phi_f16;
            phi_return = temp_f0_3;
            if (temp_f12_2 < temp_f0_3) {
                arg0->unk24 = temp_f12_2;
                sp34 = sp28 / func_800361F0(temp_f12_2);
                temp_ret_5 = func_80035680(arg0->unk64);
                arg0->unk1C = (f32) (arg0->unk10 - (temp_ret_5 * sp34));
                phi_f16_2 = 0.0f;
                phi_return = temp_ret_5;
            }
        }
    } else {

    }
    temp_f2_2 = arg0->unk68;
    temp_f14 = arg0->unk6C;
    if (temp_f2_2 < temp_f14) {
        temp_f0_4 = arg0->unk28;
        if (temp_f0_4 < temp_f2_2) {
            arg0->unk28 = temp_f2_2;
            (void *)0x80086B90->unk0 = phi_f16_2;
            (void *)0x80086B90->unk4 = (f32) -sp28;
            temp_ret_6 = func_800232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
            arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
            arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
            phi_return = temp_ret_6;
        } else {
            phi_return = temp_f0_4;
            if (temp_f14 < temp_f0_4) {
                arg0->unk28 = temp_f14;
                (void *)0x80086B90->unk0 = phi_f16_2;
                (void *)0x80086B90->unk4 = (f32) -sp28;
                temp_ret_7 = func_800232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                phi_return = temp_ret_7;
            }
        }
    } else {
        if (temp_f14 < temp_f2_2) {
            temp_f0_5 = arg0->unk28;
            if ((f64) temp_f0_5 < 0.0) {
                phi_return = temp_f0_5;
                if (temp_f14 < temp_f0_5) {
                    arg0->unk28 = temp_f14;
                    (void *)0x80086B90->unk0 = phi_f16_2;
                    (void *)0x80086B90->unk4 = (f32) -sp28;
                    temp_ret_8 = func_800232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                    arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                    arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                    phi_return = temp_ret_8;
                }
            } else {
                phi_return = temp_f0_5;
                if (temp_f0_5 < temp_f2_2) {
                    arg0->unk28 = temp_f2_2;
                    (void *)0x80086B90->unk0 = phi_f16_2;
                    (void *)0x80086B90->unk4 = (f32) -sp28;
                    temp_ret_9 = func_800232F4(arg0->unk28, temp_f14, (void *)0x80086B90);
                    arg0->unk18 = (f32) (arg0->unkC + (void *)0x80086B90->unk0);
                    arg0->unk20 = (f32) (arg0->unk14 + (void *)0x80086B90->unk4);
                    phi_return = temp_ret_9;
                }
            }
        }
    }
    arg0->unk2C = (f32) arg0->unk28;
    return phi_return;
}

void func_80013A14(s32 arg0) {

}

void func_80013A20(void *arg0, f32 arg1) {
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f0_3;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f2;
    f64 temp_f2_2;
    s32 temp_t9;
    void *temp_t3;
    void *temp_t6;
    void *temp_v0;
    void *phi_t3;
    void *phi_t6;
    f32 phi_f12;
    f64 phi_f18;
    f32 phi_f12_2;
    f32 phi_f12_3;
    f32 phi_f12_4;
    f64 phi_f14;

    if ((arg0->unk8 & 0x40) != 0) {
        temp_t9 = arg0->unk4 - 1;
        arg0->unk4 = temp_t9;
        phi_f12_4 = (bitwise f32) arg0;
        phi_f14 = (f64) arg1;
        if (temp_t9 == 0) {
            arg0->unk8 = (u16) (arg0->unk8 & 0xFFBF);
            phi_t3 = (void *)0x80086B00;
            phi_t6 = arg0;
loop_3:
            temp_t3 = phi_t3 + 0xC;
            temp_t6 = phi_t6 + 0xC;
            temp_t6->unk-C = (s32) *phi_t3;
            temp_t6->unk-8 = (s32) temp_t3->unk-8;
            temp_t6->unk-4 = (s32) temp_t3->unk-4;
            phi_t3 = temp_t3;
            phi_t6 = temp_t6;
            if (temp_t3 != 0x80086B84) {
                goto loop_3;
            }
            temp_t6->unk0 = (s32) temp_t3->unk0;
            phi_f12_4 = (bitwise f32) arg0;
            phi_f14 = (f64) arg1;
        }
    } else {
        temp_v0 = arg0->unk80;
        temp_f16 = *(void *)0x800713B0;
        temp_f12 = (f32) ((f64) func_80023210(*(void *)0x8008C59C - temp_v0->unk0, *(void *)0x8008C5A0 - temp_v0->unk8) + temp_f16);
        temp_f2 = (f64) temp_f12;
        if (temp_f16 < temp_f2) {
            phi_f12 = (f32) (temp_f2 - *(void *)0x800713B8);
            phi_f18 = *(void *)0x800713C0;
        } else {
            temp_f18 = *(void *)0x800713C8;
            phi_f12 = temp_f12;
            phi_f18 = temp_f18;
            if (temp_f2 < temp_f18) {
                phi_f12 = (f32) (temp_f2 + *(void *)0x800713D0);
                phi_f18 = temp_f18;
            }
        }
        temp_f2_2 = *(void *)0x800713D8;
        temp_f14 = *(void *)0x800713E0;
        temp_f12_2 = (f32) (((f64) (s32) ((f64) phi_f12 / temp_f2_2) * temp_f2_2) - *(void *)0x800713E8);
        temp_f0 = (f64) temp_f12_2;
        if (temp_f16 < temp_f0) {
            phi_f12_2 = (f32) (temp_f0 - temp_f14);
        } else {
            phi_f12_2 = temp_f12_2;
            if (temp_f0 < phi_f18) {
                phi_f12_2 = (f32) (temp_f0 + temp_f14);
            }
        }
        temp_f12_3 = phi_f12_2 + *(void *)0x80086EFC;
        temp_f0_2 = (f64) temp_f12_3;
        if (temp_f16 < temp_f0_2) {
            phi_f12_3 = (f32) (temp_f0_2 - temp_f14);
        } else {
            phi_f12_3 = temp_f12_3;
            if (temp_f0_2 < phi_f18) {
                phi_f12_3 = (f32) (temp_f0_2 + temp_f14);
            }
        }
        arg0->unk54 = phi_f12_3;
        phi_f12_4 = phi_f12_3;
        phi_f14 = temp_f14;
        if ((*(void *)0x80092876 & 0x20) != 0) {
            *(void *)0x80086EFC = (f32) ((f64) *(void *)0x80086EFC + *(void *)0x800713F0);
            temp_f0_3 = (f64) *(void *)0x80086EFC;
            if (temp_f16 < temp_f0_3) {
                *(void *)0x80086EFC = (f32) (temp_f0_3 - temp_f14);
                phi_f12_4 = phi_f12_3;
                phi_f14 = temp_f14;
            } else {
                phi_f12_4 = phi_f12_3;
                phi_f14 = temp_f14;
                if (temp_f0_3 < phi_f18) {
                    *(void *)0x80086EFC = (f32) (temp_f0_3 + temp_f14);
                    phi_f12_4 = phi_f12_3;
                    phi_f14 = temp_f14;
                }
            }
        }
    }
    func_80013008(phi_f12_4, phi_f14, arg0);
}

void func_80013C80(void *arg0) {
    s32 temp_a1;
    s32 temp_t4;
    s32 temp_t7;

    temp_a1 = (void *)0x80086EE0->unk0;
    if (temp_a1 != 0) {
        if (temp_a1 != 1) {

        } else {
            temp_t4 = (void *)0x80086EE0->unk4 - 1;
            (void *)0x80086EE0->unk4 = temp_t4;
            if (temp_t4 == 0) {
                arg0->unk0 = (s32) (void *)0x80086EE0->unk8;
                arg0->unk8 = (u16) (void *)0x80086EE0->unkC;
                (void *)0x80086DC0->unk78 = (f32) (void *)0x80086EE0->unk14;
                (void *)0x80086DC0->unk7C = (f32) (void *)0x80086EE0->unk18;
            }
        }
    } else {
        temp_t7 = (void *)0x80086EE0->unk4 - 1;
        (void *)0x80086EE0->unk4 = temp_t7;
        if (temp_t7 == 0) {
            (void *)0x80086EE0->unk0 = (s32) (temp_a1 + 1);
            (void *)0x80086EE0->unk4 = 0x4B;
            arg0->unk8 = (u16) (arg0->unk8 | 0x10);
        }
    }
    func_80013008(temp_a1);
}

void func_80013D30(s32 arg0) {

}

f32 func_80013D3C(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    f32 phi_f0;

    arg0->unk18 = (f32) arg1->unk0;
    arg0->unk20 = (f32) arg1->unk8;
    if (*arg1->unk64 == 1) {
        phi_f0 = arg1->unk68->unk94;
    } else {
        phi_f0 = arg1->unk4;
    }
    temp_f2 = arg0->unk1C;
    temp_f0 = phi_f0 + (arg0->unk5C - temp_f2);
    arg0->unk34 = (f32) (arg0->unk34 + ((temp_f0 * arg0->unk70) * 2.0f));
    temp_f12 = arg0->unk34;
    arg0->unk1C = (f32) (temp_f2 + temp_f12);
    arg0->unk34 = (f32) ((f64) temp_f12 * ((f64) arg0->unk74 * *(void *)0x800713F8));
    return temp_f0;
}

void func_80013DE0(void *arg0, void *arg1) {
    f32 sp1C;
    f32 sp18;
    f32 temp_f12;
    f64 temp_f2;
    void *temp_a2;
    f32 phi_f14;
    void *phi_a2;
    f32 phi_f12;

    temp_a2 = arg1;
    sp1C = arg0->unkC - temp_a2->unk0;
    sp18 = arg0->unk14 - temp_a2->unk8;
    if ((arg0->unk8 & 0x14) != 0) {
        arg1 = temp_a2;
        temp_f12 = func_80023210(sp1C, sp18, temp_a2) - arg0->unk54;
        temp_f2 = (f64) temp_f12;
        if (*(void *)0x80071400 < temp_f2) {
            phi_f12 = (f32) (temp_f2 - *(void *)0x80071408);
        } else {
            phi_f12 = temp_f12;
            if (temp_f2 < *(void *)0x80071410) {
                phi_f12 = (f32) (temp_f2 + *(void *)0x80071418);
            }
        }
        phi_f14 = (arg0->unk78 * phi_f12) + arg0->unk3C;
        phi_a2 = arg1;
    } else {
        phi_f14 = arg0->unk3C;
        phi_a2 = temp_a2;
    }
    arg0->unk3C = (f32) (arg0->unk7C * phi_f14);
    arg1 = phi_a2;
    arg0 = arg0;
    (void *)0x80086B90->unk0 = sp1C;
    (void *)0x80086B90->unk4 = sp18;
    func_800232F4(phi_f14, phi_f14, arg0, (void *)0x80086B90, phi_a2);
    arg0->unkC = (f32) (arg1->unk0 - (void *)0x80086B90->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x80086B90->unk4);
}

void *func_80013F20(s32 arg0) {
    void *temp_v0;

    *(void *)0x80086C2C = 0xF;
    temp_v0 = (arg0 * 8) + 0x8004CCB0;
    *(void *)0x80086C30 = (f32) temp_v0->unk0;
    *(void *)0x80086C34 = (f32) temp_v0->unk4;
    return temp_v0;
}

f32 func_80013F5C(s32 arg0) {
    f32 temp_f0;
    s32 temp_t2;
    s32 temp_v0;
    void *temp_v1;

    *(void *)0x80086ED8 = arg0;
    if ((*(void *)0x80086DC8 & 0x40) != 0) {
        *(void *)0x80086E40 = (s32) *(void *)0x80086B80;
    }
    temp_v0 = arg0 * 0x38;
    *(void *)0x80086DC0 = (s32) *(*(void *)0x80086EDC + temp_v0);
    temp_t2 = *(void *)0x80086DC0;
    if (temp_t2 != 0) {
        if (temp_t2 != 2) {
            *(void *)0x80086DCC = (f32) (*(void *)0x80086EDC + temp_v0)->unk4;
            *(void *)0x80086DD0 = (f32) (*(void *)0x80086EDC + temp_v0)->unk8;
            *(void *)0x80086DD4 = (f32) (*(void *)0x80086EDC + temp_v0)->unkC;
        }
    }
    *(void *)0x80086DC8 = (u16) (*(void *)0x80086DC8 & 0xFFAF);
    *(void *)0x80086E0C = (f32) (*(void *)0x80086EDC + temp_v0)->unk18;
    *(void *)0x80086E18 = (f32) (*(void *)0x80086EDC + temp_v0)->unk14;
    *(void *)0x80086E1C = (f32) (*(void *)0x80086EDC + temp_v0)->unk10;
    *(void *)0x80086E28 = (f32) (*(void *)0x80086EDC + temp_v0)->unk24;
    *(void *)0x80086E2C = (f32) (*(void *)0x80086EDC + temp_v0)->unk28;
    *(void *)0x80086E20 = (f32) (*(void *)0x80086EDC + temp_v0)->unk1C;
    *(void *)0x80086E24 = (f32) (*(void *)0x80086EDC + temp_v0)->unk20;
    temp_v1 = *(void *)0x80086EDC + temp_v0;
    *(void *)0x80086EC8 = (f32) temp_v1->unk2C;
    *(void *)0x80086ECC = (f32) temp_v1->unk30;
    *(void *)0x80086ED0 = (f32) temp_v1->unk34;
    *(void *)0x80086E08 = 0.0f;
    temp_f0 = *(void *)0x80086E08;
    *(void *)0x80086E04 = temp_f0;
    *(void *)0x80086E00 = temp_f0;
    *(void *)0x80086DFC = 0.0f;
    return temp_f0;
}

f32 func_800140EC(s32 arg0, void *arg1) {
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f64 temp_f0;
    f64 temp_f0_2;
    u16 temp_a1;
    void *temp_a2;
    void *temp_t3;
    void *temp_t9;
    void *temp_v1;
    void *phi_t3;
    void *phi_t9;
    f32 phi_f2;
    f32 phi_f14;
    f32 phi_return;

    temp_a2 = arg1;
    phi_return = (bitwise f32) (void *)0x80086DC0;
    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_a1 = (void *)0x80086DC0->unk8;
        if ((temp_a1 & 0x40) == 0) {
            phi_t3 = (void *)0x80086DC0;
            phi_t9 = (void *)0x80086B00;
loop_3:
            temp_t3 = phi_t3 + 0xC;
            temp_t9 = phi_t9 + 0xC;
            temp_t9->unk-C = (s32) *phi_t3;
            temp_t9->unk-8 = (s32) temp_t3->unk-8;
            temp_t9->unk-4 = (s32) temp_t3->unk-4;
            phi_t3 = temp_t3;
            phi_t9 = temp_t9;
            if (temp_t3 != ((void *)0x80086DC0 + 0x84)) {
                goto loop_3;
            }
            temp_t9->unk0 = (s32) temp_t3->unk0;
        }
        (void *)0x80086BC0->unk0 = (f32) temp_a2->unk0;
        (void *)0x80086BC0->unk8 = (f32) temp_a2->unk8;
        if ((temp_a2->unk5E & 4) != 0) {
            (void *)0x80086BC0->unk4 = (f32) *(void *)0x8007BAD0;
        } else {
            if (temp_a2->unk64->unk0 == 1) {
                (void *)0x80086BC0->unk4 = (f32) temp_a2->unk68->unk94;
            } else {
                (void *)0x80086BC0->unk4 = (f32) temp_a2->unk4;
            }
        }
        (void *)0x80086BC0->unk24 = (f32) temp_a2->unk24;
        (void *)0x80086BC0->unk64 = (void *) temp_a2->unk64;
        (void *)0x80086BC0->unk68 = (void *) temp_a2->unk68;
        if ((temp_a2->unk5E & 4) != 0) {
            phi_f2 = (f32) ((f64) (temp_a2->unk64->unk1C * temp_a2->unk24) + 40.0);
            phi_f14 = (bitwise f32) arg1;
        } else {
            temp_v1 = temp_a2->unk64;
            temp_f12 = temp_v1->unk1C;
            temp_f14 = temp_v1->unk18;
            if (temp_f12 < temp_f14) {
                temp_f0 = (f64) (temp_f14 * temp_a2->unk24);
                phi_f2 = (f32) ((temp_f0 + temp_f0) + 40.0);
                phi_f14 = temp_f14;
            } else {
                temp_f0_2 = (f64) (temp_f12 * temp_a2->unk24);
                phi_f2 = (f32) ((temp_f0_2 + temp_f0_2) + 40.0);
                phi_f14 = temp_f14;
            }
        }
        (void *)0x80086DC0->unk0 = 4;
        (void *)0x80086DC0->unk8 = (u16) (temp_a1 | 0x40);
        (void *)0x80086DC0->unk80 = (void *)0x80086BC0;
        if ((temp_a2->unk5E & 4) != 0) {
            (void *)0x80086DC0->unk58 = (f32) 20.0;
        } else {
            (void *)0x80086DC0->unk58 = (f32) 15.0;
        }
        (void *)0x80086DC0->unk48 = 0.0f;
        (void *)0x80086DC0->unk4C = phi_f2;
        (void *)0x80086DC0->unk4 = arg0;
        (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
        (void *)0x80086DC0->unk3C = 0.0f;
        (void *)0x80086B90->unk0 = 0.0f;
        (void *)0x80086B90->unk4 = (f32) ((f64) phi_f2 + 10.0);
        arg1 = temp_a2;
        (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
        func_800232F4((void *)0x80086DC0->unk54, phi_f14, (void *)0x80086BC0, (void *)0x80086B90, temp_a2, arg0);
        (void *)0x80086DC0->unkC = (f32) (arg1->unk0 + (void *)0x80086B90->unk0);
        (void *)0x80086DC0->unk10 = (f32) ((f64) (void *)0x80086BC0->unk4 + ((f64) (void *)0x80086DC0->unk58 * *(void *)0x80071420));
        (void *)0x80086DC0->unk14 = (f32) (arg1->unk8 + (void *)0x80086B90->unk4);
        temp_f0_3 = *(void *)0x8007BAD0;
        phi_return = temp_f0_3;
        if ((void *)0x80086DC0->unk10 < temp_f0_3) {
            (void *)0x80086DC0->unk10 = temp_f0_3;
            phi_return = temp_f0_3;
        }
    }
    return phi_return;
}

void *func_800143C0(void) {
    func_80013F5C();
    (void *)0x80086EE0->unk0 = 0;
    (void *)0x80086EE0->unk4 = 0xF;
    (void *)0x80086EE0->unk8 = (s32) (void *)0x80086DC0->unk0;
    (void *)0x80086EE0->unkC = (u16) (void *)0x80086DC0->unk8;
    (void *)0x80086EE0->unk14 = (f32) *(void *)0x80071428;
    (void *)0x80086DC0->unk0 = 5;
    (void *)0x80086DC0->unk54 = (f32) (void *)0x80086EE0->unk10;
    (void *)0x80086EE0->unk18 = (f32) *(void *)0x8007142C;
    return (void *)0x80086EE0;
}

f32 func_80014434(void *arg0, void *arg1) {
    f64 temp_f6;
    s32 temp_v1;
    void *temp_a2;
    f32 phi_return;

    temp_a2 = arg1;
    (void *)0x80086DC0->unk8 = (u16)0x40;
    (void *)0x80086DC0->unk0 = (s32) arg0->unk0;
    (void *)0x80086DC0->unk4C = (f32) arg0->unk18;
    (void *)0x80086DC0->unk58 = (f32) arg0->unk14;
    (void *)0x80086DC0->unk6C = 0.0f;
    (void *)0x80086DC0->unk64 = 0.0f;
    (void *)0x80086DC0->unk80 = temp_a2;
    (void *)0x80086DC0->unk5C = (f32) arg0->unk10;
    (void *)0x80086DC0->unk68 = (f32) (void *)0x80086DC0->unk6C;
    (void *)0x80086DC0->unk60 = (f32) (void *)0x80086DC0->unk64;
    temp_v1 = arg0->unk0;
    if (temp_v1 != 0) {
        if (temp_v1 != 1) {
            phi_return = (bitwise f32) (void *)0x80086DC0;
        } else {
            (void *)0x80086DC0->unkC = (f32) arg0->unk4;
            (void *)0x80086DC0->unk10 = (f32) arg0->unk8;
            (void *)0x80086DC0->unk14 = (f32) arg0->unkC;
            phi_return = (bitwise f32) (void *)0x80086DC0;
        }
    } else {
        (void *)0x80086B90->unk0 = 0.0f;
        (void *)0x80086B90->unk4 = (f32) ((f64) arg0->unk18 + 20.0);
        temp_f6 = (f64) temp_a2->unk10 - *(void *)0x80071430;
        arg1 = temp_a2;
        func_800232F4((f32) (temp_f6 + *(void *)0x80071438), (void *)0x80086B90, temp_a2);
        (void *)0x80086DC0->unkC = (f32) (arg1->unk0 - (void *)0x80086B90->unk0);
        (void *)0x80086DC0->unk14 = (f32) (arg1->unk8 - (void *)0x80086B90->unk4);
        (void *)0x80086DC0->unk10 = (f32) (arg1->unk4 + arg0->unk14);
        phi_return = 0.0f;
    }
    (void *)0x80086DC0->unk48 = 0.0f;
    (void *)0x80086DC0->unk34 = 0.0f;
    (void *)0x80086DC0->unk3C = 0.0f;
    (void *)0x80086DC0->unk44 = (f32) (void *)0x80086DC0->unk48;
    (void *)0x80086DC0->unk40 = (f32) (void *)0x80086DC0->unk44;
    return phi_return;
}

f32 func_8001459C(void) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 phi_f2;
    f64 phi_f2_2;
    f64 phi_f2_3;
    f64 phi_f16;
    f32 phi_f0;
    f32 phi_return;
    f32 phi_f0_2;

    temp_f12 = *(void *)0x80071440;
    temp_f2 = (f64) ((void *)0x80086DC0->unk28 - *(void *)0x8007BADC);
    if (temp_f2 < temp_f12) {
        phi_f0_2 = (f32) (temp_f2 + *(void *)0x80071448);
        phi_f16 = *(void *)0x80071450;
block_4:
        phi_f2 = (f64) phi_f0_2;
    } else {
        temp_f16 = *(void *)0x80071458;
        phi_f2 = temp_f2;
        phi_f16 = temp_f16;
        if (temp_f16 < temp_f2) {
            phi_f0_2 = (f32) (temp_f2 - *(void *)0x80071460);
            phi_f16 = temp_f16;
            goto block_4;
        }
    }
    temp_f14 = *(void *)0x80071468;
    phi_f2_2 = phi_f2;
    if (*(void *)0x80071470 < phi_f2) {
        phi_f2_2 = (f64) *(void *)0x80071478;
    }
    phi_f2_3 = phi_f2_2;
    if (phi_f2_2 < *(void *)0x80071480) {
        phi_f2_3 = (f64) *(void *)0x80071488;
    }
    temp_f0 = (f32) (phi_f2_3 + phi_f16);
    temp_f2_2 = (f64) temp_f0;
    if (temp_f2_2 < temp_f12) {
        temp_f0_2 = (f32) (temp_f2_2 + temp_f14);
        phi_f0 = temp_f0_2;
        phi_return = temp_f0_2;
    } else {
        phi_f0 = temp_f0;
        phi_return = temp_f0;
        if (phi_f16 < temp_f2_2) {
            temp_f0_3 = (f32) (temp_f2_2 - temp_f14);
            phi_f0 = temp_f0_3;
            phi_return = temp_f0_3;
        }
    }
    (void *)0x80086DC0->unk84 = phi_f0;
    (void *)0x80086DC0->unk54 = (f32) ((f64) *(void *)0x8008537C + phi_f16);
    temp_f2_3 = (f64) (void *)0x80086DC0->unk54;
    if (phi_f16 < temp_f2_3) {
        (void *)0x80086DC0->unk54 = (f32) (temp_f2_3 - temp_f14);
    } else {
        if (temp_f2_3 < temp_f12) {
            (void *)0x80086DC0->unk54 = (f32) (temp_f2_3 + temp_f14);
        }
    }
    (void *)0x80086DC0->unk8 = (u16) ((void *)0x80086DC0->unk8 | 0x10);
    return phi_return;
}

f32 func_80014720(void *arg0, f32 arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_v0;
    void *temp_s0;
    void *phi_s2;
    s32 phi_s1;
    f32 phi_f24;

    temp_v0 = *(void *)0x8007BCE8;
    phi_f24 = arg1;
    if (temp_v0 != 0) {
        phi_f24 = arg1;
        if (temp_v0 != 0) {
            phi_s2 = (void *)0x8007BCF0;
            phi_s1 = temp_v0;
loop_3:
            temp_s0 = *phi_s2;
            if (((f64) (temp_s0->unk4 - arg1) < 20.0) && (temp_f2 = temp_s0->unk0 - arg0->unkC, temp_f0 = temp_s0->unk8 - arg0->unk14, ((f64) func_80034F60((temp_f2 * temp_f2) + (temp_f0 * temp_f0)) < 30.0))) {
                phi_f24 = (f32) ((f64) temp_s0->unk4 + 30.0);
            } else {
                temp_s1 = phi_s1 - 1;
                phi_s2 = phi_s2 + 4;
                phi_s1 = temp_s1;
                phi_f24 = arg1;
                if (temp_s1 != 0) {
                    goto loop_3;
                }
            }
        }
    }
    return phi_f24;
}
