void *func_80008BB0(void) {
    void *phi_return;

    *(void *)0x8007C990 = 0;
    *(void *)0x8007D08C = 0;
    *(void *)0x8007CA0C = (u16)-1;
    (void *)0x8007CAC0->unk74 = (u16)-1;
    (void *)0x8007CAC0->unk19C = (u16)-1;
    (void *)0x8007CAC0->unk514 = (u16)-1;
    (void *)0x8007CAC0->unk3EC = (u16)-1;
    (void *)0x8007CAC0->unk2C4 = (u16)-1;
    phi_return = (void *)0x8007CAC0 + 0x4A0;
    if ((*(void *)0x80084F10 & 1) != 0) {
        phi_return = func_80008EF4();
    }
    return phi_return;
}

void func_80008C20(void) {
    s32 temp_s1;
    void *temp_a0;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_s1_2;

    temp_s1 = *(void *)0x8007C990;
    if (temp_s1 != 0) {
        if (temp_s1 != 0) {
            phi_s0 = (void *)0x8007C998;
            phi_s1_2 = temp_s1;
loop_3:
            temp_a0 = phi_s0 + 0x24;
            phi_s1 = phi_s1_2;
            if (-1 != phi_s0->unk74) {
                *((phi_s0->unk0 * 4) + 0x8004C290)(temp_a0, phi_s0, *(*(void *)0x8007D0A8 + (temp_a0->unk50 * 4)));
                phi_s1 = phi_s1_2 - 1;
            }
            phi_s0 = phi_s0 + 0x128;
            phi_s1_2 = phi_s1;
            if (phi_s1 != 0) {
                goto loop_3;
            }
        }
    }
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        func_8000B300();
    }
}

void func_80008CF4(s32 arg0) {
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_s3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v1;
    void *phi_s2;
    void *phi_s4;
    s32 phi_s3;
    s32 phi_s3_2;

    *(void *)0x8007D08C = 0;
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk4 = 0x2000;
    temp_v1->unk0 = 0xBA000C02;
    temp_s3 = *(void *)0x8007C990;
    if (temp_s3 != 0) {
        phi_s2 = (void *)0x8007C998;
        phi_s4 = (void *)0x8007D090;
        phi_s3_2 = temp_s3;
loop_2:
        temp_s0 = phi_s2 + 0x24;
        phi_s3 = phi_s3_2;
        if (-1 != phi_s2->unk74) {
            temp_v0 = temp_s0->unk64;
            temp_f0 = temp_s0->unk4;
            temp_s1 = *(*(void *)0x8007D0A8 + (temp_s0->unk50 * 4));
            temp_f20 = temp_f0;
            if (temp_v0->unk0 == 1) {
                temp_f2 = *(void *)0x8007BAD0;
                if (temp_f0 < temp_f2) {
                    temp_s0->unk4 = temp_f2;
                }
                temp_s0->unk4 = (f32) (temp_s0->unk4 + (temp_v0->unk1C * temp_s0->unk24));
                temp_s0->unk68->unk94 = (f32) temp_s0->unk4;
            }
            func_8001DB38(1, temp_s0, (temp_s0->unk52 * 0xC) + temp_s1, arg0);
            func_8001E0AC(temp_s0->unk58, temp_s0, (temp_s0->unk52 * 0xC) + temp_s1);
            temp_s0->unk4 = temp_f20;
            if (temp_s0->unk64->unk0 != 2) {
                if ((temp_s0->unk62 & 0x8000) == 0) {
                    func_80011860(temp_s0->unk0, temp_s0->unk4, temp_s0->unk8, temp_s0->unk2C, temp_s0->unk30, temp_s0->unk34, temp_s0->unk28 * temp_s0->unk24);
                }
            }
            *phi_s4 = temp_s0;
            *(void *)0x8007D08C = (s32) (*(void *)0x8007D08C + 1);
            phi_s3 = phi_s3_2 - 1;
            phi_s4 = phi_s4 + 4;
        }
        phi_s2 = phi_s2 + 0x128;
        phi_s3_2 = phi_s3;
        if (phi_s3 != 0) {
            goto loop_2;
        }
    }
}

void func_80008EF4(void) {
    s32 temp_a0;
    void *temp_t0;

    temp_t0 = ((*(void *)0x80084F1C)->unk12 * 0x14) + 0x80054160;
    *(void *)0x8007D0BC = temp_t0;
    *(void *)0x8007D0A8 = (s32) temp_t0->unk8;
    *(void *)0x8007D0AC = (s32) temp_t0->unk10;
    temp_a0 = temp_t0->unk0;
    func_80024260(temp_a0, 0x8020E6F0, temp_t0->unk4 - temp_a0, (void *)0x8007D0BC);
}

void func_80008F6C(void) {
    s32 temp_s1;
    void *temp_s2;
    void *phi_s0;
    s32 phi_s1;

    phi_s0 = (void *)0x8007C998;
    phi_s1 = 6;
loop_1:
    temp_s2 = phi_s0 + 0x24;
    if ((u16)-1 != phi_s0->unk74) {
        func_800202E4(temp_s2);
        temp_s2->unk50 = (u16)-1;
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x128;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    *(void *)0x8007C990 = 0;
}

void *func_80008FE0(s32 arg0, f32 arg1, s32 arg2, f32 arg3, void *arg4, void *arg5) {
    void *sp28;
    f32 temp_f10;
    u16 temp_t6;
    void *temp_v1;
    void *temp_v1_2;
    f32 phi_f10;

    temp_v1 = (*(void *)0x8007D0BC)->unkC + (arg0 * 0x38);
    arg4->unk50 = (s16) temp_v1->unk2;
    sp28 = temp_v1;
    func_8001D8B0(arg4, 0, 1, 0, 1, 1);
    arg4->unk54 = func_80022FD0(0x10);
    arg4->unk24 = (f32) temp_v1->unk20;
    arg4->unk68 = (s32) (arg5 + 0x90);
    arg4->unk64 = temp_v1;
    arg4->unk28 = (f32) temp_v1->unk18;
    arg5->unk20 = temp_v1;
    arg5->unkA = (u16) temp_v1->unk6;
    arg5->unk0 = (u16)0;
    arg5->unk8 = (u16)0;
    arg5->unkC = (u16) temp_v1->unk6;
    temp_t6 = temp_v1->unkC;
    temp_f10 = (f32) temp_t6;
    phi_f10 = temp_f10;
    if ((s32) temp_t6 < 0) {
        phi_f10 = temp_f10 + 4294967296.0f;
    }
    arg5->unk10 = (f32) (((f64) phi_f10 * *(void *)0x80071150) + 17.0);
    temp_v1_2 = arg4->unk64;
    (void *)0x8007D0E0->unk0 = (f32) (temp_v1_2->unk18 * temp_v1_2->unk20);
    func_8000EE60(arg1, 0, arg5, arg2, 0xA01, (void *)0x8007D0E0);
    if (((void *)0x8007D0E0->unk18 & 0x8000) != 0) {
        if (arg4->unk64->unk0 == 0) {
            func_8000EE60((f32) ((f64) arg1 + 0.5), 0, arg5, (f32) ((f64) (bitwise f32) arg2 + 0.5), 0xA01, (void *)0x8007D0E0);
            if (((void *)0x8007D0E0->unk18 & 0x8000) != 0) {
                (void *)0x8007D0E0->unk4 = (f32) *(void *)0x8007BAD0;
            }
        } else {
            (void *)0x8007D0E0->unk4 = (f32) *(void *)0x8007BAD0;
        }
    }
    arg4->unk0 = (f32) (void *)0x8007D0E0->unk0;
    arg4->unk4 = (f32) (void *)0x8007D0E0->unk4;
    arg4->unk8 = (f32) (void *)0x8007D0E0->unk8;
    arg4->unk10 = arg3;
    arg4->unk2C = (f32) (void *)0x8007D0E0->unkC;
    arg4->unk30 = (f32) (void *)0x8007D0E0->unk10;
    arg4->unk34 = (f32) (void *)0x8007D0E0->unk14;
    arg4->unk5E = (u16)1;
    arg4->unk60 = (u16)0;
    arg4->unk62 = (u16) (void *)0x8007D0E0->unk18;
    arg5->unk90 = (u16)0;
    arg5->unk11C = (u16)0;
    arg5->unk11A = (u16)0x10;
    arg5->unk114 = (u16) arg5->unk20->unk2A;
    arg5->unk116 = (u16) arg4->unk64->unkC;
    arg5->unk120 = 1.0f;
    arg5->unk118 = (u16) arg4->unk64->unkE;
    arg5->unk124 = (f32) arg4->unk4;
    return (void *)0x8007D0E0;
}

u32 func_80009260(void) {
    ? sp18;
    ? *temp_a2;
    ? *temp_a2_2;
    s32 temp_a0;
    u16 temp_a3;
    u16 temp_t0;
    u16 temp_t4;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    void *temp_a1;
    s16 phi_v0;
    void *phi_a1;
    void *phi_a3;
    ? *phi_a2;
    ? *phi_a2_2;
    u32 phi_v0_2;
    s32 phi_v1;
    u32 phi_return;
    s32 phi_v1_2;
    s32 phi_v1_3;

    temp_v1 = *(void *)0x8007C990;
    phi_return = (u32) (u16)0;
    if (temp_v1 != 0) {
        phi_v0 = (u16)0;
        phi_a1 = (void *)0x8007D0B0;
        phi_a3 = (void *)0x8007C998;
        phi_a2 = &sp18;
loop_2:
        *phi_a1 = phi_v0;
        temp_v0 = phi_v0 + 1;
        temp_a2 = phi_a2 + 2;
        temp_a2->unk-2 = (u16) phi_a3->unk20->unkC;
        phi_v0 = (s16) temp_v0;
        phi_a1 = phi_a1 + 2;
        phi_a3 = phi_a3 + 0x128;
        phi_a2 = temp_a2;
        phi_return = temp_v0;
        if (temp_v0 < temp_v1) {
            goto loop_2;
        }
    }
    temp_a0 = temp_v1 - 1;
loop_4:
    phi_v1 = 0;
    if (temp_a0 != 0) {
        phi_a2_2 = &sp18;
        phi_v0_2 = 0U;
        phi_v1_3 = 0;
loop_6:
        temp_a3 = phi_a2_2->unk0;
        temp_t0 = phi_a2_2->unk2;
        temp_a1 = phi_v0_2 + 0x8007D0B0;
        phi_v1_2 = phi_v1_3;
        if ((s32) temp_a3 < (s32) temp_t0) {
            temp_t4 = temp_a1->unk2;
            phi_a2_2->unk0 = temp_t0;
            phi_a2_2->unk2 = temp_a3;
            temp_a1->unk2 = (u16) temp_a1->unk0;
            temp_a1->unk0 = temp_t4;
            phi_v1_2 = phi_v1_3 + 1;
        }
        temp_a2_2 = phi_a2_2 + 2;
        temp_v0_2 = phi_v0_2 + 2;
        phi_a2_2 = temp_a2_2;
        phi_v0_2 = temp_v0_2;
        phi_v1 = phi_v1_2;
        phi_return = temp_v0_2;
        phi_v1_3 = phi_v1_2;
        if ((u32) temp_a2_2 < (u32) ((temp_a0 * 2) + &sp18)) {
            goto loop_6;
        }
    }
    if (phi_v1 != 0) {
        goto loop_4;
    }
    return phi_return;
}

void *func_8000932C(void) {
    void *temp_v0;

    temp_v0 = (((*(void *)0x8008C598 * 2) + 0x80080000)->unk-2F50 * 0x128) + 0x8007C998;
    temp_v0->unk8 = (u16) (temp_v0->unk8 | 1);
    return temp_v0;
}

void func_80009378(s32 arg0, void *arg1, void *arg2) {
    ?32 sp14;
    void *sp10;
    s32 temp_v0;

    func_8000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    if ((arg1->unk8 & 1) != 0) {
        *(void *)0x8007D088 = arg1;
        *(void *)0x8008C630 = (u16)0x3C;
        arg1->unk8 = (u16) (arg1->unk8 & 0xFFFC);
        if ((arg1->unk90 & 8) != 0) {
            func_8001D358(arg0);
            return;
        }
        temp_v0 = func_8000A008(arg1, arg0);
        if (temp_v0 != 0) {
            if ((arg1->unk8 & 0x10) != 0) {
                arg1->unk0 = (u16)1;
                arg1->unk4 = (u16)4;
                if ((*(void *)0x8008C592 & 0x100) == 0) {
                    arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
                    sp14 = 1;
                    sp10 = 0xA;
                    func_8001D8B0(arg0, 1, 0xA, 1);
                    return;
                }
                arg1->unk2 = (s16) arg2->unkE;
                sp14 = 1;
                sp10 = 1;
                func_8001D8B0(arg0, 1, 1, 1);
                return;
            }
            func_8000A284(arg1, arg0, temp_v0);
            return;
        }
        arg1->unk0 = (u16)1;
        arg1->unk4 = (u16)4;
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            arg1->unk2 = (s16) arg2->unkE;
            sp14 = 1;
            sp10 = 1;
            func_8001D8B0(arg0, 1, 1, 1);
            return;
        }
        arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
        sp14 = 1;
        sp10 = 0xA;
        func_8001D8B0(arg0, 1, 0xA, 1);
    }
}

void func_80009588(void *arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    void *temp_a2;

    func_8000A3F4(arg0, (void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C);
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        (void *)0x8007D0D0->unk0 = 0.0f;
        (void *)0x8007D0D0->unk4 = (f32) *(void *)0x80071158;
        func_800232F4(arg0->unk10, arg0, (void *)0x8007D0D0);
    } else {
        func_8000A7D8(arg0, 0x8007D0D0);
    }
    func_8000A508(1, (bitwise s32) (void *)0x8007D0D0->unk0, (bitwise s32) (void *)0x8007D0D0->unk4, arg0, arg1);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        arg1->unk4 = (u16) (arg1->unk4 - 1);
        if (arg1->unk1C != 0) {
            temp_f0 = (bitwise f32) (void *)0x8007BAB8->unk14 - arg0->unk0;
            temp_f2 = (bitwise f32) (void *)0x8007BAB8->unk1C - arg0->unk8;
            temp_a2 = arg1->unk1C;
            if (!((sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2), arg1) - ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0)) < (temp_a2->unk10 * arg0->unk24))) {
                if (arg1->unk4 != 0) {
                    if ((arg1->unk8 & 2) == 0) {
                        if ((*(void *)0x8008C592 & 0x100) == 0) {
                            arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
                            return;
                        }
                        arg1->unk2 = (s16) arg2->unkE;
                        return;
                    }
                }
                func_8000A284(arg1, arg0, temp_a2);
                return;
            }
            func_8000A284(arg1, arg0, temp_a2);
            return;
        }
        temp_v0 = func_8000A008(arg1, arg0);
        if (temp_v0 != 0) {
            func_8000A284(arg1, arg0, temp_v0);
            return;
        }
        if (arg1->unk4 == 0) {
block_17:
            arg1->unk0 = (u16)0;
            func_8001D8B0(arg0, 0, 1, 0, 1, 1);
            func_8001D358(arg0);
            return;
        }
        if ((arg1->unk8 & 2) != 0) {
            goto block_17;
        }
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            arg1->unk2 = (s16) arg2->unkE;
            return;
        }
        arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
    }
}

void func_80009818(void *arg0, void *arg1, ? arg2) {
    void *sp10;

    func_8000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        if (arg1->unkA == 0) {
            func_800202E4(arg0);
            func_8000B170(arg0);
            arg0->unk50 = (u16)-1;
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
            *(void *)0x8007BA68 = (s32) (*(void *)0x8007BA68 + arg0->unk64->unk10);
            *(void *)0x8007BA6C = (s32) (*(void *)0x8007BA6C + arg0->unk64->unk14);
            func_800268D4(0, 0xA, 0xFF, (void *)0x8007BA6C);
            return;
        }
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
    }
}

void func_80009934(void *arg0, void *arg1, ? arg2) {
    void *sp10;

    func_8000A3F4(arg0, (void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C);
    func_8000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
        func_8001D358(arg0);
    }
}

u16 func_800099DC(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_ret_2;
    s32 temp_a2;
    u16 temp_a0;
    u16 temp_ret;
    u16 temp_ret_3;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_5;
    void *temp_v0_3;
    void *temp_v0_4;
    u16 phi_return;
    u16 phi_return_2;
    u16 phi_return_3;

    temp_v0 = arg1->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                return temp_v0;
            }
            func_8000A7D8(arg0, 0x8007D0D0);
            temp_ret = func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            phi_return_2 = temp_ret;
            if (arg1->unk2 == 0) {
                arg1->unk0 = (u16)0;
                arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
                phi_return_2 = temp_ret;
            }
        } else {
            temp_v0_2 = arg1->unk1C->unk2;
            phi_return_3 = temp_v0_2;
            if ((temp_v0_2 & 0xA) != 0) {
                func_8000A7D8(arg0, 0x8007D0D0);
                phi_return_3 = func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            phi_return_2 = phi_return_3;
            if (((void *)0x8007BAB8->unk74 & 2) == 0) {
                phi_return_2 = phi_return_3;
                if ((arg1->unk8 & 8) == 0) {
                    temp_f0 = (void *)0x8007BAB8->unk14 - arg0->unk0;
                    temp_f2 = (void *)0x8007BAB8->unk1C - arg0->unk8;
                    temp_ret_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
                    phi_return_2 = (bitwise u16) temp_ret_2;
                    if ((temp_ret_2 - ((void *)0x8007BAB8->unk38 * (void *)0x8007BAB8->unk10->unk18)) < (arg1->unk1C->unk14 * arg0->unk24)) {
                        if (func_8000ABF4(arg0) != 0) {
                            temp_ret_3 = func_80006BEC(func_8000AC84(arg1) & 0xFFFF, 0x8004, arg0);
                            phi_return_2 = temp_ret_3;
                            if ((arg1->unk90 & 2) != 0) {
                                temp_a2 = (((s32) ((temp_ret_3 & 0xFFFF) + 3) >> 2) + 1) & 0xFFFF;
                                temp_t8 = arg1->unkA + temp_a2;
                                arg1->unkA = temp_t8;
                                temp_a0 = arg0->unk64->unk6;
                                if ((s32) temp_a0 < (temp_t8 & 0xFFFF)) {
                                    arg1->unkA = temp_a0;
                                }
                                func_80018DF4(arg0, 1, temp_a2);
                                phi_return_2 = func_8001FCF8(arg0, 2, 1, 0x1E);
                            }
                        } else {
                            func_80006F6C();
                            temp_v0_3 = (void *)0x8007BAB8->unk10;
                            temp_v0_3->unk2C = (u16) (temp_v0_3->unk2C + 1);
                            phi_return_2 = (u16) temp_v0_3;
                        }
                        arg1->unk8 = (u16) (arg1->unk8 | 8);
                    }
                }
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            if (arg1->unk2 == 0) {
                temp_v0_4 = arg1->unk1C;
                arg1->unk6 = (u16) (arg1->unk6 + 1);
                if (temp_v0_4->unkA == -1) {
                    arg1->unk2 = (s16) ((arg2 + (temp_v0_4->unk8 * 0xC))->unk2 - temp_v0_4->unk4);
                } else {
                    arg1->unk2 = (s16) (arg2 + (temp_v0_4->unkC * 0xC))->unk2;
                    func_8001D8B0(arg0, temp_v0_4->unkC, 1, 0, 1, 1);
                    func_8000A7D8(arg0, 0x8007D0D0);
                }
                if ((s32) arg1->unk2 <= 0) {
                    arg1->unk2 = (u16)1;
                }
                return func_8001D358(arg0);
            }
        }
    } else {
        temp_v0_5 = arg1->unk1C->unk2;
        phi_return = temp_v0_5;
        if ((temp_v0_5 & 2) != 0) {
            func_8000A7D8(arg0, 0x8007D0D0);
            phi_return = func_8000A508(0, (void *)0x8007D0D0->unk0, *(void *)0x8007D0D4, arg0, arg1);
        }
        arg1->unk2 = (s16) (arg1->unk2 - 1);
        phi_return_2 = phi_return;
        if (arg1->unk2 == 0) {
            arg1->unk6 = (u16) (arg1->unk6 + 1);
            arg1->unk2 = (s16) arg1->unk1C->unk6;
            return phi_return;
        }
    }
    return phi_return_2;
}

u16 func_80009D78(void *arg0, void *arg1, s32 arg2) {
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    u16 phi_return;
    u16 phi_return_2;

    temp_v0 = arg1->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                return temp_v0;
            }
            if ((arg1->unk1C->unk2 & 0xA) != 0) {
                func_8000A7D8(arg0, 0x8007D0D0);
                func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            if (arg1->unk2 == 0) {
                temp_v0_2 = arg1->unk1C;
                arg1->unk6 = (u16) (arg1->unk6 - 1);
                arg1->unk2 = (s16) (arg2 + (temp_v0_2->unkC * 0xC))->unk2;
                func_8001D8B0(arg0, temp_v0_2->unkC, 1, 0, 1, 1);
            }
            phi_return_2 = (u16) arg1->unk2;
            if ((s32) arg1->unk2 <= 0) {
                arg1->unk2 = (u16)0xF;
                phi_return_2 = (u16) arg1->unk2;
            }
        } else {
            phi_return = temp_v0;
            if ((arg1->unk1C->unk2 & 0xA) != 0) {
                func_8000A7D8(arg0, 0x8007D0D0);
                phi_return = func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            phi_return_2 = phi_return;
            if (arg1->unk2 == 0) {
                arg1->unk0 = (u16)0;
                arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
                return phi_return;
            }
        }
    } else {
        phi_return_2 = temp_v0;
        if ((arg1->unk1C->unk2 & 2) != 0) {
            func_8000A7D8(arg0, 0x8007D0D0);
            phi_return_2 = func_8000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
        }
        arg1->unk2 = (s16) (arg1->unk2 - 1);
        if (arg1->unk2 == 0) {
            func_80014A98(arg0, arg1->unk1C->unk0 & 0xFFFF7FFF, 0, 0);
            temp_v0_3 = arg1->unk1C;
            arg1->unk6 = (u16) (arg1->unk6 + 1);
            if (temp_v0_3->unkA == -1) {
                arg1->unk2 = (s16) ((arg2 + (temp_v0_3->unk8 * 0xC))->unk2 - temp_v0_3->unk4);
            } else {
                arg1->unk6 = (u16) (arg1->unk6 + 1);
                arg1->unk2 = (s16) temp_v0_3->unk6;
            }
            if ((s32) arg1->unk2 <= 0) {
                arg1->unk2 = (u16)0xF;
            }
            return func_8001D358(arg0);
        }
    }
    return phi_return_2;
}

void *func_8000A008(void *arg0, void *arg1) {
    void *sp54;
    void *sp50;
    ? sp3C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_a2_3;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_v0;
    void *phi_t2;
    ? *phi_v1;
    u32 phi_a0;
    u32 phi_a3;
    ? *phi_v1_2;
    u32 phi_a0_2;
    u32 phi_a3_2;
    s32 phi_t0;
    u32 phi_a2;
    u32 phi_a0_3;
    u32 phi_a3_3;
    ? *phi_v1_3;
    void *phi_t2_2;
    s32 phi_t0_2;
    void *phi_t1;
    void *phi_t2_3;
    u16 phi_a2_2;
    u32 phi_a0_4;
    s32 phi_t0_3;
    u32 phi_a2_3;
    u32 phi_a2_4;
    u32 phi_a0_5;
    void *phi_t1_2;
    s32 phi_t0_4;
    void *phi_t1_3;
    void *phi_t1_4;

    arg0->unk8 = (u16) (arg0->unk8 & 0xFFEF);
    temp_f0 = (void *)0x8007BAB8->unk14 - arg1->unk0;
    temp_f2 = (void *)0x8007BAB8->unk1C - arg1->unk8;
    temp_t1 = arg0->unk20;
    temp_a2 = temp_t1->unk2C;
    temp_t2 = temp_t1->unk30;
    temp_f16 = func_80034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) - ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0);
    phi_t2 = temp_t2;
    phi_v1 = &sp3C;
    phi_a0 = 0U;
    phi_a2_2 = temp_a2;
    phi_t2_3 = temp_t2;
    if (temp_a2 != 0) {
loop_1:
        *phi_v1 = phi_t2;
        temp_a0 = phi_a0 + 1;
        temp_a2_2 = arg0->unk20->unk2C;
        temp_t2_2 = phi_t2 + 0x18;
        phi_t2 = temp_t2_2;
        phi_v1 = phi_v1 + 4;
        phi_a0 = temp_a0;
        if (temp_a0 < (u32) temp_a2_2) {
            goto loop_1;
        }
        phi_a2_2 = temp_a2_2;
        phi_t2_3 = temp_t2_2;
    }
    phi_a3 = phi_a2_2 - 1;
    phi_a2_4 = (u32) phi_a2_2;
loop_4:
    phi_v1_2 = &sp3C;
    phi_a0_2 = phi_a0_4;
    phi_t0 = 0;
    phi_a2 = phi_a2_4;
    phi_a3_3 = phi_a3;
    phi_a3_2 = phi_a3;
    phi_a0_5 = phi_a0_4;
    phi_t1_2 = phi_t1_4;
    phi_t0_4 = 0;
    phi_a2_3 = phi_a2_4;
    phi_t1_3 = phi_t1_4;
    if (phi_a3 != 0) {
loop_5:
        temp_a1 = phi_v1_2->unk0;
        temp_v0 = phi_v1_2->unk4;
        temp_a0_2 = phi_a0_2 + 1;
        phi_t0_3 = phi_t0_4;
        if (temp_v0->unk10 < temp_a1->unk10) {
            phi_v1_2->unk0 = temp_v0;
            phi_v1_2->unk4 = temp_a1;
            temp_t1_2 = arg0->unk20;
            temp_a2_3 = temp_t1_2->unk2C;
            phi_a3_2 = temp_a2_3 - 1;
            phi_t0_3 = phi_t0_4 + 1;
            phi_a2_3 = (u32) temp_a2_3;
            phi_t1_3 = temp_t1_2;
        }
        phi_v1_2 = phi_v1_2 + 4;
        phi_a0_2 = temp_a0_2;
        phi_t0_4 = phi_t0_3;
        if (temp_a0_2 < phi_a3_2) {
            goto loop_5;
        }
        phi_t0 = phi_t0_3;
        phi_a2 = phi_a2_3;
        phi_a3_3 = phi_a3_2;
        phi_a0_5 = 0U;
        phi_t1_2 = phi_t1_3;
    }
    phi_a3 = phi_a3_3;
    phi_a0_4 = phi_a0_5;
    phi_a2_4 = phi_a2;
    phi_t1_4 = phi_t1_2;
    if (phi_t0 != 0) {
        goto loop_4;
    }
    phi_t0_2 = 0;
    phi_t1 = phi_t1_2;
    if (phi_a2 != 0) {
        temp_f12 = arg1->unk24;
        temp_f14 = arg0->unk10 * arg0->unk120;
        phi_a0_3 = phi_a0_5;
        phi_v1_3 = &sp3C;
loop_12:
        temp_t2_3 = phi_v1_3->unk0;
        if (phi_a0_3 < phi_a3_3) {
            temp_f0_2 = temp_t2_3->unk10 * temp_f12;
            if (temp_f16 < temp_f0_2) {
                phi_t0_2 = 1;
                phi_t1 = phi_t1_2;
                phi_t2_3 = temp_t2_3;
            } else if (temp_f16 < (temp_f14 + temp_f0_2)) {
                temp_a1_2 = phi_v1_3->unk4;
                if (temp_f16 < (temp_a1_2->unk10 * temp_f12)) {
                    sp50 = temp_a1_2;
                    sp54 = temp_t2_3;
                    phi_t2_2 = temp_t2_3;
                    if (func_80022FD0(temp_f12, temp_f14, 2, temp_a1_2, phi_a2, phi_a3_3) == 0) {
                        phi_t2_2 = temp_a1_2;
                    }
                    if (phi_t2_2 != temp_a1_2) {
                        arg0->unk8 = (u16) (arg0->unk8 | 0x10);
                    }
                    phi_t0_2 = 1;
                    phi_t1 = arg0->unk20;
                    phi_t2_3 = phi_t2_2;
                } else {
block_26:
                    temp_a0_3 = phi_a0_3 + 1;
                    phi_a0_3 = temp_a0_3;
                    phi_v1_3 = phi_v1_3 + 4;
                    phi_t0_2 = 0;
                    phi_t1 = phi_t1_2;
                    phi_t2_3 = temp_t2_3;
                    if (temp_a0_3 < phi_a2) {
                        goto loop_12;
                    }
                }
            } else {
                goto block_26;
            }
        } else {
            temp_f0_3 = temp_t2_3->unk10 * temp_f12;
            if (temp_f16 < (temp_f14 + temp_f0_3)) {
                phi_t1 = phi_t1_2;
                if (temp_f0_3 < temp_f16) {
                    arg0->unk8 = (u16) (arg0->unk8 | 0x10);
                    phi_t1 = arg0->unk20;
                }
                phi_t0_2 = 1;
                phi_t2_3 = temp_t2_3;
            } else {
                goto block_26;
            }
        }
    }
    if (phi_t0_2 == 0) {
        phi_t2_3 = NULL;
    }
    if ((phi_t1->unk24 & 4) != 0) {
        phi_t2_3 = (func_80022FD0(phi_t1->unk2C) * 0x18) + arg0->unk20->unk30;
    }
    arg0->unk1C = phi_t2_3;
    return phi_t2_3;
}



void func_8000A284(void *arg0, void *arg1, void *arg2) {
    s16 temp_v0;
    s32 temp_t6;
    void *phi_a0;
    void *phi_a1;
    void *phi_a2;
    s16 phi_a3;

    temp_t6 = arg2->unk0 & 0x8000;
    phi_a0 = arg0;
    phi_a1 = arg1;
    phi_a2 = arg2;
    if (temp_t6 != 0) {
        phi_a0 = arg1;
        phi_a1 = NULL;
        phi_a2 = (void *)1;
        if ((arg0->unk90 & 0x40) != 0) {
            arg0->unk0 = (u16)0;
            func_8001D8B0(arg1, NULL, (void *)1, 0, 1, 1);
            func_8001D358(arg1);
            return;
        }
    }
    if (temp_t6 != 0) {
        arg0->unk0 = (u16)5;
    } else {
        arg0->unk0 = (u16)4;
    }
    arg0->unk6 = (u16)0;
    arg0->unk8 = (u16) (arg0->unk8 & 0xFFF7);
    arg0->unk2 = (u16) arg2->unk4;
    arg1->unk60 = (u16)1;
    arg1->unk10 = func_80023210((void *)0x8007BAB8->unk14 - arg1->unk0, (void *)0x8007BAB8->unk1C - arg1->unk8, phi_a0, phi_a1, phi_a2);
    temp_v0 = arg2->unkA;
    if (temp_v0 == -1) {
        phi_a3 = (u16)0;
    } else {
        phi_a3 = temp_v0;
    }
    func_8001D8B0(arg1, arg2->unk8, 1, phi_a3, 1, 1);
    func_800140EC(arg2->unk4 + 0xF, arg1);
    if ((s16) arg0->unk2 == 0) {
        arg0->unk2 = (u16)1U;
    }
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        func_8000B2C8(arg2->unk0 & 0xFF, arg0);
    }
}

f64 func_8000A3F4(void *arg0, f32 arg1, f32 arg2) {
    f32 temp_f14;
    f64 temp_f0;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f2;
    f64 phi_f2;
    f32 phi_f12;

    temp_f16 = *(void *)0x80071160;
    temp_f14 = arg0->unk10;
    temp_f2 = (f64) (func_80023210(arg1 - arg0->unk0, arg2 - arg0->unk8) - temp_f14);
    if (temp_f16 < temp_f2) {
        phi_f12 = (f32) (temp_f2 - *(void *)0x80071168);
block_4:
        phi_f2 = (f64) phi_f12;
    } else {
        phi_f2 = temp_f2;
        if (temp_f2 < *(void *)0x80071170) {
            phi_f12 = (f32) (temp_f2 + *(void *)0x80071178);
            goto block_4;
        }
    }
    temp_f18 = *(void *)0x80071180;
    arg0->unk10 = (f32) ((f64) temp_f14 + (phi_f2 * *(void *)0x80071188));
    temp_f0 = (f64) arg0->unk10;
    if (temp_f16 < temp_f0) {
        arg0->unk10 = (f32) (temp_f0 - temp_f18);
        return temp_f0;
    }
    if (temp_f0 < *(void *)0x80071190) {
        arg0->unk10 = (f32) (temp_f0 + temp_f18);
    }
    return temp_f0;
}

void *func_8000A508(s32 arg0, f32 arg1, f32 arg2, void *arg3, void *arg4) {
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f64 temp_f12;
    f64 temp_f2_2;
    void *temp_v1;
    ? phi_a3;

    if (arg0 != 0) {
        temp_f14 = (arg3->unk0 + arg3->unk18) - *(void *)0x8008C5A4;
        sp30 = temp_f14;
        temp_f16 = (arg3->unk8 + arg3->unk20) - *(void *)0x8008C430;
        sp2C = temp_f16;
        temp_f0 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16), temp_f14);
        temp_f2 = arg4->unk10 * arg4->unk120;
        if (temp_f2 < temp_f0) {
            arg1 = (((temp_f2 * temp_f14) / temp_f0) - arg3->unk0) + *(void *)0x8008C5A4;
            arg2 = (((temp_f2 * temp_f16) / temp_f0) - arg3->unk8) + *(void *)0x8008C430;
            arg4->unk8 = (u16) (arg4->unk8 | 2);
        }
    }
    temp_f14_2 = (arg3->unk0 + arg3->unk18) - *(void *)0x8008C59C;
    sp30 = temp_f14_2;
    temp_f16_2 = (arg3->unk8 + arg3->unk20) - *(void *)0x8008C5A0;
    sp2C = temp_f16_2;
    temp_f0_2 = sqrtf((temp_f14_2 * temp_f14_2) + (temp_f16_2 * temp_f16_2), temp_f14_2);
    temp_f18 = *(void *)0x8008C434;
    if (temp_f18 < temp_f0_2) {
        temp_f2_2 = (f64) temp_f18 - 0.5;
        temp_f12 = (f64) temp_f0_2;
        arg1 = (f32) ((((temp_f2_2 * (f64) temp_f14_2) / temp_f12) - (f64) arg3->unk0) + (f64) *(void *)0x8008C59C);
        arg2 = (f32) ((((temp_f2_2 * (f64) temp_f16_2) / temp_f12) - (f64) arg3->unk8) + (f64) *(void *)0x8008C5A0);
    }
    func_8000A854(temp_f14_2, &arg1, &arg2, arg3);
    temp_v1 = arg3->unk64;
    arg3->unk18 = arg1;
    arg3->unk20 = arg2;
    arg3->unk0 = (f32) (arg3->unk0 + arg1);
    arg3->unk8 = (f32) (arg3->unk8 + arg2);
    phi_a3 = 0xA00;
    if (temp_v1->unk0 == 0) {
        phi_a3 = 0xA00;
        if (arg4->unk0 != 0) {
            phi_a3 = 0xA01;
        }
    }
    (void *)0x8007D0E0->unk0 = (f32) (temp_v1->unk18 * temp_v1->unk20);
    func_8000EE60(arg3->unk0, arg3->unk4, (bitwise s32) arg3->unk8, phi_a3, (void *)0x8007D0E0);
    arg3->unk0 = (f32) (void *)0x8007D0E0->unk0;
    arg3->unk4 = (f32) (void *)0x8007D0E0->unk4;
    arg3->unk8 = (f32) (void *)0x8007D0E0->unk8;
    if ((arg4->unk8 & 4) != 0) {
        arg3->unk4 = (f32) ((f64) arg3->unk4 - 30.0);
    }
    arg3->unk2C = (f32) (void *)0x8007D0E0->unkC;
    arg3->unk30 = (f32) (void *)0x8007D0E0->unk10;
    arg3->unk34 = (f32) (void *)0x8007D0E0->unk14;
    arg3->unk62 = (u16) (void *)0x8007D0E0->unk18;
    return (void *)0x8007D0E0;
}

void func_8000A7D8(void *arg0, void *arg1) {
    void *temp_a3;

    temp_a3 = arg1;
    arg1 = temp_a3;
    func_8001D924((arg0->unk52 * 0xC) + *(*(void *)0x8007D0A8 + (arg0->unk50 * 4)), arg0->unk24, temp_a3);
    arg1->unk0 = (f32) -arg0->unk44;
    arg1->unk4 = (f32) arg0->unk4C;
    func_800232F4(arg0->unk10, arg0, arg1);
}

f32 func_8000A854(void *arg0, void *arg1, void *arg2) {
    f32 sp68;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f32 temp_ret;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f64 temp_f0_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    void *temp_s0;
    void *temp_s0_2;
    s32 phi_s3;
    void *phi_s2;
    f32 phi_f14;
    s32 phi_s3_2;
    s32 phi_s1;
    s32 phi_s3_3;
    void *phi_s2_2;
    f32 phi_f14_2;
    s32 phi_s3_4;
    s32 phi_s1_2;
    f32 phi_return;
    s32 phi_s3_5;
    s32 phi_s3_6;
    f32 phi_return_2;
    f32 phi_return_3;
    f32 phi_return_4;
    f32 phi_return_5;
    f32 phi_return_6;

    temp_f16 = arg2->unk28;
    temp_f18 = arg2->unk24;
    temp_f30 = *arg1 + arg2->unk8;
    temp_f14 = temp_f16 * temp_f18;
    temp_f28 = *arg0 + arg2->unk0;
    temp_f20 = temp_f28 - (void *)0x8007BAB8->unk14;
    temp_f24 = ((void *)0x8007BAB8->unk3C * (void *)0x8007BAB8->unk38) + temp_f14;
    temp_f22 = temp_f30 - (void *)0x8007BAB8->unk1C;
    phi_s3 = 0;
    phi_return_5 = (bitwise f32) (void *)0x8007BAB8;
    if (temp_f20 < temp_f24) {
        temp_f0 = -temp_f24;
        phi_s3 = 0;
        phi_return_5 = temp_f0;
        if (temp_f0 < temp_f20) {
            phi_s3 = 0;
            phi_return_5 = temp_f0;
            if (temp_f22 < temp_f24) {
                phi_s3 = 0;
                phi_return_5 = temp_f0;
                if (temp_f0 < temp_f22) {
                    sp68 = temp_f14;
                    temp_ret = sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22), temp_f14);
                    temp_f0_2 = temp_ret;
                    phi_s3 = 0;
                    phi_return_5 = temp_ret;
                    if (temp_f0_2 < temp_f24) {
                        temp_f2 = temp_f24 / temp_f0_2;
                        *arg0 = (f32) ((*(void *)0x8007BACC + (temp_f20 * temp_f2)) - arg2->unk0);
                        *arg1 = (f32) ((*(void *)0x8007BAD4 + (temp_f22 * temp_f2)) - arg2->unk8);
                        phi_s3 = 1;
                        phi_return_5 = temp_ret;
                    }
                }
            }
        }
    }
    temp_s1 = *(void *)0x8007D08C;
    phi_s3_3 = phi_s3;
    phi_f14_2 = temp_f16 * temp_f18;
    phi_return_3 = phi_return_5;
    if (temp_s1 != 0) {
        phi_s3_3 = phi_s3;
        phi_f14_2 = temp_f16 * temp_f18;
        phi_return_3 = phi_return_5;
        if (phi_s3 == 0) {
            phi_s3_3 = phi_s3;
            phi_f14_2 = temp_f16 * temp_f18;
            phi_return_3 = phi_return_5;
            if (temp_s1 != 0) {
                phi_s2 = (void *)0x8007D090;
                phi_f14 = temp_f16 * temp_f18;
                phi_s1 = temp_s1;
                phi_s3_5 = phi_s3;
                phi_return_6 = phi_return_5;
loop_10:
                temp_s0 = *phi_s2;
                phi_s3_2 = phi_s3_5;
                phi_return_4 = phi_return_6;
                if (temp_s0 != arg2) {
                    temp_f20_2 = temp_f28 - temp_s0->unk0;
                    temp_f22_2 = temp_f30 - temp_s0->unk8;
                    temp_f24_2 = (temp_s0->unk28 * temp_s0->unk24) + phi_f14;
                    phi_s3_2 = phi_s3_5;
                    phi_return_4 = phi_return_6;
                    if (temp_f20_2 < temp_f24_2) {
                        temp_f0_3 = -temp_f24_2;
                        phi_s3_2 = phi_s3_5;
                        phi_return_4 = temp_f0_3;
                        if (temp_f0_3 < temp_f20_2) {
                            phi_s3_2 = phi_s3_5;
                            phi_return_4 = temp_f0_3;
                            if (temp_f22_2 < temp_f24_2) {
                                phi_s3_2 = phi_s3_5;
                                phi_return_4 = temp_f0_3;
                                if (temp_f0_3 < temp_f22_2) {
                                    sp68 = phi_f14;
                                    temp_ret_2 = sqrtf((temp_f20_2 * temp_f20_2) + (temp_f22_2 * temp_f22_2), phi_f14);
                                    temp_f0_4 = temp_ret_2;
                                    phi_s3_2 = phi_s3_5;
                                    phi_return_4 = temp_ret_2;
                                    if (temp_f0_4 != 0.0f) {
                                        phi_s3_2 = phi_s3_5;
                                        phi_return_4 = temp_ret_2;
                                        if (temp_f0_4 < temp_f24_2) {
                                            temp_f2_2 = temp_f24_2 / temp_f0_4;
                                            *arg0 = (f32) ((temp_s0->unk0 + (temp_f20_2 * temp_f2_2)) - arg2->unk0);
                                            *arg1 = (f32) ((temp_s0->unk8 + (temp_f22_2 * temp_f2_2)) - arg2->unk8);
                                            phi_s3_2 = phi_s3_5 + 1;
                                            phi_return_4 = temp_ret_2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                temp_s1_2 = phi_s1 - 1;
                phi_s3_3 = phi_s3_2;
                phi_f14_2 = phi_f14;
                phi_return_3 = phi_return_4;
                if (phi_s3_2 == 0) {
                    phi_s2 = phi_s2 + 4;
                    phi_f14 = phi_f14;
                    phi_s1 = temp_s1_2;
                    phi_s3_3 = phi_s3_2;
                    phi_f14_2 = phi_f14;
                    phi_s3_5 = phi_s3_2;
                    phi_return_3 = phi_return_4;
                    phi_return_6 = phi_return_4;
                    if (temp_s1_2 != 0) {
                        goto loop_10;
                    }
                }
            }
        }
    }
    temp_s1_3 = *(void *)0x80084F38;
    phi_return = phi_return_3;
    if (temp_s1_3 != 0) {
        phi_return = phi_return_3;
        if (phi_s3_3 == 0) {
            phi_return = phi_return_3;
            if (temp_s1_3 != 0) {
                phi_s2_2 = (void *)0x80084F40;
                phi_s1_2 = temp_s1_3;
                phi_s3_6 = phi_s3_3;
loop_24:
                temp_s0_2 = *phi_s2_2;
                temp_f0_5 = (f64) temp_s0_2->unk10;
                temp_f20_3 = temp_f28 - temp_s0_2->unk0;
                temp_f22_3 = temp_f30 - temp_s0_2->unk8;
                temp_f24_3 = (f32) ((f64) phi_f14_2 + (temp_f0_5 + temp_f0_5));
                phi_s3_4 = phi_s3_6;
                phi_return_2 = (f32) temp_f0_5;
                if (temp_f20_3 < temp_f24_3) {
                    temp_f0_6 = -temp_f24_3;
                    phi_s3_4 = phi_s3_6;
                    phi_return_2 = temp_f0_6;
                    if (temp_f0_6 < temp_f20_3) {
                        phi_s3_4 = phi_s3_6;
                        phi_return_2 = temp_f0_6;
                        if (temp_f22_3 < temp_f24_3) {
                            phi_s3_4 = phi_s3_6;
                            phi_return_2 = temp_f0_6;
                            if (temp_f0_6 < temp_f22_3) {
                                temp_ret_3 = sqrtf((temp_f20_3 * temp_f20_3) + (temp_f22_3 * temp_f22_3));
                                temp_f0_7 = temp_ret_3;
                                phi_s3_4 = phi_s3_6;
                                phi_return_2 = temp_ret_3;
                                if (temp_f0_7 < temp_f24_3) {
                                    temp_f2_3 = temp_f24_3 / temp_f0_7;
                                    *arg0 = (f32) ((temp_s0_2->unk0 + (temp_f20_3 * temp_f2_3)) - arg2->unk0);
                                    *arg1 = (f32) ((temp_s0_2->unk8 + (temp_f22_3 * temp_f2_3)) - arg2->unk8);
                                    phi_s3_4 = phi_s3_6 + 1;
                                    phi_return_2 = temp_ret_3;
                                }
                            }
                        }
                    }
                }
                temp_s1_4 = phi_s1_2 - 1;
                phi_return = phi_return_2;
                if (phi_s3_4 == 0) {
                    phi_s2_2 = phi_s2_2 + 4;
                    phi_s1_2 = temp_s1_4;
                    phi_return = phi_return_2;
                    phi_s3_6 = phi_s3_4;
                    if (temp_s1_4 != 0) {
                        goto loop_24;
                    }
                }
            }
        }
    }
    return phi_return;
}

u32 func_8000ABF4(void *arg0) {
    s16 sp1E;
    u16 temp_v0;

    temp_v0 = arg0->unk68->unk86;
    sp1E = (s16) ((s32) (temp_v0 * 0x64) / (s32) (temp_v0 + ((s32) ((*(void *)0x8007BB34)->unk86 + 7) >> 3)));
    return func_80022FD0(0x64, arg0) < (u32) sp1E;
}

u32 func_8000AC84(void *arg0) {
    u32 temp_t8;
    u32 phi_v1;

    temp_t8 = ((s32) (arg0->unk114 * arg0->unk11A) >> 4) & 0xFFFF;
    phi_v1 = temp_t8;
    if ((arg0->unk90 & 1) != 0) {
        phi_v1 = (temp_t8 >> 1) & 0xFFFF;
    }
    return phi_v1;
}

Failed to decompile function func_8000ACC0:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_8000B110(void) {
    func_800208B8();
    func_800268D4(0, 0x17, 0xFF);
}

s32 func_8000B140(s32 arg0) {
    s32 temp_v1;
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_v0 = 0x8007C9BC;
    phi_v1 = 0;
loop_1:
    phi_v1_2 = phi_v1;
    if (arg0 != phi_v0) {
        temp_v1 = phi_v1 + 1;
        phi_v0 = phi_v0 + 0x128;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 6) {
            goto loop_1;
        }
    }
    return phi_v1_2;
}

void func_8000B170(void *arg0) {
    f32 sp3C;
    f32 temp_f0;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f2;

    (void *)0x8007D0D0->unk0 = (f32) (void *)0x80054690->unk148;
    (void *)0x8007D0D0->unk4 = (f32) (void *)0x80054690->unk14C;
    (void *)0x8007D0D0->unk8 = (f32) arg0->unk28;
    temp_v0 = arg0->unk64;
    if (temp_v0->unk0 == 1) {
        phi_f2 = arg0->unk68->unk94;
    } else {
        phi_f2 = (f32) ((f64) arg0->unk4 + (((f64) temp_v0->unk1C * 0.5) * (f64) arg0->unk24));
    }
    sp3C = phi_f2;
    func_800177F8(*(void *)0x800547D2, *(void *)0x800547D4, arg0->unk0, phi_f2, arg0->unk8, arg0->unk10, ((void *)0x80054690->unk140 * 0xA) + 0x800C1B90, (void *)0x8007D0D0, arg0);
    temp_v0_2 = arg0->unk64;
    temp_f0 = arg0->unk24;
    func_80019354(2, 0x1E, arg0->unk0, (temp_v0_2->unk1C * temp_f0) + phi_f2, arg0->unk8, (f32) ((f64) (temp_v0_2->unk18 * temp_f0) * *(void *)0x800711C0));
}

void func_8000B2B8(void) {
    *(void *)0x8007D0C4 = 0;
}

void *func_8000B2C8(s32 arg0, ?32 arg1) {
    (void *)0x8007D0C0->unk0 = (u16)0;
    (void *)0x8007D0C0->unk8 = arg1;
    (void *)0x8007D0C0->unkC = 0x8007C9BC;
    (void *)0x8007D0C0->unk4 = (s32) ((arg0 * 4) + 0x80050000)->unk4640;
    return (void *)0x8007D0C0;
}

void func_8000B300(void) {
    void *sp48;
    void *sp40;
    s32 sp3C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f18;
    u16 temp_a3;
    u16 temp_t8;
    void *temp_t6;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f2;

    temp_t6 = *(void *)0x8007D0C4;
    if (temp_t6 != 0) {
        temp_t8 = *(void *)0x8007D0C0 + 1;
        *(void *)0x8007D0C0 = temp_t8;
        if ((s32) temp_t6->unk0 < (temp_t8 & 0xFFFF)) {
            temp_v1 = (temp_t6->unk2 * 0x10) + 0x80054690;
            sp3C = (temp_v1->unk0 * 0xA) + 0x800C1B90;
            temp_v0 = *(void *)0x8007D0CC;
            (void *)0x8007D0D0->unk0 = (f32) temp_t6->unk8;
            (void *)0x8007D0D0->unk4 = (f32) temp_t6->unk10;
            sp40 = temp_v1;
            sp48 = temp_v0;
            func_800232F4(temp_v0->unk10 + temp_t6->unk14, (void *)0x8007D0D0);
            if ((temp_t6->unk4 & 2) != 0) {
                phi_f12 = *(void *)0x8007BAD0;
                phi_f14 = *(void *)0x8007BAD4;
                phi_f2 = *(void *)0x8007BACC;
            } else {
                phi_f12 = temp_v0->unk4;
                phi_f14 = temp_v0->unk8;
                phi_f2 = temp_v0->unk0;
            }
            temp_f0 = temp_v0->unk24;
            temp_f18 = (void *)0x8007D0D0->unk0 * temp_f0;
            (void *)0x8007D0D0->unk0 = (f32) temp_v1->unk8;
            temp_f10 = (void *)0x8007D0D0->unk4 * temp_f0;
            temp_f12 = phi_f12 + (temp_t6->unkC * temp_f0);
            (void *)0x8007D0D0->unk4 = (f32) temp_v1->unkC;
            temp_f14 = phi_f14 + temp_f10;
            temp_a3 = *(*(void *)0x8007D0C8)->unk1C;
            if ((temp_a3 & 0x8000) != 0) {
                (void *)0x8007D0D0->unk8 = (f32) ((((((s32) temp_a3 >> 8) & 0xF) * 4) + 0x800C0000)->unk1B14 + ((temp_a3 & 0xFF) * 0x44))->unk1C;
            } else {
                (void *)0x8007D0D0->unk8 = (f32) temp_v0->unk28;
            }
            func_800177F8(temp_f12, temp_f14, temp_v1->unk2, temp_v1->unk4, phi_f2 + temp_f18, temp_f12, temp_f14, temp_v0->unk10 + temp_t6->unk14, sp3C, (void *)0x8007D0D0, temp_v0);
            if ((temp_t6->unk4 & 4) != 0) {
                func_80013F20(1);
            }
            if ((temp_t6->unk4 & 1) != 0) {
                *(void *)0x8007D0C4 = NULL;
                return;
            }
            *(void *)0x8007D0C4 = (void *) (*(void *)0x8007D0C4 + 0x18);
        }
    }
}
