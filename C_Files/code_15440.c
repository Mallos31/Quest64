u32 func_80014840(void) {
    u32 temp_v1;
    u32 phi_v1;

    phi_v1 = 0x80086F18U;
loop_1:
    temp_v1 = phi_v1 + 0x3C;
    temp_v1->unk-38 = (u16)0;
    phi_v1 = temp_v1;
    if (temp_v1 < 0x80087170U) {
        goto loop_1;
    }
    *(void *)0x80087170 = (u16)0;
    *(void *)0x80087188 = (u16)0;
    *(void *)0x800871A0 = (u16)0;
    *(void *)0x800871B8 = (u16)0;
    *(void *)0x80086F10 = 0;
    return 0x80087170U;
}

s32 func_80014890(s32 arg0, void *arg1) {
    u8 sp1E;
    u8 sp1D;
    ? sp1C;
    ? *temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t2;
    s32 temp_t6;
    u16 temp_a1;
    u32 temp_a3;
    u8 temp_a0_3;
    u8 temp_v1;
    void *temp_a0_2;
    void *temp_t0;
    void *phi_t0;
    ? *phi_a0;
    s32 phi_a2;
    void *phi_t0_2;
    void *phi_a0_2;
    void *phi_a0_3;
    ? *phi_a1;
    void *phi_t1;
    u32 phi_a3;
    u32 phi_a3_2;
    s32 phi_a2_2;
    s32 phi_a2_3;
    s32 phi_a2_4;
    s32 phi_a2_5;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = *arg1;
    if (temp_t6 != 0) {
        temp_t2 = temp_t6 & 3;
        phi_a2_5 = 0;
        if (temp_t2 != 0) {
            phi_t0 = arg1;
            phi_a0 = &sp1C;
            phi_a2 = 0;
loop_3:
            temp_a2 = phi_a2 + 1;
            temp_a0 = phi_a0 + 1;
            temp_a0->unk-1 = (u8) *phi_t0;
            phi_t0 = phi_t0 + 1;
            phi_a0 = temp_a0;
            phi_a2 = temp_a2;
            if (temp_t2 != temp_a2) {
                goto loop_3;
            }
            phi_a2_5 = temp_a2;
            if (temp_a2 != temp_t6) {
block_5:
                phi_t0_2 = arg1 + phi_a2_5;
                phi_a0_2 = phi_a2_5 + &sp1C;
loop_6:
                temp_a0_2 = phi_a0_2 + 4;
                temp_t0 = phi_t0_2 + 4;
                temp_a0_2->unk-4 = (u8) *phi_t0_2;
                temp_a0_2->unk-3 = (u8) temp_t0->unk-3;
                temp_a0_2->unk-2 = (u8) temp_t0->unk-2;
                temp_a0_2->unk-1 = (u8) temp_t0->unk-1;
                phi_t0_2 = temp_t0;
                phi_a0_2 = temp_a0_2;
                if (temp_a0_2 != (temp_t6 + &sp1C)) {
                    goto loop_6;
                }
            }
        } else {
            goto block_5;
        }
    }
    if (temp_t6 >= 3) {
        temp_a0_3 = sp1E;
        if ((s32) temp_a0_3 < (s32) sp1D) {
            sp1E = sp1D;
            sp1D = temp_a0_3;
        }
    }
    phi_a0_3 = ((temp_v1 * 4) + 0x800C0000)->unk1B14;
    phi_a2_2 = 0xF;
loop_11:
    temp_a1 = phi_a0_3->unk4;
    if (temp_a1 == temp_t6) {
        phi_a3_2 = 0U;
        if (temp_a1 != 0) {
            phi_a1 = &sp1C;
            phi_t1 = phi_a0_3;
            phi_a3 = 0U;
loop_14:
            phi_a3_2 = phi_a3;
            if (*phi_a1 == phi_t1->unk6) {
                temp_a3 = phi_a3 + 1;
                phi_a1 = phi_a1 + 1;
                phi_t1 = phi_t1 + 1;
                phi_a3 = temp_a3;
                phi_a3_2 = temp_a3;
                if (temp_a3 < (u32) temp_a1) {
                    goto loop_14;
                }
            }
        }
        phi_a2_3 = phi_a2_2;
        if (phi_a3_2 != temp_a1) {
block_17:
            temp_a2_2 = phi_a2_2 - 1;
            phi_a0_3 = phi_a0_3 + 0x44;
            phi_a2_2 = temp_a2_2;
            phi_a2_3 = temp_a2_2;
            if (temp_a2_2 != 0) {
                goto loop_11;
            }
        }
    } else {
        goto block_17;
    }
    phi_a2_4 = phi_a2_3;
    if (phi_a2_3 == 0) {
        phi_a2_4 = 0xF;
    }
    return ((temp_v1 << 8) - phi_a2_4) + 0xF;
}



s32 func_800149D0(u32 arg0, s32 arg1) {
    s32 temp_t7;
    void *temp_a2;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;

    temp_t7 = (arg0 >> 8) & 0xF;
    temp_a2 = ((temp_t7 * 4) + 0x800C0000)->unk1B14 + ((arg0 & 0xFF) * 0x44);
    phi_v1_3 = 0;
    if ((s32) (*(void *)0x8007BAC8 + temp_t7)->unk24 < (s32) temp_a2->unk0) {
        phi_v1_3 = 4;
    }
    phi_v0 = 2;
    if ((*(void *)0x8008C592 & 1) != 0) {
        phi_v0 = 1;
    }
    phi_v1_2 = phi_v1_3;
    if ((phi_v0 & temp_a2->unk2) == 0) {
        phi_v1_2 = phi_v1_3 | 2;
    }
    phi_v1 = phi_v1_2;
    if ((arg1 & 0xFFFF) < (s32) ((temp_a2->unk4 * 2) + 0x800C0000)->unk1B26) {
        phi_v1 = phi_v1_2 | 1;
    }
    return phi_v1;
}

void func_80014A98(void *arg0, u32 arg1, s32 arg2, u16 arg3) {
    void *sp54;
    ? sp3C;
    s16 temp_a1;
    s16 temp_t9;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u16 temp_a0;
    u16 temp_v0_4;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_v0_2;
    void *phi_s0;
    void *phi_s0_2;
    s32 phi_v0_3;

    sp3C.unk0 = (s32) (void *)0x8004CD94->unk0;
    sp3C.unk4 = (s32) (void *)0x8004CD94->unk4;
    sp3C.unk8 = (s32) (void *)0x8004CD94->unk8;
    sp3C.unkC = (s32) (void *)0x8004CD94->unkC;
    sp3C.unk10 = (s32) (void *)0x8004CD94->unk10;
    if (arg2 == 0) {
        func_800111A4(*(void *)0x8007B340, 2, 8, 0x800EBE38);
        *(void *)0x80086F10 = (s32) (*(void *)0x80086F10 | 1);
        *(void *)0x80086F14 = 8;
    }
    temp_t9 = (arg1 >> 8) & 0xF;
    temp_a1 = arg1 & 0xFF;
    temp_v0 = temp_t9 * 4;
    temp_t8 = (temp_v0 + 0x800C0000)->unk1B14;
    temp_t6 = temp_a1 * 0x44;
    temp_a2 = temp_t8 + temp_t6;
    if (arg2 == 0) {
        temp_a0 = temp_a2->unk20;
        if ((s32) temp_a0 >= 2) {
            phi_v0 = 3;
            phi_v1 = (void *)0x80087170;
            phi_v1_2 = (void *)0x80087170;
            if (*(void *)0x80087170 != 0) {
loop_5:
                temp_v0_2 = phi_v0 - 1;
                temp_v1 = phi_v1 + 0x18;
                phi_v1_2 = temp_v1;
                if (temp_v0_2 != 0) {
                    phi_v0 = temp_v0_2;
                    phi_v1 = temp_v1;
                    phi_v1_2 = temp_v1;
                    if (*temp_v1 != 0) {
                        goto loop_5;
                    }
                }
            }
            phi_v1_2->unk0 = (s16) (temp_a0 - 1);
            phi_v1_2->unk4 = (u16)0;
            phi_v1_2->unk8 = arg1;
            phi_v1_2->unk2 = (s16) (temp_a2->unk22 + 1);
            phi_v1_2->unk10 = temp_a2;
            phi_v1_2->unkC = arg3;
            phi_v1_2->unk14 = arg0;
        }
    }
    phi_v0_2 = 9;
    phi_s0 = (void *)0x80086F18;
    phi_s0_2 = (void *)0x80086F18;
    phi_v0_3 = 9;
    if (*(void *)0x80086F1C != 0) {
loop_9:
        temp_v0_3 = phi_v0_2 - 1;
        temp_s0 = phi_s0 + 0x3C;
        phi_s0_2 = temp_s0;
        phi_v0_3 = temp_v0_3;
        if (temp_v0_3 != 0) {
            phi_v0_2 = temp_v0_3;
            phi_s0 = temp_s0;
            phi_s0_2 = temp_s0;
            phi_v0_3 = temp_v0_3;
            if (temp_s0->unk4 != 0) {
                goto loop_9;
            }
        }
    }
    phi_s0_2->unk0 = temp_t9;
    phi_s0_2->unk2 = temp_a1;
    phi_s0_2->unk28 = 0;
    phi_s0_2->unk2C = temp_a2;
    phi_s0_2->unk30 = (s32) ((temp_v0 + 0x800C0000)->unk3520 + (temp_a1 * 0x48));
    phi_s0_2->unk24 = arg0;
    phi_s0_2->unk4 = (u16) temp_a2->unkA;
    phi_s0_2->unk6 = (u16)0x64;
    phi_s0_2->unk8 = (u16) temp_a2->unk24;
    phi_s0_2->unkA = arg3;
    sp54 = temp_a2;
    func_80018318(9 - phi_v0_3, temp_a1, temp_a2, temp_t9);
    temp_v0_4 = temp_a2->unk12;
    if (temp_v0_4 != 0) {
        if ((temp_v0_4 != 1) && (temp_v0_4 != 2)) {

        } else {
            phi_s0_2->unk20 = 0.0f;
            phi_s0_2->unk1C = 0.0f;
            phi_s0_2->unk18 = 0.0f;
        }
    } else {
        (void *)0x800871D0->unk0 = (f32) (*(&sp3C + (temp_a2->unk30 * 4)) * *((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C1B30));
        (void *)0x800871D0->unk4 = (f32) (*(&sp3C + (temp_a2->unk30 * 4)) * ((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C1B30)->unk8);
        sp54 = temp_a2;
        func_800232F4(arg0->unk10, arg2, (void *)0x800871D0, temp_a2, &sp3C);
        phi_s0_2->unk18 = (f32) (void *)0x800871D0->unk0;
        phi_s0_2->unk20 = (f32) (void *)0x800871D0->unk4;
        if ((temp_a2->unk2A & 2) != 0) {
            phi_s0_2->unk1C = 0.0f;
        } else {
            phi_s0_2->unk1C = (f32) ((sp + (temp_a2->unk30 * 4))->unk3C * ((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C0000)->unk1B34);
        }
    }
    sp54 = temp_t8 + temp_t6;
    (((temp_t8 + temp_t6)->unk18 * 4) + 0x80050000)->unk-3308(phi_s0_2, temp_t8 + temp_t6);
    temp_a2_2 = temp_t8 + temp_t6;
    if (phi_s0_2->unk28 != 0) {
        sp54 = temp_a2_2;
        ((temp_a2_2->unk26 * 4) + 0x80050000)->unk-3330(phi_s0_2, arg0, temp_a2_2);
        if (temp_a2_2->unk14 == 2) {
            func_8000EE60(phi_s0_2->unkC, phi_s0_2->unk10, phi_s0_2->unk14, 0xA00, 0x800871E0);
            phi_s0_2->unk10 = (f32) *(void *)0x800871E4;
        }
        func_80017998(phi_s0_2, phi_s0_2->unk24);
        return;
    }
    phi_s0_2->unk4 = (u16)0U;
}

void *func_80014E80(void *arg0, void *arg1) {
    void *temp_v0;

    arg0->unkC = (f32) arg1->unk0;
    arg0->unk14 = (f32) arg1->unk8;
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) (arg1->unk68->unk94 - (temp_v0->unk18 * arg1->unk24));
        return temp_v0;
    }
    arg0->unk10 = (f32) arg1->unk4;
    return temp_v0;
}

void *func_80014ED4(void *arg0, void *arg1) {
    void *temp_v0;

    arg0->unkC = (f32) arg1->unk0;
    arg0->unk14 = (f32) arg1->unk8;
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) arg1->unk68->unk94;
        return temp_v0;
    }
    arg0->unk10 = (f32) ((f64) arg1->unk4 + (((f64) temp_v0->unk1C * 0.5) * (f64) arg1->unk24));
    return temp_v0;
}

void *func_80014F48(void *arg0, void *arg1) {
    f64 temp_f0;
    void *temp_v0;

    arg0->unkC = (f32) arg1->unk0;
    arg0->unk14 = (f32) arg1->unk8;
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}

void *func_80014FDC(void *arg0, void *arg1) {
    f32 temp_f12;
    void *temp_a2;
    void *temp_v0;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = (f32) ((temp_a2->unk64->unk18 * temp_a2->unk24) + arg0->unk2C->unk1C);
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_800232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) arg1->unk68->unk94;
        return temp_v0;
    }
    arg0->unk10 = (f32) ((f64) arg1->unk4 + (((f64) temp_v0->unk1C * 0.5) * (f64) arg1->unk24));
    return temp_v0;
}

void *func_800150C8(void *arg0, void *arg1) {
    f32 temp_f12;
    f64 temp_f0;
    void *temp_a2;
    void *temp_v0;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = (f32) ((temp_a2->unk64->unk18 * temp_a2->unk24) + arg0->unk2C->unk1C);
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_800232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}

void *func_800151D4(void *arg0, void *arg1) {
    f32 temp_f12;
    f64 temp_f0;
    void *temp_a2;
    void *temp_v0;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = (f32) ((-temp_a2->unk64->unk18 * temp_a2->unk24) + arg0->unk2C->unk1C);
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_800232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}

void *func_800152E4(void *arg0, void *arg1) {
    u16 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a1;

    temp_v0_2 = arg0->unk28;
    phi_a1 = arg1;
    if (temp_v0_2 != 0) {
        phi_a1 = temp_v0_2;
    }
    arg0->unkC = (f32) phi_a1->unk0;
    arg0->unk14 = (f32) phi_a1->unk8;
    temp_v0 = phi_a1->unk64;
    temp_v1 = temp_v0->unk0;
    if (temp_v1 == 1) {
        arg0->unk10 = (f32) (phi_a1->unk68->unk94 - (temp_v0->unk18 * phi_a1->unk24));
        return temp_v0;
    }
    if (temp_v1 == 2) {
        arg0->unk10 = (f32) (phi_a1->unk4 + (100.0f * phi_a1->unk24));
        return temp_v0;
    }
    arg0->unk10 = (f32) phi_a1->unk4;
    return temp_v0;
}

void *func_80015370(void *arg0, void *arg1) {
    f64 temp_f0;
    f64 temp_f0_2;
    void *temp_a2;
    void *temp_a3;
    void *temp_v0;

    temp_a3 = arg0;
    temp_a2 = arg1;
    arg1 = temp_a2;
    arg0 = temp_a3;
    (void *)0x800871D0->unk0 = 0.0f;
    *(void *)0x800871D4 = (f32) ((f64) (f32) func_80022FD0(0x14, temp_a2, temp_a3) + 20.0);
    temp_f0_2 = *(void *)0x80071490;
    func_800232F4((f32) ((((f64) (f32) func_80022FD0(0x10) * temp_f0_2) / 8.0) - temp_f0_2), 0x800871D0);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) ((arg1->unk68->unk94 + (temp_v0->unk18 * arg1->unk24)) + arg0->unk2C->unk1C);
        return temp_v0;
    }
    temp_f0 = (f64) temp_v0->unk1C;
    arg0->unk10 = (f32) (((f64) arg1->unk4 + ((temp_f0 + temp_f0) * (f64) arg1->unk24)) + (f64) arg0->unk2C->unk1C);
    return (bitwise void *) temp_f0;
}

void *func_800154EC(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f2;
    f32 temp_f6;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f2;
    void *phi_a2;

    temp_a2 = arg1;
    if ((temp_a2->unk5E & 1) != 0) {
        temp_v0_2 = arg0->unk28;
        temp_f6 = temp_a2->unk0;
        temp_f10 = temp_a2->unk8;
        arg1 = temp_a2;
        temp_f2 = temp_v0_2->unk0 - temp_f6;
        temp_f0 = temp_v0_2->unk8 - temp_f10;
        phi_f2 = sqrtf((temp_f2 * temp_f2) + (temp_f0 * temp_f0), temp_a2);
        phi_a2 = arg1;
    } else {
        phi_f2 = (f32) (((f64) temp_a2->unk64->unk18 * 10.0) * (f64) temp_a2->unk24);
        phi_a2 = temp_a2;
    }
    (void *)0x800871D0->unk4 = phi_f2;
    (void *)0x800871D0->unk0 = (f32) ((f64) phi_f2 * 1.5);
    arg1 = phi_a2;
    arg0 = arg0;
    func_800232F4(phi_a2->unk10, arg0, (void *)0x800871D0, phi_a2);
    arg0->unkC = (f32) (arg1->unk0 + (void *)0x800871D0->unk0);
    arg0->unk14 = (f32) (arg1->unk8 + (void *)0x800871D0->unk4);
    temp_v0 = arg1->unk64;
    if (temp_v0->unk0 == 1) {
        arg0->unk10 = (f32) (arg1->unk68->unk94 - (temp_v0->unk18 * arg1->unk24));
        return temp_v0;
    }
    arg0->unk10 = (f32) arg1->unk4;
    return temp_v0;
}

void func_80015630(void *arg0, void *arg1) {
    f32 temp_f12;
    void *temp_a2;

    temp_a2 = arg1;
    (void *)0x800871D0->unk0 = 0.0f;
    (void *)0x800871D0->unk4 = 380.0f;
    temp_f12 = temp_a2->unk10;
    arg1 = temp_a2;
    func_800232F4(temp_f12, (void *)0x800871D0, temp_a2);
    arg0->unkC = (f32) (arg1->unk0 + ((void *)0x800871D0->unk0 * arg1->unk24));
    arg0->unk10 = (f32) (arg1->unk4 + (380.0f * arg1->unk24));
    arg0->unk14 = (f32) (arg1->unk8 + ((void *)0x800871D0->unk4 * arg1->unk24));
}

void *func_800156D0(void) {
    s32 temp_a0;
    s32 temp_fp;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_t2;
    s32 temp_v0_9;
    u16 temp_t3;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_s0;
    s32 phi_s7;
    void *phi_s2;
    s32 phi_s7_2;
    s32 phi_s0_2;
    s32 phi_s4;
    s32 phi_s3;
    s32 phi_fp;
    void *phi_return;
    s32 phi_s4_2;
    s32 phi_s3_2;
    s32 phi_fp_2;

    phi_s0 = (void *)0x80087170;
    phi_s7 = 4;
loop_1:
    if (phi_s0->unk0 != 0) {
        temp_t8 = phi_s0->unk2 - 1;
        phi_s0->unk2 = temp_t8;
        if ((temp_t8 & 0xFFFF) == 0) {
            temp_t3 = phi_s0->unk4 + 1;
            phi_s0->unk0 = (u16) (phi_s0->unk0 - 1);
            phi_s0->unk4 = temp_t3;
            func_80014A98(phi_s0->unk14, phi_s0->unk8, temp_t3 & 0xFFFF, phi_s0->unkC);
            phi_s0->unk2 = (u16) (phi_s0->unk10->unk22 + 1);
        }
    }
    temp_s7 = phi_s7 - 1;
    phi_s0 = phi_s0 + 0x18;
    phi_s7 = temp_s7;
    if (temp_s7 != 0) {
        goto loop_1;
    }
    phi_s2 = (void *)0x80086F18;
    phi_s7_2 = 0;
    phi_fp_2 = 0;
loop_6:
    temp_v0 = phi_s2->unk4;
    phi_fp = phi_fp_2;
    if (temp_v0 != 0) {
        temp_v1 = phi_s2->unk8;
        temp_fp = phi_fp_2 + 1;
        if (temp_v1 != 0) {
            phi_s2->unk8 = (u16) (temp_v1 - 1);
        } else {
            phi_s2->unk4 = (u16) (temp_v0 - 1);
            ((phi_s2->unk2C->unk12 * 4) + 0x80050000)->unk-32FC(phi_s2);
            temp_v0_2 = ((phi_s2->unk2C->unk16 * 4) + 0x80050000)->unk-32F0(phi_s2, phi_s7_2);
            if (temp_v0_2 != 0) {
                func_8001829C(phi_s7_2, temp_v0_2);
                if (((*temp_v0_2->unk68 & 0x100) == 0) || (phi_s2->unk2C->unk18 == 2)) {
                    if (func_800183C4(phi_s2, temp_v0_2) != 0) {
                        temp_a0 = phi_s2->unk24;
                        if (temp_v0_2 == temp_a0) {
                            func_800208B8(temp_a0);
                        } else {
                            if ((temp_v0_2->unk5E & 1) != 0) {
                                func_8000B110(temp_v0_2);
                            } else {
                                func_80006F6C(temp_a0);
                            }
                        }
                    } else {
                        ((phi_s2->unk2C->unk10 * 4) + 0x80050000)->unk-32E4(phi_s2, temp_v0_2);
                        phi_s0_2 = 0;
                        phi_s4_2 = 0;
                        phi_s3_2 = 0;
loop_19:
                        phi_s4 = phi_s4_2;
                        phi_s3 = phi_s3_2;
                        if ((phi_s2->unk2C + phi_s0_2)->unk32 != 0) {
                            temp_s4 = phi_s4_2 + 1;
                            phi_s4 = temp_s4;
                            phi_s3 = phi_s3_2;
                            if (func_80018484(phi_s2, phi_s2->unk24, phi_s0_2) != 0) {
                                func_80018524(phi_s2, temp_v0_2, phi_s0_2);
                                *((phi_s0_2 * 4) + 0x8004CD44)((phi_s2->unk2C + phi_s0_2)->unk32, temp_v0_2);
                                phi_s4 = temp_s4;
                                phi_s3 = phi_s3_2 + 1;
                            }
                        }
                        temp_s0 = phi_s0_2 + 1;
                        phi_s0_2 = temp_s0;
                        phi_s4_2 = phi_s4;
                        phi_s3_2 = phi_s3;
                        if (temp_s0 != 0xC) {
                            goto loop_19;
                        }
                        if (phi_s2->unk2C->unk10 == 5) {
                            if (phi_s4 != 0) {
                                if (phi_s3 == 0) {
                                    func_800208B8(temp_v0_2);
                                }
                            }
                        }
                    }
                } else {

                }
                func_80017D04(phi_s2, temp_v0_2);
                if ((phi_s2->unk2C->unk2 & 4) == 0) {
                    temp_v0_3 = phi_s2->unk34;
                    phi_s2->unk4 = (u16)0U;
                    if (temp_v0_3 != 0) {
                        if ((temp_v0_3->unk8 & 1) != 0) {
                            temp_v0_3->unk0 = (u16)7;
                            temp_v0_4 = phi_s2->unk34;
                            temp_v0_4->unk8 = (u16) (temp_v0_4->unk8 & 0xFFFE);
                        }
                    }
                } else {
                    phi_s2->unkA = (u16) (phi_s2->unkA | 2);
                }
            }
        }
        temp_v0_5 = phi_s2->unk34;
        if (temp_v0_5 != 0) {
            temp_v0_5->unkC = (f32) phi_s2->unkC;
            phi_s2->unk34->unk10 = (f32) phi_s2->unk10;
            phi_s2->unk34->unk14 = (f32) phi_s2->unk14;
            phi_s2->unk34->unk28 = (f32) phi_s2->unk18;
            phi_s2->unk34->unk2C = (f32) phi_s2->unk1C;
            phi_s2->unk34->unk30 = (f32) phi_s2->unk20;
            if (phi_s2->unk4 == 0) {
                temp_v0_6 = phi_s2->unk34;
                if ((temp_v0_6->unk8 & 1) != 0) {
                    temp_v0_6->unk0 = (u16)7;
                    temp_v0_7 = phi_s2->unk34;
                    temp_v0_7->unk8 = (u16) (temp_v0_7->unk8 & 0xFFFE);
                }
            }
        }
        temp_v0_8 = phi_s2->unk30;
        phi_fp = temp_fp;
        if ((s32) temp_v0_8->unk10 >= 0) {
            temp_v1_2 = phi_s2->unk6;
            if ((u32) temp_v1_2 >= (u32) ((s32) temp_v0_8->unk12 >> 8)) {
                func_80017BD4(phi_s2, phi_s2->unk28);
                phi_s2->unk6 = (u16)0U;
                phi_fp = temp_fp;
            } else {
                phi_s2->unk6 = (u16) (temp_v1_2 + 1);
                phi_fp = temp_fp;
            }
        }
    }
    temp_s7_2 = phi_s7_2 + 1;
    phi_s2 = phi_s2 + 0x3C;
    phi_s7_2 = temp_s7_2;
    phi_fp_2 = phi_fp;
    if (temp_s7_2 != 0xA) {
        goto loop_6;
    }
    temp_v0_9 = *(void *)0x80086F10;
    if ((temp_v0_9 & 1) != 0) {
        if (phi_fp == 0) {
            *(void *)0x80086F10 = 2;
            *(void *)0x80086F14 = 0x1E;
            return (void *)0x80086F14;
        }
    }
    phi_return = (void *)0x80080000;
    if ((temp_v0_9 & 2) != 0) {
        temp_t2 = *(void *)0x80086F14 - 1;
        *(void *)0x80086F14 = temp_t2;
        phi_return = (void *)0x80086F14;
        if (temp_t2 == 0) {
            *(void *)0x80086F10 = 0;
            phi_return = func_800111A4(*(void *)0x8007B340, 2, 8, 0x800EBEF8);
        }
    }
    return phi_return;
}

s32 func_80015B50(void) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;

    phi_v1 = 0xA;
    phi_v0 = (void *)0x80086F18;
    phi_v1_2 = 0xA;
    if (*(void *)0x80086F1C == 0) {
loop_1:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x3C;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v1_2 = temp_v1;
            if (temp_v0->unk4 == 0) {
                goto loop_1;
            }
        }
    }
    return phi_v1_2;
}

u16 func_80015B8C(void *arg0) {
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    ? sp50;
    ? sp3C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f10;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_4;
    f32 temp_f4;
    f32 temp_f8;
    f64 temp_f12;
    f64 temp_f2_3;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_2;
    f32 phi_f16;
    f32 phi_f18;
    f32 phi_f16_2;
    f32 phi_f14;
    f32 phi_f14_2;
    f32 phi_f16_3;
    f32 phi_f18_2;
    u16 phi_return;

    sp50.unk0 = (s32) (void *)0x8004CDA8->unk0;
    sp50.unk4 = (s32) (void *)0x8004CDA8->unk4;
    sp50.unk8 = (s32) (void *)0x8004CDA8->unk8;
    sp50.unkC = (s32) (void *)0x8004CDA8->unkC;
    sp50.unk10 = (s32) (void *)0x8004CDA8->unk10;
    sp3C.unk0 = (s32) (void *)0x8004CDBC->unk0;
    sp3C.unk4 = (s32) (void *)0x8004CDBC->unk4;
    sp3C.unk8 = (s32) (void *)0x8004CDBC->unk8;
    sp3C.unkC = (s32) (void *)0x8004CDBC->unkC;
    sp3C.unk10 = (s32) (void *)0x8004CDBC->unk10;
    temp_v1 = arg0->unkA;
    temp_v0_2 = arg0->unk28;
    phi_return = (u16) temp_v0_2;
    if ((temp_v1 & 1) == 0) {
        if (temp_v0_2 != 0) {
            if (((temp_v1 & 2) != 0) || (temp_v0_2->unk50 == -1)) {
                phi_f18 = 0.0f;
                phi_f16_2 = 0.0f;
                phi_f14 = 0.0f;
            } else {
                temp_v1_2 = temp_v0_2->unk64;
                temp_f18 = temp_v0_2->unk0 - arg0->unkC;
                if (temp_v1_2->unk0 == 1) {
                    phi_f16 = temp_v0_2->unk68->unk94 - arg0->unk10;
                } else {
                    phi_f16 = (f32) (((f64) temp_v0_2->unk4 + ((f64) (temp_v1_2->unk1C * temp_v0_2->unk24) * 0.5)) - (f64) arg0->unk10);
                }
                sp88 = temp_f18;
                temp_f14 = temp_v0_2->unk8 - arg0->unk14;
                sp84 = phi_f16;
                sp80 = temp_f14;
                temp_f0 = sqrtf(((temp_f18 * temp_f18) + (phi_f16 * phi_f16)) + (temp_f14 * temp_f14), temp_f14);
                temp_f2 = (sp + (arg0->unk2C->unk28 * 4))->unk50;
                phi_f18 = (temp_f2 * temp_f18) / temp_f0;
                phi_f16_2 = (temp_f2 * phi_f16) / temp_f0;
                phi_f14 = (temp_f2 * temp_f14) / temp_f0;
            }
            temp_f0_2 = arg0->unk18;
            temp_f2_2 = arg0->unk1C;
            temp_f4 = arg0->unk20;
            sp88 = phi_f18;
            sp70 = temp_f4;
            sp84 = phi_f16_2;
            sp80 = phi_f14;
            sp78 = temp_f0_2;
            sp74 = temp_f2_2;
            temp_f0_3 = sqrtf(((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2)) + (temp_f4 * temp_f4), phi_f14);
            temp_f14_2 = phi_f14;
            temp_f16 = phi_f16_2;
            temp_f18_2 = phi_f18;
            phi_f14_2 = temp_f14_2;
            phi_f16_3 = temp_f16;
            phi_f18_2 = temp_f18_2;
            if (temp_f0_3 != 0.0f) {
                temp_f2_3 = (f64) temp_f0_3;
                temp_f8 = (f32) ((f64) sp74 / temp_f2_3);
                sp74 = temp_f8;
                temp_f10 = (f32) ((f64) sp70 / temp_f2_3);
                sp70 = temp_f10;
                phi_f14_2 = temp_f14_2 + temp_f10;
                phi_f16_3 = temp_f16 + temp_f8;
                phi_f18_2 = temp_f18_2 + (f32) ((f64) sp78 / temp_f2_3);
            }
            sp80 = phi_f14_2;
            sp84 = phi_f16_3;
            sp88 = phi_f18_2;
            temp_f0_4 = sqrtf(((phi_f18_2 * phi_f18_2) + (phi_f16_3 * phi_f16_3)) + (phi_f14_2 * phi_f14_2), phi_f14_2);
            temp_f2_4 = (sp + (arg0->unk2C->unk2E * 4))->unk3C;
            temp_f12 = *(void *)0x80071498;
            temp_f16_2 = (temp_f2_4 * phi_f16_3) / temp_f0_4;
            temp_f14_3 = (temp_f2_4 * phi_f14_2) / temp_f0_4;
            arg0->unk18 = (f32) (((f64) arg0->unk18 * temp_f12) + (f64) ((temp_f2_4 * phi_f18_2) / temp_f0_4));
            arg0->unk1C = (f32) (((f64) arg0->unk1C * temp_f12) + (f64) temp_f16_2);
            arg0->unk20 = (f32) (((f64) arg0->unk20 * temp_f12) + (f64) temp_f14_3);
        }
        if ((arg0->unk2C->unk2A & 1) != 0) {
            arg0->unk1C = (f32) ((f64) arg0->unk1C - *(void *)0x800714A0);
        }
        arg0->unkC = (f32) (arg0->unkC + arg0->unk18);
        arg0->unk10 = (f32) (arg0->unk10 + arg0->unk1C);
        arg0->unk14 = (f32) (arg0->unk14 + arg0->unk20);
        if (arg0->unk2C->unk14 != 0) {
            func_8000EE60(arg0->unkC, arg0->unk10, (bitwise s32) arg0->unk14, 0xA00, 0x800871E0);
            temp_v0 = arg0->unk2C->unk14;
            if (temp_v0 != 1) {
                if (temp_v0 != 2) {
                    return temp_v0;
                }
                arg0->unk10 = (f32) (void *)0x800871E0->unk4;
                phi_return = temp_v0;
            } else {
                phi_return = temp_v0;
                if (arg0->unk10 < (void *)0x800871E0->unk4) {
                    temp_v0_3 = arg0->unk34;
                    arg0->unk4 = (u16)8;
                    arg0->unkA = (u16) (arg0->unkA | 1);
                    arg0->unk20 = 0.0f;
                    arg0->unk1C = 0.0f;
                    arg0->unk18 = 0.0f;
                    if (temp_v0_3 != 0) {
                        temp_v0_3->unk0 = (u16)0xF;
                        temp_v0_4 = arg0->unk34;
                        temp_v0_4->unk8 = (u16) (temp_v0_4->unk8 & 0xFFFE);
                    }
                    phi_return = func_80013F20(1);
                    if ((s32) arg0->unk30->unk20 >= 0) {
                        return func_80017FA0(arg0, arg0->unk28);
                    }
                }
            }
        }
    }
    return phi_return;
}

void func_80015FE8(void *arg0) {
    f32 temp_f2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    if ((arg0->unkA & 1) == 0) {
        if ((arg0->unk2C->unk2A & 1) != 0) {
            arg0->unk1C = (f32) ((f64) arg0->unk1C - *(void *)0x800714A8);
        }
        arg0->unk10 = (f32) (arg0->unk10 + arg0->unk1C);
        if (arg0->unk2C->unk14 == 1) {
            func_8000EE60(arg0->unkC, arg0->unk10, arg0->unk14, 0xA00, 0x800871E0);
            temp_f2 = *(void *)0x800871E4;
            if (arg0->unk10 < temp_f2) {
                temp_v0 = arg0->unk34;
                arg0->unk10 = temp_f2;
                arg0->unkA = (u16) (arg0->unkA | 1);
                arg0->unk4 = (u16)8;
                arg0->unk20 = 0.0f;
                arg0->unk1C = 0.0f;
                arg0->unk18 = 0.0f;
                if (temp_v0 != 0) {
                    temp_v0->unk0 = (u16)0xF;
                    temp_v0_2 = arg0->unk34;
                    temp_v0_2->unk8 = (u16) (temp_v0_2->unk8 & 0xFFFE);
                }
                func_80013F20(1);
                func_80017FA0(arg0, arg0->unk28);
            }
        }
        if (arg0->unk2C->unk18 == 0) {
            temp_v0_3 = arg0->unk28;
            if ((temp_v0_3->unk60 & 1) == 0) {
                arg0->unkC = (f32) temp_v0_3->unk0;
                arg0->unk14 = (f32) temp_v0_3->unk8;
            }
        }
    }
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void *func_8001613C(void *arg0, ? arg1) {
    void *sp40;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_s3;
    u16 temp_v0;
    void *temp_a2;
    void *temp_s0;
    void *temp_s2;
    void *temp_v1;
    void *phi_s2;
    f32 phi_f0;
    s32 phi_s3;
    s32 phi_s3_2;
    void *phi_s2_2;
    s32 phi_s3_3;

    temp_a2 = arg0->unk28;
    if (temp_a2 != 0) {
        if ((temp_a2->unk5E & 1) == 0) {
            sp40 = (void *)0x8007BACC;
            if (func_80018278(arg1, temp_a2, temp_a2) != 0) {
block_21:
                sp40 = NULL;
            } else {
                temp_f2 = *(void *)0x8007BACC - arg0->unkC;
                temp_f14 = *(void *)0x8007BAD4 - arg0->unk14;
                temp_f0 = (f32) ((((f64) *(void *)0x8007BAD0 + ((f64) ((*(void *)0x8007BB30)->unk1C * *(void *)0x8007BAF0) * 0.5)) - (f64) arg0->unk10) * 0.5);
                if ((arg0->unk2C->unk1C + ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0)) < sqrtf(((temp_f2 * temp_f2) + (temp_f0 * temp_f0)) + (temp_f14 * temp_f14), temp_f14)) {
                    goto block_21;
                }
            }
        } else {
            temp_s3 = *(void *)0x8007C990;
            phi_s3_2 = temp_s3;
            phi_s2_2 = (void *)0x8007C998;
            if (temp_s3 != 0) {
                phi_s2 = (void *)0x8007C998;
                phi_s3_3 = temp_s3;
loop_8:
                temp_s0 = phi_s2 + 0x24;
                phi_s3 = phi_s3_3;
                if (-1 != phi_s2->unk74) {
                    sp40 = temp_s0;
                    if ((func_80018278(arg1, temp_s0) == 0) && (temp_v1 = temp_s0->unk64, temp_v0 = temp_v1->unk0, temp_f2_2 = temp_s0->unk0 - arg0->unkC, temp_f14_2 = temp_s0->unk8 - arg0->unk14, (temp_v0 != 0))) {
                        if (temp_v0 != 1) {
                            phi_f0 = 0.0f;
                        } else {
                            phi_f0 = (f32) ((f64) (temp_s0->unk68->unk94 - arg0->unk10) * 0.5);
                        }
                        phi_s3_2 = phi_s3_3;
                        phi_s2_2 = phi_s2;
                        if (!(sqrtf(((temp_f2_2 * temp_f2_2) + (phi_f0 * phi_f0)) + (temp_f14_2 * temp_f14_2), temp_f14_2) < (arg0->unk2C->unk1C + (temp_s0->unk64->unk18 * temp_s0->unk24)))) {
block_16:
                            phi_s3 = phi_s3_3 - 1;
block_17:
                            temp_s2 = phi_s2 + 0x128;
                            phi_s2 = temp_s2;
                            phi_s3_2 = phi_s3;
                            phi_s2_2 = temp_s2;
                            phi_s3_3 = phi_s3;
                            if (phi_s3 != 0) {
                                goto loop_8;
                            }
                        }
                    } else {
                        goto block_16;
                    }
                } else {
                    goto block_17;
                }
            }
            if (phi_s3_2 == 0) {
                goto block_21;
            } else {
                *(void *)0x800871DC = phi_s2_2;
            }
        }
    } else {
        goto block_21;
    }
    return sp40;
}

void *func_800163E8(void *arg0, ? arg1) {
    s32 temp_s2;
    s32 temp_s2_2;
    void *temp_s1;
    void *temp_v0;
    void *phi_s0;
    s32 phi_s2;
    void *phi_s3;
    s32 phi_s2_2;
    void *phi_s3_2;
    void *phi_s3_3;

    temp_v0 = arg0->unk28;
    if ((temp_v0->unk5E & 1) == 0) {
        phi_s3 = (void *)0x8007BACC;
        if (func_80018278(arg1, (void *)0x8007BACC) != 0) {
            phi_s3 = NULL;
        }
    } else {
        if ((temp_v0 == 0) || (phi_s3 = temp_v0, (func_80018278(arg1, temp_v0) != 0))) {
            temp_s2 = *(void *)0x8007C990;
            phi_s3 = NULL;
            if (temp_s2 != 0) {
                phi_s0 = (void *)0x8007C998;
                phi_s2_2 = temp_s2;
                phi_s3_3 = NULL;
loop_7:
                temp_s1 = phi_s0 + 0x24;
                phi_s2 = phi_s2_2;
                phi_s3_2 = phi_s3_3;
                if (-1 != phi_s0->unk74) {
                    temp_s2_2 = phi_s2_2 - 1;
                    phi_s2 = temp_s2_2;
                    phi_s3_2 = phi_s3_3;
                    if (func_80018278(arg1, temp_s1) == 0) {
                        *(void *)0x800871DC = phi_s0;
                        phi_s2 = temp_s2_2;
                        phi_s3_2 = temp_s1;
                    }
                }
                phi_s0 = phi_s0 + 0x128;
                phi_s3 = phi_s3_2;
                phi_s2_2 = phi_s2;
                phi_s3_3 = phi_s3_2;
                if (phi_s2 != 0) {
                    goto loop_7;
                }
            }
        } else {

        }
    }
    return phi_s3;
}

s32 func_800164E4(void *arg0) {
    s32 phi_v1;

    phi_v1 = 0;
    if ((arg0->unkA & 1) != 0) {
        phi_v1 = func_8001613C();
    }
    return phi_v1;
}

void *func_80016520(void *arg0, void *arg1) {
    u16 sp2E;
    u32 temp_v0_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v1;
    u16 phi_a3;
    void *phi_return;

    temp_v0_2 = func_800175D4(arg0->unk2C, arg0->unk24);
    temp_a2 = arg0->unk24;
    phi_a3 = temp_v0_2 & 0xFFFF;
    if ((*temp_a2->unk68 & 1) != 0) {
        phi_a3 = (temp_v0_2 >> 1) & 0xFFFF;
    }
    if ((arg1->unk5E & 1) != 0) {
        sp2E = phi_a3;
        temp_v1 = arg0->unk2C;
        phi_return = (void *)0x80080000;
        if (func_8000ACC0(func_8000B140(arg1, temp_a2, phi_a3), sp2E, temp_v1->unk6, temp_v1->unk2, arg0->unk24) != 0) {
            temp_v0 = *(void *)0x8007BAC8;
            temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
            return temp_v0;
        }
    } else {
        phi_return = func_80006BEC(phi_a3 & 0xFFFF, arg0->unk2C->unk2, temp_a2, phi_a3);
    }
    return phi_return;
}

void func_800165E4(void *arg0, void *arg1) {
    s32 sp20;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_t7;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a2_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    s32 phi_a3;

    temp_a2 = arg0;
    if ((arg1->unk5E & 1) != 0) {
        arg0 = temp_a2;
        *(void *)0x800871DC = (void *) ((func_8000B140(arg1, temp_a2) * 0x128) + 0x8007C998);
        temp_lo = arg1->unk64->unk6 * arg0->unk2C->unkC;
        temp_a1 = (temp_lo / 0x64) & 0xFFFF;
        sp20 = temp_a1;
        temp_v1 = *(void *)0x800871DC;
        temp_t7 = (temp_a1 + func_80022FD0(temp_a1 >> 2, temp_a1, arg0, temp_lo)) & 0xFFFF;
        temp_v1->unkA = (u16) (temp_v1->unkA + temp_t7);
        temp_v1_2 = *(void *)0x800871DC;
        temp_a0 = arg1->unk64->unk6;
        phi_a3 = temp_t7;
        if ((s32) temp_a0 < (s32) temp_v1_2->unkA) {
            temp_v1_2->unkA = temp_a0;
            phi_a3 = temp_t7;
        }
    } else {
        temp_v0 = temp_a2->unk2C;
        temp_a3 = ((s32) (*(void *)0x8007BAC8 + temp_v0->unk6)->unk24 >> 1) + ((s32) (arg1->unk64->unk6 * temp_v0->unkC) / 0x64);
        temp_a1_2 = temp_a3 & 0xFFFF;
        sp20 = temp_a1_2;
        temp_v1_3 = arg1->unk64;
        temp_a2_2 = temp_v1_3->unk4;
        temp_t2 = (temp_a1_2 + func_80022FD0(temp_a1_2 >> 2, temp_a1_2, temp_a2, temp_a3)) & 0xFFFF;
        temp_a3_2 = temp_t2;
        phi_a3 = temp_a3_2;
        if (temp_v1_3->unk6 != temp_a2_2) {
            temp_v1_3->unk4 = (u16) (temp_a2_2 + temp_t2);
            temp_v1_4 = arg1->unk64;
            temp_a0_2 = temp_v1_4->unk6;
            if ((s32) temp_a0_2 < (s32) temp_v1_4->unk4) {
                temp_v1_4->unk4 = temp_a0_2;
            }
            temp_v0_2 = *(void *)0x8007BAC8;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_a3 = temp_a3_2;
        }
    }
    func_80018DF4(arg1, 1, phi_a3, phi_a3);
}

void func_8001679C(void *arg0, void *arg1) {
    s32 sp24;
    s32 temp_a3;
    s32 temp_t4;
    s32 temp_t9;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a1;
    void *temp_t2;
    void *temp_t3;
    void *temp_t3_2;
    void *temp_t8;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_2;
    s32 phi_a2;

    if ((arg1->unk5E & 1) != 0) {
        temp_t2 = (func_8000B140(arg1) * 0x128) + 0x8007C998;
        *(void *)0x800871DC = temp_t2;
        temp_a0 = temp_t2->unkC;
        temp_t4 = ((s32) ((temp_a0 * 0xB) + 0x3F) >> 6) & 0xFFFF;
        temp_t2->unkC = (u16) (temp_a0 - temp_t4);
        temp_a1 = (void *)0x8007BAB8->unk78;
        phi_a2 = temp_t4;
        if (temp_a1->unkA != temp_a1->unk8) {
            temp_t8 = *(void *)0x8007BB30;
            temp_t8->unk8 = (u16) (temp_t8->unk8 + temp_t4);
            temp_t3 = *(void *)0x8007BB30;
            temp_v0 = temp_t3->unkA;
            if ((s32) temp_v0 < (s32) temp_t3->unk8) {
                temp_t3->unk8 = temp_v0;
            }
            temp_v0_2 = (void *)0x8007BAB8->unk10;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_a2 = temp_t4;
        }
    } else {
        temp_v0_3 = arg1->unk64;
        temp_v1 = temp_v0_3->unk8;
        temp_a3 = (temp_v1 * 0xB) + 0x3F;
        temp_t9 = (temp_a3 >> 6) & 0xFFFF;
        temp_v0_3->unk8 = (u16) (temp_v1 - temp_t9);
        sp24 = temp_t9;
        temp_t3_2 = (func_8000B140(arg1, temp_a3) * 0x128) + 0x8007C998;
        *(void *)0x800871DC = temp_t3_2;
        temp_t3_2->unkC = (u16) (temp_t3_2->unkC + sp24);
        temp_v1_2 = *(void *)0x800871DC;
        temp_a0_2 = arg0->unk24->unk64->unkA;
        phi_a2 = sp24;
        if ((s32) temp_a0_2 < (s32) temp_v1_2->unkC) {
            temp_v1_2->unkC = temp_a0_2;
            phi_a2 = sp24;
        }
    }
    func_80018DF4(arg1, 1, phi_a2);
}

void *func_80016940(s32 arg0, void *arg1) {
    u16 temp_v1;
    void *temp_v0;

    if ((arg1->unk5E & 1) != 0) {
        arg1->unk50 = (u16)-1;
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
        return (void *)0x8007C990;
    }
    temp_v1 = *(void *)0x8008C592;
    if ((temp_v1 & 0x100) == 0) {
        *(void *)0x8008C592 = (u16) (temp_v1 | 0x10);
        temp_v0 = *(void *)0x8007BAC8;
        temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
        return temp_v0;
    }
    return func_800208B8(arg1, (void *)0x8008C592);
}

void *func_800169C8(s32 arg0, ? arg1) {
    void *temp_v0;
    void *temp_v1;
    void *phi_return;

    phi_return = (void *)0x80080000;
    if (*(void *)0x80084EE0 == 4) {
        temp_v0 = *(void *)0x80084EF8;
        phi_return = temp_v0;
        if (temp_v0 != -1) {
            phi_return = temp_v0;
            if (((*(void *)0x80084F1C)->unk14 & 4) == 0) {
                (void *)0x80085368->unk0 = temp_v0;
                (void *)0x80085368->unk4 = (s32) *(void *)0x80084EFC;
                (void *)0x80085368->unk8 = (s32) *(void *)0x80084F00;
                *(void *)0x8007BA4C = 0x108;
                temp_v1 = (void *)0x8007BAB8->unk10;
                (void *)0x8007BAB8->unk6 = (u16)0;
                temp_v1->unk2A = (u16) (temp_v1->unk2A + 1);
                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                *(void *)0x8007B2EC = 0x1E;
                phi_return = temp_v0;
            }
        }
    }
    return phi_return;
}

void func_80016A84(void *arg0, void *arg1) {
    void *temp_a3;
    void *temp_v1;

    temp_a3 = arg0;
    if (temp_a3->unk2C->unk18 != 2) {
        if ((arg1->unk5E & 1) != 0) {
            arg0 = temp_a3;
            func_8000ACC0(func_8000B140(arg1, temp_a3), 0, 0, 4, arg0->unk24);
            temp_v1 = *(void *)0x8007BAC8;
            temp_v1->unk2A = (u16) (temp_v1->unk2A + 1);
            return;
        }
        func_80006BEC(0, 4, temp_a3->unk24, temp_a3);
    }
}

void *func_80016B18(s32 arg0, ? arg1) {
    s32 temp_v1;
    void *temp_v0;
    void *temp_v1_2;
    void *phi_return;

    phi_return = (void *)0x80080000;
    if ((*(void *)0x80084EE0 & 8) != 0) {
        temp_v0 = *(void *)0x80084F04;
        phi_return = temp_v0;
        if (temp_v0 != -1) {
            phi_return = temp_v0;
            if (((*(void *)0x80084F1C)->unk14 & 8) == 0) {
                temp_v1 = *(void *)0x80084EE4;
                phi_return = temp_v0;
                if (0x1E != temp_v1) {
                    phi_return = temp_v0;
                    if (temp_v1 != 0x22) {
                        (void *)0x80085368->unk0 = temp_v0;
                        (void *)0x80085368->unk4 = (s32) *(void *)0x80084F08;
                        (void *)0x80085368->unk8 = (s32) *(void *)0x80084F0C;
                        *(void *)0x8007BA4C = 0x108;
                        temp_v1_2 = (void *)0x8007BAB8->unk10;
                        (void *)0x8007BAB8->unk6 = (u16)0;
                        temp_v1_2->unk2A = (u16) (temp_v1_2->unk2A + 1);
                        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                        *(void *)0x8007B2EC = 0x1E;
                        phi_return = temp_v0;
                    }
                }
            }
        }
    }
    return phi_return;
}

void *func_80016BEC(void *arg0, void *arg1) {
    void *temp_a0;
    void *temp_a3;
    void *temp_v0;

    temp_a3 = arg1;
    if ((temp_a3->unk5E & 1) != 0) {
        temp_a0 = temp_a3;
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            return func_800208B8(temp_a3, temp_a3);
        }
        arg1 = temp_a3;
        func_800202E4(temp_a0, temp_a3);
        arg1->unk50 = (u16)-1;
        arg1->unk60 = (u16) (arg1->unk60 & 0xFFFE);
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
        temp_v0 = *(void *)0x8007BAC8;
        temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
        return temp_v0;
    }
    return func_80006BEC((temp_a3->unk64->unk4 * 4) & 0xFFFF, 4, arg0->unk24, temp_a3);
}

void *func_80016CB0(s32 arg0, void *arg1) {
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a0;
    void *phi_return;

    temp_a0 = arg1;
    temp_v0 = temp_a0->unk68;
    phi_return = temp_v0;
    if (*temp_v0 != 0) {
        *temp_v0 = (u16)0U;
        phi_a0 = temp_a0;
        if ((temp_a0->unk5E & 1) != 0) {
            arg1 = temp_a0;
            func_8000B140(temp_a0);
            phi_a0 = arg1;
        }
        phi_a0->unk68->unk8A = (u16)0x10;
        phi_a0->unk68->unk88 = (u16) phi_a0->unk64->unkE;
        phi_a0->unk68->unk86 = (u16) phi_a0->unk64->unkC;
        phi_a0->unk68->unk90 = 1.0f;
        phi_return = (void *)0x80080000;
        if ((phi_a0->unk5E & 1) == 0) {
            temp_v0_2 = *(void *)0x8007BAC8;
            temp_v0_2->unk2A = (u16) (temp_v0_2->unk2A + 1);
            phi_return = temp_v0_2;
        }
    }
    return phi_return;
}

void func_80016D60(s32 arg0, s32 arg1) {
    func_80016520(arg0, arg1);
    func_80016CB0(arg0, arg1);
}

void func_80016D98(void *arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f64 temp_f20;
    f64 temp_f22;
    f64 temp_f24;
    f64 temp_f2;
    s32 temp_s2;
    s32 temp_s2_2;
    void *temp_s3;
    void *phi_s1;
    f32 phi_f28;
    f32 phi_f12;
    f32 phi_f12_2;
    f32 phi_f26;
    s32 phi_s2;
    s32 phi_s2_2;

    temp_s3 = arg0->unk24;
    if ((temp_s3->unk5E & 1) != 0) {
        arg0->unk28 = (void *)0x8007BACC;
        return;
    }
    if ((arg0->unk2C->unk2 & 8) != 0) {
        temp_f12 = arg0->unk18;
        if (temp_f12 == 0.0f) {
            if (arg0->unk20 != 0.0f) {
block_5:
                phi_f28 = func_80023210(temp_f12, arg0->unk20);
            } else {
block_6:
                phi_f28 = temp_s3->unk10;
            }
        } else {
            goto block_5;
        }
    } else {
        goto block_6;
    }
    temp_s2 = *(void *)0x8007C990;
    if (temp_s2 != 0) {
        temp_f24 = *(void *)0x800714B8;
        temp_f22 = *(void *)0x800714C0;
        temp_f20 = *(void *)0x800714C8;
        phi_s1 = (void *)0x8007C998;
        phi_f26 = *(void *)0x800714B0;
        phi_s2_2 = temp_s2;
loop_9:
        phi_s2 = phi_s2_2;
        if (phi_s1->unk74 != -1) {
            (void *)0x800871D0->unk0 = (f32) (phi_s1->unk24 - arg0->unk24->unk0);
            (void *)0x800871D0->unk4 = (f32) (phi_s1->unk2C - arg0->unk24->unk8);
            func_800232F4(phi_f28, (void *)0x800871D0);
            temp_f0 = func_80023210((void *)0x800871D0->unk0, (void *)0x800871D0->unk4);
            temp_f2 = (f64) temp_f0;
            temp_s2_2 = phi_s2_2 - 1;
            if (temp_f22 < temp_f2) {
                phi_f12 = (f32) (temp_f2 - temp_f20);
            } else {
                phi_f12 = temp_f0;
                if (temp_f2 < temp_f24) {
                    phi_f12 = (f32) (temp_f2 + temp_f20);
                }
            }
            phi_f12_2 = phi_f12;
            if (phi_f12 < 0.0f) {
                phi_f12_2 = -phi_f12;
            }
            phi_s2 = temp_s2_2;
            if (phi_f12_2 < phi_f26) {
                arg0->unk28 = (void *) (phi_s1 + 0x24);
                phi_s2 = temp_s2_2;
                phi_f26 = phi_f12_2;
            }
        }
        phi_s1 = phi_s1 + 0x128;
        phi_s2_2 = phi_s2;
        if (phi_s2 != 0) {
            goto loop_9;
        }
    }
}



void *func_80016F88(void *arg0) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_return;

    if ((arg0->unk24->unk5E & 1) != 0) {
        arg0->unk28 = 0x8007BACC;
        return (void *)0x80080000;
    }
    phi_v1 = 6;
    phi_v0 = (void *)0x8007C998;
    phi_v1_2 = 6;
    phi_v0_2 = (void *)0x8007C998;
    phi_return = (void *)0x8007C998;
    if (-1 == *(void *)0x8007CA0C) {
loop_3:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x128;
        phi_v1_2 = temp_v1;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v1_2 = temp_v1;
            phi_v0_2 = temp_v0;
            phi_return = temp_v0;
            if (-1 == temp_v0->unk74) {
                goto loop_3;
            }
        }
    }
    if (phi_v1_2 != 0) {
        arg0->unk28 = (s32) (phi_v0_2 + 0x24);
        return phi_return;
    }
    arg0->unk28 = 0;
    return phi_return;
}

void func_80016FFC(void *arg0) {
    arg0->unk28 = (s32) arg0->unk24;
}

void func_8001700C(s32 arg0, void *arg1) {
    void *temp_v0;

    if ((*(void *)0x8008C592 & 0x100) == 0) {
        temp_v0 = arg1->unk68;
        *temp_v0 = (u16) (*temp_v0 | 1);
        arg1->unk24 = (f32) ((f64) arg1->unk64->unk20 * 0.5);
        func_8001FCF8(arg1, 1, 4, -1);
        return;
    }
    func_800208B8(arg1);
}

void func_80017094(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 2);
    func_8001FCF8(arg1, 2, 2, -1);
}

void func_800170DC(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 4);
    if (arg0 != 1) {
        if (arg0 != 2) {

        } else {
            arg1->unk68->unk8A = (u16)0x20;
        }
    } else {
        arg1->unk68->unk8A = (u16)0x18;
    }
    func_8001FCF8(arg1, 4, 3, -1);
}

void func_8001715C(s32 arg0, void *arg1) {
    void *temp_v0;

    if ((*(void *)0x8008C592 & 0x100) == 0) {
        temp_v0 = arg1->unk68;
        *temp_v0 = (u16) (*temp_v0 | 8);
        arg1->unk60 = (u16) (arg1->unk60 | 1);
        func_8001FCF8(arg1, 8, (arg0 - 1) & 0xFFFF, -1);
        return;
    }
    func_800208B8(arg1);
}

void func_800171E4(s32 arg0, void *arg1) {
    void *temp_v0;
    s32 phi_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x10);
    if (arg0 != 1) {
        if (arg0 != 2) {

        } else {
            arg1->unk68->unk90 = 2.0f;
        }
    } else {
        arg1->unk68->unk90 = 0.5f;
    }
    phi_v0 = 9;
    if (1.0 < (f64) arg1->unk68->unk90) {
        phi_v0 = 8;
    }
    func_8001FCF8(arg1, 0x10, phi_v0 & 0xFFFF, -1);
}

void *func_800172A0(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x20);
    if (arg0 == 1) {
        arg1->unk68->unk86 = (s16) (arg1->unk64->unkC * 2);
        return func_8001FCF8(arg1, 0x20, 7, -1);
    }
    if (arg0 == 2) {
        arg1->unk68->unk86 = (s16) (arg1->unk64->unkC * 4);
        return func_8001FCF8(arg1, 0x20, 7, -1);
    }
    if (arg0 != 3) {
        return temp_v0;
    }
    arg1->unk68->unk86 = (s16) ((s32) arg1->unk64->unkC >> 1);
    return func_8001FCF8(arg1, 0x20, 0xC, -1);
}

void func_8001737C(s32 arg0, void *arg1) {
    void *temp_v0;

    if ((*(void *)0x8008C592 & 0x100) == 0) {
        temp_v0 = arg1->unk68;
        *temp_v0 = (u16) (*temp_v0 | 0x40);
        func_8001FCF8(arg1, 0x40, 0xB, -1);
        return;
    }
    func_800208B8(arg1);
}

void func_800173E0(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 0x80);
    func_8001FCF8(arg1, 0x80, 0xA, -1);
}

void func_80017428(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 0x100);
    func_8001FCF8(arg1, 0x100, 4, -1);
}

void func_80017470(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 0x200);
    func_8001FCF8(arg1, 0x200, 3, -1);
}

void func_800174B8(s32 arg0, void *arg1) {
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_v0;
    s32 phi_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x400);
    if (arg0 != 1) {
        if (arg0 != 2) {
            if (arg0 != 3) {
                if (arg0 != 4) {

                } else {
                    arg1->unk68->unk88 = (s16) (arg1->unk64->unkE * 2);
                }
            } else {
                temp_v0_2 = arg1->unk64->unkE;
                arg1->unk68->unk88 = (s16) (temp_v0_2 + ((s32) temp_v0_2 >> 1));
            }
        } else {
            temp_v0_3 = arg1->unk64->unkE;
            arg1->unk68->unk88 = (s16) (temp_v0_3 - ((s32) temp_v0_3 >> 2));
        }
    } else {
        arg1->unk68->unk88 = (s16) ((s32) arg1->unk64->unkE >> 1);
    }
    phi_v0 = 6;
    if ((s32) arg1->unk64->unkE < (s32) arg1->unk68->unk88) {
        phi_v0 = 5;
    }
    func_8001FCF8(arg1, 0x400, phi_v0 & 0xFFFF, -1);
}

void *func_800175B8(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 0x800);
    return temp_v0;
}

s32 func_800175D4(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f64 temp_f2;
    f64 temp_f6;
    s32 temp_a1;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u16 temp_a0_2;
    u16 temp_t9;
    u8 temp_a0;
    void *temp_a2;
    void *temp_v0;
    void *phi_a2;
    u16 phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;
    f32 phi_f12;
    f32 phi_f12_2;
    f32 phi_f0;
    f32 phi_f12_3;
    f32 phi_f0_2;
    f64 phi_f6;

    temp_a2 = arg0;
    if ((arg1->unk5E & 1) != 0) {
        arg0 = temp_a2;
        phi_a2 = arg0;
        phi_v1 = ((func_8000B140(arg1, temp_a2) * 0x128) + 0x80080000)->unk-3648->unk2A;
    } else {
        temp_a0 = temp_a2->unk6;
        temp_v0 = (temp_a0 * 4) + 0x8004CDD0;
        phi_a2 = temp_a2;
        phi_v1 = ((temp_a0 + 0x8007BA80)->unk24 + ((s32) (temp_v0->unk0 + 0x8007BA80)->unk24 >> 4) + ((s32) (temp_v0->unk2 + 0x8007BA80)->unk24 >> 3) + ((s32) (temp_v0->unk4 + 0x8007BA80)->unk24 >> 3)) & 0xFFFF;
    }
    temp_t9 = phi_a2->unkC;
    temp_a1 = phi_v1 & 3;
    temp_f6 = (f64) temp_t9;
    phi_f6 = temp_f6;
    if ((s32) temp_t9 < 0) {
        phi_f6 = temp_f6 + 4294967296.0;
    }
    temp_a0_2 = phi_v1;
    temp_f12 = (f32) (phi_f6 * *(void *)0x800714D0);
    temp_f0 = (f32) ((f64) temp_f12 * *(void *)0x800714D8);
    phi_f12 = temp_f12;
    if (phi_v1 != 0) {
        phi_v0_2 = 0;
        phi_f12_2 = temp_f12;
        phi_f0 = temp_f0;
        if (temp_a1 != 0) {
            phi_v0 = 0;
            phi_f12_3 = temp_f12;
            phi_f0_2 = temp_f0;
loop_8:
            temp_f12_2 = phi_f12_3 + phi_f0_2;
            temp_v0_2 = phi_v0 + 1;
            temp_f0_2 = (f32) ((f64) phi_f0_2 * *(void *)0x800714E0);
            phi_v0 = temp_v0_2;
            phi_f12_3 = temp_f12_2;
            phi_f0_2 = temp_f0_2;
            if (temp_a1 != temp_v0_2) {
                goto loop_8;
            }
            phi_f12 = temp_f12_2;
            phi_v0_2 = temp_v0_2;
            phi_f12_2 = temp_f12_2;
            phi_f0 = temp_f0_2;
            if (temp_v0_2 != temp_a0_2) {
block_10:
                temp_f2 = *(void *)0x800714E8;
loop_11:
                temp_v0_3 = phi_v0_2 + 4;
                temp_f0_3 = (f32) ((f64) phi_f0 * temp_f2);
                temp_f0_4 = (f32) ((f64) temp_f0_3 * temp_f2);
                temp_f0_5 = (f32) ((f64) temp_f0_4 * temp_f2);
                temp_f12_3 = phi_f12_2 + phi_f0 + temp_f0_3 + temp_f0_4 + temp_f0_5;
                phi_v0_2 = temp_v0_3;
                phi_f12 = temp_f12_3;
                phi_f12_2 = temp_f12_3;
                phi_f0 = (f32) ((f64) temp_f0_5 * temp_f2);
                if (temp_v0_3 != temp_a0_2) {
                    goto loop_11;
                }
            }
        } else {
            goto block_10;
        }
    }
    return (u32) phi_f12 & 0xFFFF;
}



void func_800177F8(u16 arg0, u16 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, void *arg6, void *arg7, void *arg8) {
    u16 temp_v0;
    u16 temp_v0_2;
    f32 phi_f2;
    f32 phi_f0;

    temp_v0 = arg6->unk0;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 3) {
                phi_f2 = arg7->unk0;
            } else {
                phi_f2 = arg7->unk8 * arg7->unk0;
            }
        } else {
            phi_f2 = (arg8->unk64->unk1C * arg8->unk24) * arg7->unk0;
        }
    } else {
        phi_f2 = (arg8->unk64->unk18 * arg8->unk24) * arg7->unk0;
    }
    temp_v0_2 = arg6->unk2;
    if (temp_v0_2 != 0) {
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 3) {
                phi_f0 = arg7->unk4;
            } else {
                phi_f0 = arg7->unk8 * arg7->unk4;
            }
        } else {
            phi_f0 = (arg8->unk64->unk1C * arg8->unk24) * arg7->unk4;
        }
    } else {
        phi_f0 = (arg8->unk64->unk18 * arg8->unk24) * arg7->unk4;
    }
    func_8001A268(arg2, arg3, arg6->unk8, arg6->unk4, arg6->unk6, arg0 & 0xFF, (?32) arg1, arg2, arg3, arg4, arg5, phi_f2, phi_f0, phi_f2);
}

f64 func_80017998(void *arg0, void *arg1) {
    void *sp3C;
    s32 sp38;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_v0;
    s32 temp_t6;
    s8 temp_a1;
    u16 temp_a0;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    f32 phi_f2;
    void *phi_t0;
    void *phi_t0_2;
    f64 phi_return;

    temp_t0 = arg0->unk30;
    temp_v0 = temp_t0->unk0;
    if ((s32) temp_v0 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_t0->unk8;
        (void *)0x800871D0->unk4 = (f32) temp_t0->unkC;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        temp_f12 = arg0->unk18;
        temp_t6 = temp_v0 * 0xA;
        if ((0.0f != temp_f12) || (0.0f != arg0->unk20)) {
            sp38 = temp_t6 + 0x800C1B90;
            sp3C = temp_t0;
            phi_f2 = func_80023210(temp_f12, arg0->unk20);
        } else {
            phi_f2 = arg1->unk10;
        }
        sp3C = arg0->unk30;
        temp_ret = func_800177F8(arg0->unk30->unk2, arg0->unk30->unk4, arg0->unkC, arg0->unk10, arg0->unk14, phi_f2, temp_t6 + 0x800C1B90, (void *)0x800871D0, arg1);
        temp_v0_2 = temp_ret;
        arg0->unk34 = temp_v0_2;
        temp_v0_2->unk28 = (f32) arg0->unk18;
        arg0->unk34->unk2C = (f32) arg0->unk1C;
        arg0->unk34->unk30 = (f32) arg0->unk20;
        phi_t0 = arg0->unk30;
        phi_return = (bitwise f64) temp_ret;
    } else {
        arg0->unk34 = NULL;
        phi_t0 = temp_t0;
        phi_return = (bitwise f64) temp_v0;
    }
    temp_v1 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_v1->unk0;
    phi_t0_2 = phi_t0;
    if (temp_a0 != 0) {
        temp_v0_3 = arg1->unk64;
        temp_f2 = arg1->unk24;
        temp_f0 = (f64) temp_v0_3->unk18;
        temp_f12_2 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f14 = arg1->unk4 + (temp_v0_3->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_t0_2 = phi_t0;
                phi_return = temp_f0;
            } else {
                sp3C = phi_t0;
                phi_return = func_80019738(temp_f12_2, temp_f14, temp_v1->unk2, arg1->unk0, temp_f14, arg1->unk8, (f32) ((f64) temp_f12_2 * *(void *)0x800714F8));
block_13:
                phi_t0_2 = sp3C;
            }
        } else {
            sp3C = phi_t0;
            phi_return = func_80019354(temp_f12_2, temp_f14, temp_v1->unk2, 0x1E, arg1->unk0, temp_f14, (bitwise f32) arg1->unk8, (f32) ((f64) temp_f12_2 * *(void *)0x800714F0));
            goto block_13;
        }
    }
    temp_a1 = phi_t0_2->unk40;
    if ((s32) temp_a1 >= 0) {
        phi_return = func_800268D4(phi_t0_2->unk41, temp_a1, 0xFF);
    }
    return phi_return;
}

void func_80017BD4(void *arg0, void *arg1) {
    void *sp44;
    ?32 sp38;
    f64 temp_f16;
    s8 temp_a1;
    u16 temp_t4;
    u16 temp_t9;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f0;
    f64 phi_f16;

    temp_v1 = arg0->unk30;
    (void *)0x800871D0->unk0 = (f32) temp_v1->unk18;
    (void *)0x800871D0->unk4 = (f32) temp_v1->unk1C;
    (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
    temp_t9 = temp_v1->unk14;
    sp38 = (?32) temp_t9;
    if ((temp_t9 & 0x10) != 0) {
        temp_t4 = arg0->unk4;
        temp_f16 = (f64) temp_t4;
        phi_f16 = temp_f16;
        if ((s32) temp_t4 < 0) {
            phi_f16 = temp_f16 + 4294967296.0;
        }
        phi_f0 = (f32) ((phi_f16 * *(void *)0x80071500) / 10.0);
    } else {
        phi_f0 = arg1->unk10;
    }
    sp44 = temp_v1;
    temp_v0 = func_800177F8(temp_v1->unk12, sp3A, arg0->unkC, arg0->unk10, arg0->unk14, phi_f0, (temp_v1->unk10 * 0xA) + 0x800C1B90, (void *)0x800871D0, arg0->unk24);
    temp_v0->unk28 = (f32) arg0->unk18;
    temp_v0->unk2C = (f32) arg0->unk1C;
    temp_v0->unk30 = (f32) arg0->unk20;
    temp_a1 = temp_v1->unk46;
    if ((s32) temp_a1 >= 0) {
        func_800268D4(temp_v1->unk47, temp_a1, 0xFF);
    }
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

f64 func_80017D04(void *arg0, void *arg1) {
    void *sp38;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_v0;
    s8 temp_a1;
    u16 temp_a0;
    u16 temp_a1_2;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *phi_s0;
    f32 phi_f12;
    void *phi_s0_2;
    void *phi_t0;
    f64 phi_return;

    temp_t0 = arg0->unk30;
    temp_v0 = temp_t0->unk30;
    if ((s32) temp_v0 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_t0->unk38;
        (void *)0x800871D0->unk4 = (f32) temp_t0->unk3C;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        temp_a1_2 = temp_t0->unk34;
        phi_s0 = arg1;
        if ((temp_a1_2 & 0x40) != 0) {
            phi_s0 = arg0->unk24;
        }
        temp_v0_2 = phi_s0->unk64;
        if (temp_v0_2->unk0 == 1) {
            if ((temp_a1_2 & 0x100) != 0) {
                phi_f12 = phi_s0->unk68->unk94;
            } else {
block_9:
                phi_f12 = phi_s0->unk4;
            }
        } else {
            if ((temp_a1_2 & 0x100) != 0) {
                phi_f12 = (f32) ((f64) phi_s0->unk4 + (((f64) temp_v0_2->unk1C * 0.5) * (f64) phi_s0->unk24));
            } else {
                goto block_9;
            }
        }
        sp38 = temp_t0;
        temp_ret = func_800177F8(phi_f12, temp_t0->unk32, temp_a1_2, phi_s0->unk0, phi_f12, phi_s0->unk8, phi_s0->unk10, (temp_v0 * 0xA) + 0x800C1B90, (void *)0x800871D0, phi_s0);
        temp_v0_3 = temp_ret;
        arg0->unk38 = temp_v0_3;
        temp_v0_3->unk28 = (f32) arg0->unk18;
        arg0->unk38->unk2C = (f32) arg0->unk1C;
        arg0->unk38->unk30 = (f32) arg0->unk20;
        phi_s0_2 = phi_s0;
        phi_return = (bitwise f64) temp_ret;
    } else {
        arg0->unk38 = NULL;
        phi_s0_2 = arg1;
        phi_return = (bitwise f64) temp_v0;
    }
    temp_v1 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_v1->unk8;
    phi_t0 = arg0->unk30;
    if (temp_a0 != 0) {
        temp_v0_4 = phi_s0_2->unk64;
        temp_f2 = temp_v0_4->unk20;
        temp_f0 = (f64) temp_v0_4->unk18;
        temp_f14 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f12 = phi_s0_2->unk4 + (temp_v0_4->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_t0 = arg0->unk30;
                phi_return = temp_f0;
            } else {
                sp38 = arg0->unk30;
                phi_return = func_80019738(temp_f12, temp_f14, temp_v1->unkA, phi_s0_2->unk0, temp_f12, phi_s0_2->unk8, (f32) ((f64) temp_f14 * *(void *)0x80071510));
block_18:
                phi_t0 = sp38;
            }
        } else {
            sp38 = arg0->unk30;
            phi_return = func_80019354(temp_f12, temp_f14, temp_v1->unkA, 0x1E, phi_s0_2->unk0, temp_f12, (bitwise f32) phi_s0_2->unk8, (f32) ((f64) temp_f14 * *(void *)0x80071508));
            goto block_18;
        }
    }
    temp_a1 = phi_t0->unk42;
    if ((s32) temp_a1 >= 0) {
        return func_800268D4(phi_t0->unk43, temp_a1, 0xFF);
    }
    if (arg0->unk28 != arg0->unk24) {
        phi_return = func_800268D4(0, 0x18, 0xFF);
    }
    return phi_return;
}

f64 func_80017FA0(void *arg0, void *arg1) {
    void *sp38;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f64 temp_f0;
    s16 temp_t1;
    s8 temp_a1;
    u16 temp_a0;
    void *temp_ret;
    void *temp_t0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_v1;
    f64 phi_return;

    temp_v1 = arg0->unk30;
    temp_t1 = temp_v1->unk20;
    phi_return = (bitwise f64) (void *)0x800871D0;
    if ((s32) temp_t1 >= 0) {
        (void *)0x800871D0->unk0 = (f32) temp_v1->unk28;
        (void *)0x800871D0->unk4 = (f32) temp_v1->unk2C;
        (void *)0x800871D0->unk8 = (f32) arg0->unk2C->unk1C;
        sp38 = temp_v1;
        temp_ret = func_800177F8(temp_v1->unk22, temp_v1->unk24, arg0->unkC, arg0->unk10, arg0->unk14, arg1->unk10, (temp_t1 * 0xA) + 0x800C1B90, (void *)0x800871D0, arg0->unk24);
        temp_v0 = temp_ret;
        temp_v0->unk28 = (f32) arg0->unk18;
        temp_v0->unk2C = (f32) arg0->unk1C;
        temp_v0->unk30 = (f32) arg0->unk20;
        phi_return = (bitwise f64) temp_ret;
    }
    temp_t0 = ((arg0->unk0 * 4) + 0x800C0000)->unk38F4 + (arg0->unk2 * 0xC);
    temp_a0 = temp_t0->unk4;
    phi_v1 = arg0->unk30;
    if (temp_a0 != 0) {
        temp_v0_2 = arg1->unk64;
        temp_f2 = arg1->unk24;
        temp_f0 = (f64) temp_v0_2->unk18;
        temp_f12 = (f32) ((temp_f0 + temp_f0) * (f64) temp_f2);
        temp_f14 = arg1->unk4 + (temp_v0_2->unk1C * temp_f2);
        if (temp_a0 != 1) {
            if (temp_a0 != 2) {
                phi_v1 = arg0->unk30;
                phi_return = temp_f0;
            } else {
                sp38 = arg0->unk30;
                phi_return = func_80019738(temp_f12, temp_f14, temp_t0->unk6, arg1->unk0, temp_f14, arg1->unk8, (f32) ((f64) temp_f12 * *(void *)0x80071520));
block_8:
                phi_v1 = sp38;
            }
        } else {
            sp38 = arg0->unk30;
            phi_return = func_80019354(temp_f12, temp_f14, temp_t0->unk6, 0x1E, arg1->unk0, temp_f14, (bitwise f32) arg1->unk8, (f32) ((f64) temp_f12 * *(void *)0x80071518));
            goto block_8;
        }
    }
    temp_a1 = phi_v1->unk44;
    if ((s32) temp_a1 >= 0) {
        phi_return = func_800268D4(phi_v1->unk45, temp_a1, 0xFF);
    }
    return phi_return;
}

void *func_8001817C(void *arg0) {
    s32 temp_a1;
    u8 temp_t9;
    void *temp_a2;
    void *temp_v0;
    s32 phi_v1;
    s32 phi_a1;

    temp_v0 = arg0->unk68;
    phi_v1 = 1;
    phi_a1 = 0;
loop_1:
    temp_a2 = temp_v0 + phi_a1;
    if ((temp_v0->unk0 & phi_v1) != 0) {
        temp_t9 = temp_a2->unk2 - 1;
        temp_a2->unk2 = temp_t9;
        if ((temp_t9 & 0xFF) == 0) {
            temp_v0->unk0 = (u16) (temp_v0->unk0 ^ phi_v1);
            if ((phi_v1 & 1) != 0) {
                arg0->unk24 = (f32) arg0->unk64->unk20;
            } else {
                if ((phi_v1 & 4) != 0) {
                    arg0->unk68->unk8A = (u16)0x10;
                } else {
                    if ((phi_v1 & 0x10) != 0) {
                        arg0->unk68->unk90 = 1.0f;
                    } else {
                        if ((phi_v1 & 0x20) != 0) {
                            arg0->unk68->unk86 = (u16) arg0->unk64->unkC;
                        } else {
                            if ((phi_v1 & 0x400) != 0) {
                                arg0->unk68->unk88 = (u16) arg0->unk64->unkE;
                            } else {
                                if ((phi_v1 & 8) != 0) {
                                    arg0->unk60 = (u16) (arg0->unk60 & -2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    temp_a1 = phi_a1 + 1;
    phi_v1 = phi_v1 * 2;
    phi_a1 = temp_a1;
    if (temp_a1 != 0xC) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_80018278(s32 arg0, void *arg1) {
    return ((arg0 * 2) + 0x80050000)->unk-328C & arg1->unk68->unk8C;
}

void *func_8001829C(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk8C = (u16) (temp_v0->unk8C | ((arg0 * 2) + 0x80050000)->unk-328C);
    return temp_v0;
}

s32 func_800182C4(void) {
    void *temp_v1;

    *(void *)0x8007BBC4 = (u16)0;
    *(void *)0x8007CAB4 = (u16)0;
    *(void *)0x8007CBDC = (u16)0;
    temp_v1 = (2 * 0x128) + 0x8007C998;
    temp_v1->unk244 = (u16)0;
    temp_v1->unk36C = (u16)0;
    temp_v1->unk494 = (u16)0;
    temp_v1->unk11C = (u16)0;
    return 2;
}

u16 func_80018318(s32 arg0) {
    u16 temp_v0;
    void *temp_a0;

    temp_v0 = ~((arg0 * 2) + 0x80050000)->unk-328C;
    (void *)0x8007BAB8->unk10C = (u16) ((void *)0x8007BAB8->unk10C & temp_v0);
    *(void *)0x8007CAB4 = (u16) (*(void *)0x8007CAB4 & temp_v0);
    *(void *)0x8007CBDC = (u16) (*(void *)0x8007CBDC & temp_v0);
    temp_a0 = (2 * 0x128) + 0x8007C998;
    temp_a0->unk494 = (u16) (temp_a0->unk494 & temp_v0);
    temp_a0->unk36C = (u16) (temp_a0->unk36C & temp_v0);
    temp_a0->unk244 = (u16) (temp_a0->unk244 & temp_v0);
    temp_a0->unk11C = (u16) (temp_a0->unk11C & temp_v0);
    return temp_v0;
}

s32 func_800183C4(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_v1;
    void *temp_a2;
    void *temp_a2_2;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v0;

    temp_a2 = arg0;
    if ((temp_a2->unkA & 4) != 0) {
        phi_v1 = 2;
    } else {
        arg0 = temp_a2;
        temp_a2_2 = arg0;
        temp_v1 = func_80022FD0(0x64, temp_a2) < (u32) temp_a2_2->unk2C->unkE;
        phi_v1 = temp_v1;
        if (temp_v1 != 0) {
            temp_a0 = temp_a2_2->unk24;
            phi_v1_2 = temp_v1;
            if (arg1 != temp_a0) {
                if ((arg1->unk5E & 1) != 0) {
                    arg0 = temp_a2_2;
                    phi_v0 = func_80006A74(func_8000B140(arg1, arg1, temp_a2_2), arg0->unk24, arg0);
                } else {
                    phi_v0 = func_8000ABF4(temp_a0, arg1, temp_a2_2);
                }
                phi_v1_2 = phi_v0;
            }
            phi_v1 = phi_v1_2 + 1;
        }
    }
    return ((phi_v1 * 4) + 0x80050000)->unk-321C;
}

s32 func_80018484(void *arg0, void *arg1, s32 arg2) {
    s32 phi_v1;

    if ((arg0->unkA & 4) != 0) {
        phi_v1 = 1;
    } else {
        if (arg0->unk2C->unk18 == 2) {
            phi_v1 = 1;
        } else {
            if ((arg1->unk5E & 1) != 0) {
                phi_v1 = func_80022FD0(0x50) < (u32) (arg2 + 0x80050000)->unk-3210;
            } else {
                phi_v1 = func_80022FD0(0x20) < (u32) (arg2 + 0x80050000)->unk-3210;
            }
        }
    }
    return phi_v1;
}

void func_80018524(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    ? *temp_t0;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;

    phi_t6 = (void *)0x8004CDFC;
    phi_t0 = &sp18;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004CE2C) {
        goto loop_1;
    }
    if (arg1 != arg0->unk24) {
        (arg1->unk68 + arg2)->unk2 = (s8) (func_80022FD0(*(&sp18 + (arg2 * 4))) + 2);
        return;
    }
    (arg1->unk68 + arg2)->unk2 = (s8) (func_80022FD0(*(&sp18 + (arg2 * 4))) + 3);
}
