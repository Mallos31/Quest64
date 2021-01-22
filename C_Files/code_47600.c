s32 __osContAddressCrc(s32 arg0) {
    u8 spF;
    u8 spE;
    s32 sp8;
    s32 temp_at;
    s32 temp_t1;
    s32 temp_t8;
    u8 temp_t4;
    s32 phi_a0;
    s32 phi_a1;

    spF = (u8)0U;
    sp8 = 0;
    phi_a0 = arg0 & 0xFFFF;
loop_1:
    if ((spF & 0x10) != 0) {
        spE = (u8)0x15U;
    } else {
        spE = (u8)0U;
    }
    spF = spF * 2;
    if ((phi_a0 & 0x400) != 0) {
        phi_a1 = 1;
    } else {
        phi_a1 = 0;
    }
    temp_t4 = spF | (phi_a1 & 0xFF);
    temp_t8 = temp_t4 & 0xFF;
    temp_t1 = sp8 + 1;
    temp_at = temp_t1 < 0x10;
    spF = temp_t4;
    sp8 = temp_t1;
    spF = temp_t8 ^ spE;
    phi_a0 = (phi_a0 * 2) & 0xFFFF;
    if (temp_at != 0) {
        goto loop_1;
    }
    return (spF & 0x1F) & 0xFF;
}

u8 __osContDataCrc(void *arg0) {
    u8 spF;
    u8 spE;
    s32 sp8;
    s32 sp4;
    s32 temp_t5;
    s32 temp_t7;
    u8 temp_t1;
    void *phi_a0;
    s32 phi_a1;

    spF = (u8)0U;
    sp8 = 0;
    phi_a0 = arg0;
loop_1:
    sp4 = 7;
loop_2:
    if ((spF & 0x80) != 0) {
        spE = (u8)0x85U;
    } else {
        spE = (u8)0U;
    }
    temp_t1 = spF * 2;
    spF = temp_t1;
    if (sp8 == 0x20) {
        spF = temp_t1 & 0xFF;
    } else {
        if ((*phi_a0 & (1 << sp4)) != 0) {
            phi_a1 = 1;
        } else {
            phi_a1 = 0;
        }
        spF = spF | phi_a1;
    }
    temp_t5 = sp4 - 1;
    sp4 = temp_t5;
    spF = spF ^ spE;
    if (temp_t5 >= 0) {
        goto loop_2;
    }
    temp_t7 = sp8 + 1;
    sp8 = temp_t7;
    phi_a0 = phi_a0 + 1;
    if (temp_t7 < 0x21) {
        goto loop_1;
    }
    return spF;
}

Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

s32 __osContRamWrite(s32 arg0, s32 arg1, u16 arg2, s32 arg3, s32 arg4) {
    s32 sp5C;
    s32 sp58;
    void *sp54;
    ? sp2C;
    s32 sp28;
    ? *temp_t8;
    s32 temp_at;
    s32 temp_t4;
    s32 temp_t6;
    void *temp_t9;
    void *phi_t9;
    ? *phi_t8;

    sp5C = 0;
    sp54 = (void *)0x80095660;
    sp28 = 2;
    if (arg4 != 1) {
        if ((s32) arg2 < 7) {
            if (arg2 != 0) {
                return 0;
            }
        }
    }
    __osSiGetAccess();
    *(void *)0x80095490 = (u8)3;
    _osPackRamWriteData(arg1, arg2, arg3);
    sp5C = __osSiRawStartDma(1, 0x80095660);
    func_80034020(arg0, 0, 1);
loop_5:
    sp5C = __osSiRawStartDma(0, 0x80095660);
    func_80034020(arg0, 0, 1);
    sp54 = (void *)0x80095660;
    if (arg1 != 0) {
        sp58 = 0;
        if (arg1 > 0) {
loop_7:
            temp_t6 = sp58 + 1;
            temp_at = temp_t6 < arg1;
            sp58 = temp_t6;
            sp54 = sp54 + 1;
            if (temp_at != 0) {
                goto loop_7;
            }
        }
    }
    phi_t9 = sp54;
    phi_t8 = &sp2C;
loop_9:
    temp_t9 = phi_t9 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (?32) (unaligned s32) *phi_t9;
    temp_t8->unk-8 = (?32) (unaligned s32) temp_t9->unk-8;
    temp_t8->unk-4 = (?32) (unaligned s32) temp_t9->unk-4;
    phi_t9 = temp_t9;
    phi_t8 = temp_t8;
    if (temp_t9 != (sp54 + 0x24)) {
        goto loop_9;
    }
    temp_t8->unk0 = (?32) (unaligned s32) temp_t9->unk0;
    temp_t4 = (s32) (sp2E & 0xC0) >> 4;
    sp5C = temp_t4;
    if (temp_t4 == 0) {
        if (__osContDataCrc(arg3) != sp52) {
            sp5C = __osPfsGetStatus(arg0, arg1);
            if (sp5C != 0) {
                __osSiRelAccess();
            } else {
                sp5C = 4;
block_16:
                if (sp5C == 4) {
                    sp28 = sp28 - 1;
                    if (((sp28 < 0) ^ 1) != 0) {
                        goto loop_5;
                    }
                }
                __osSiRelAccess();
            }
        } else {
            goto block_16;
        }
    } else {
        sp5C = 1;
        goto block_16;
    }
    return sp5C;
}

void _osPackRamWriteData(s32 arg0, u16 arg1, void *arg2) {
    void *sp44;
    s8 sp42;
    s16 sp20;
    s8 sp1F;
    s8 sp1E;
    s8 sp1D;
    s8 sp1C;
    s32 sp18;
    s32 temp_at;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0;
    s8 *temp_t2;
    void *temp_t1;
    void *temp_t6;
    s8 *phi_t2;
    void *phi_t1;

    sp44 = (void *)0x80095660;
    *(void *)0x8009569C = 1;
    sp1C = (u8)0xFF;
    sp1D = (u8)0x23;
    sp1E = (u8)1;
    sp1F = (u8)3;
    temp_v0 = __osContAddressCrc(arg1);
    sp42 = (u8)0xFF;
    sp20 = temp_v0 | (arg1 << 5);
    sp18 = 0;
loop_1:
    (sp + sp18)->unk22 = (u8) *arg2;
    temp_t3 = sp18 + 1;
    temp_at = temp_t3 < 0x20;
    sp18 = temp_t3;
    arg2 = arg2 + 1;
    if (temp_at != 0) {
        goto loop_1;
    }
    if (arg0 != 0) {
        sp18 = 0;
        if (arg0 > 0) {
loop_4:
            *sp44 = (u8)0;
            temp_t9 = sp18 + 1;
            sp44 = sp44 + 1;
            sp18 = temp_t9;
            if (temp_t9 < arg0) {
                goto loop_4;
            }
        }
    }
    phi_t2 = &sp1C;
    phi_t1 = sp44;
loop_6:
    temp_t2 = phi_t2 + 0xC;
    temp_t1 = phi_t1 + 0xC;
    temp_t1->unk-C = (unaligned s32) *phi_t2;
    temp_t1->unk-8 = (unaligned s32) temp_t2->unk-8;
    temp_t1->unk-4 = (unaligned s32) temp_t2->unk-4;
    phi_t2 = temp_t2;
    phi_t1 = temp_t1;
    if (temp_t2 != (&sp1C + 0x24)) {
        goto loop_6;
    }
    temp_t1->unk0 = (unaligned s32) temp_t2->unk0;
    temp_t6 = sp44 + 0x28;
    sp44 = temp_t6;
    *temp_t6 = (u8)0xFE;
}
