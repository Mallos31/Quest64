s32 func_8003A000(void *arg0) {
    s32 sp4C;
    s32 sp48;
    void *sp44;
    ? sp1C;
    ? *temp_t8;
    s32 temp_t4;
    s32 temp_t5;
    void *temp_t0;
    void *phi_t0;
    ? *phi_t8;

    sp44 = (void *)0x80095660;
    if (((arg0->unk8 * 4) + 0x80070000)->unk9B0 == 0) {
        return 5;
    }
    __osSiGetAccess();
    *(void *)0x80095490 = (u8)3;
    __osSiRawStartDma(1, (arg0->unk8 << 6) + 0x80095210);
    func_80034020(arg0->unk4, 0, 1);
    sp48 = __osSiRawStartDma(0, 0x80095660);
    func_80034020(arg0->unk4, 0, 1);
    sp44 = (void *)0x80095660;
    if (arg0->unk8 != 0) {
        sp4C = 0;
        if (arg0->unk8 > 0) {
loop_4:
            temp_t5 = sp4C + 1;
            sp4C = temp_t5;
            sp44 = sp44 + 1;
            if (temp_t5 < arg0->unk8) {
                goto loop_4;
            }
        }
    }
    phi_t0 = sp44;
    phi_t8 = &sp1C;
loop_6:
    temp_t0 = phi_t0 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (?32) (unaligned s32) *phi_t0;
    temp_t8->unk-8 = (?32) (unaligned s32) temp_t0->unk-8;
    temp_t8->unk-4 = (?32) (unaligned s32) temp_t0->unk-4;
    phi_t0 = temp_t0;
    phi_t8 = temp_t8;
    if (temp_t0 != (sp44 + 0x24)) {
        goto loop_6;
    }
    temp_t8->unk0 = (?32) (unaligned s32) temp_t0->unk0;
    temp_t4 = (s32) (sp1E & 0xC0) >> 4;
    sp48 = temp_t4;
    if (temp_t4 == 0) {
        if (__osContDataCrc(0x80095410) != sp42) {
            sp48 = 4;
        }
    }
    __osSiRelAccess();
    return sp48;
}

s32 func_8003A1A0(void *arg0) {
    s32 sp4C;
    s32 sp48;
    void *sp44;
    ? sp1C;
    ? *temp_t8;
    s32 temp_t4;
    s32 temp_t5;
    void *temp_t0;
    void *phi_t0;
    ? *phi_t8;

    sp44 = (void *)0x80095660;
    if (((arg0->unk8 * 4) + 0x80070000)->unk9B0 == 0) {
        return 5;
    }
    __osSiGetAccess();
    *(void *)0x80095490 = (u8)3;
    __osSiRawStartDma(1, (arg0->unk8 << 6) + 0x80095310);
    func_80034020(arg0->unk4, 0, 1);
    sp48 = __osSiRawStartDma(0, 0x80095660);
    func_80034020(arg0->unk4, 0, 1);
    sp44 = (void *)0x80095660;
    if (arg0->unk8 != 0) {
        sp4C = 0;
        if (arg0->unk8 > 0) {
loop_4:
            temp_t5 = sp4C + 1;
            sp4C = temp_t5;
            sp44 = sp44 + 1;
            if (temp_t5 < arg0->unk8) {
                goto loop_4;
            }
        }
    }
    phi_t0 = sp44;
    phi_t8 = &sp1C;
loop_6:
    temp_t0 = phi_t0 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (?32) (unaligned s32) *phi_t0;
    temp_t8->unk-8 = (?32) (unaligned s32) temp_t0->unk-8;
    temp_t8->unk-4 = (?32) (unaligned s32) temp_t0->unk-4;
    phi_t0 = temp_t0;
    phi_t8 = temp_t8;
    if (temp_t0 != (sp44 + 0x24)) {
        goto loop_6;
    }
    temp_t8->unk0 = (?32) (unaligned s32) temp_t0->unk0;
    temp_t4 = (s32) (sp1E & 0xC0) >> 4;
    sp48 = temp_t4;
    if (temp_t4 == 0) {
        if (__osContDataCrc(0x80095430) != sp42) {
            sp48 = 4;
        }
    }
    __osSiRelAccess();
    return sp48;
}

void _MakeMotorData(s32 arg0, u16 arg1, void *arg2, void *arg3) {
    void *sp44;
    s8 sp42;
    s16 sp20;
    s8 sp1F;
    s8 sp1E;
    s8 sp1D;
    s8 sp1C;
    s32 sp18;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_v0;
    s8 *temp_t9;
    void *temp_t3;
    void *temp_t7;
    s8 *phi_t9;
    void *phi_t7;

    sp18 = 0;
    sp44 = arg3;
loop_1:
    *(arg3 + (sp18 * 4)) = 0;
    temp_t2 = sp18 + 1;
    sp18 = temp_t2;
    if (temp_t2 < 0xF) {
        goto loop_1;
    }
    arg3->unk3C = 1;
    sp1C = (u8)0xFF;
    sp1D = (u8)0x23;
    sp1E = (u8)1;
    sp1F = (u8)3;
    temp_v0 = __osContAddressCrc(arg1);
    sp42 = (u8)0xFF;
    sp20 = temp_v0 | (arg1 << 5);
    sp18 = 0;
loop_3:
    (sp + sp18)->unk22 = (u8) *arg2;
    temp_t0 = sp18 + 1;
    temp_at = temp_t0 < 0x20;
    sp18 = temp_t0;
    arg2 = arg2 + 1;
    if (temp_at != 0) {
        goto loop_3;
    }
    if (arg0 != 0) {
        sp18 = 0;
        if (arg0 > 0) {
loop_6:
            *sp44 = (u8)0;
            temp_t6 = sp18 + 1;
            temp_at_2 = temp_t6 < arg0;
            sp18 = temp_t6;
            sp44 = sp44 + 1;
            if (temp_at_2 != 0) {
                goto loop_6;
            }
        }
    }
    phi_t9 = &sp1C;
    phi_t7 = sp44;
loop_8:
    temp_t9 = phi_t9 + 0xC;
    temp_t7 = phi_t7 + 0xC;
    temp_t7->unk-C = (unaligned s32) *phi_t9;
    temp_t7->unk-8 = (unaligned s32) temp_t9->unk-8;
    temp_t7->unk-4 = (unaligned s32) temp_t9->unk-4;
    phi_t9 = temp_t9;
    phi_t7 = temp_t7;
    if (temp_t9 != (&sp1C + 0x24)) {
        goto loop_8;
    }
    temp_t7->unk0 = (unaligned s32) temp_t9->unk0;
    temp_t3 = sp44 + 0x28;
    sp44 = temp_t3;
    *temp_t3 = (u8)0xFE;
}

s32 func_8003A4BC(s32 arg0, void *arg1, s32 arg2) {
    s32 sp44;
    s32 sp40;
    ? sp20;
    s32 temp_t4;
    s32 temp_t7;
    s32 temp_t9;

    arg1->unk4 = arg0;
    arg1->unk8 = arg2;
    arg1->unk0 = 0;
    arg1->unk65 = (u8)0x80;
    sp44 = 0;
loop_1:
    (sp + sp44)->unk20 = (u8)0xFE;
    temp_t7 = sp44 + 1;
    sp44 = temp_t7;
    if (temp_t7 < 0x20) {
        goto loop_1;
    }
    sp40 = __osContRamWrite(arg0, arg2, 0x400, &sp20, 0);
    if (sp40 == 2) {
        sp40 = __osContRamWrite(arg0, arg2, 0x400, &sp20, 0);
    }
    if (sp40 != 0) {
        return sp40;
    }
    sp40 = __osContRamRead(arg0, arg2, 0x400, &sp20);
    if (sp40 == 2) {
        sp40 = 4;
    }
    if (sp40 != 0) {
        return sp40;
    }
    if (sp20.unk1F == 0xFE) {
        return 0xB;
    }
    sp44 = 0;
loop_13:
    (sp + sp44)->unk20 = (u8)0x80;
    temp_t9 = sp44 + 1;
    sp44 = temp_t9;
    if (temp_t9 < 0x20) {
        goto loop_13;
    }
    sp40 = __osContRamWrite(arg0, arg2, 0x400, &sp20, 0);
    if (sp40 == 2) {
        sp40 = __osContRamWrite(arg0, arg2, 0x400, &sp20, 0);
    }
    if (sp40 != 0) {
        return sp40;
    }
    sp40 = __osContRamRead(arg0, arg2, 0x400, &sp20);
    if (sp40 == 2) {
        sp40 = 4;
    }
    if (sp40 != 0) {
        return sp40;
    }
    if (sp20.unk1F != 0x80) {
        return 0xB;
    }
    if (((arg2 * 4) + 0x80070000)->unk9B0 == 0) {
        sp44 = 0;
loop_26:
        (sp44 + 0x80090000)->unk5430 = (u8)1;
        (sp44 + 0x80090000)->unk5410 = (u8)0;
        temp_t4 = sp44 + 1;
        sp44 = temp_t4;
        if (temp_t4 < 0x20) {
            goto loop_26;
        }
        _MakeMotorData(arg2, 0x600, 0x80095430, (arg2 << 6) + 0x80095310);
        _MakeMotorData(arg2, 0x600, 0x80095410, (arg2 << 6) + 0x80095210);
        ((arg2 * 4) + 0x80070000)->unk9B0 = 1;
    }
    return 0;
}
