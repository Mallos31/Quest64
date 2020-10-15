s32 func_80045850(s32 arg0, s32 arg1, u16 arg2, void *arg3) {
    s32 sp5C;
    s32 sp58;
    void *sp54;
    ? sp2C;
    s32 sp28;
    u8 sp27;
    ? *temp_t6;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t4;
    void *temp_t7;
    void *phi_t7;
    ? *phi_t6;

    sp5C = 0;
    sp54 = (void *)0x80095660;
    sp28 = 2;
    func_80044840();
    *(void *)0x80095490 = (u8)2;
    func_80045A6C(arg1, arg2);
    sp5C = func_80046950(1, 0x80095660);
    func_80034020(arg0, 0, 1);
loop_1:
    sp5C = func_80046950(0, 0x80095660);
    func_80034020(arg0, 0, 1);
    sp54 = (void *)0x80095660;
    if (arg1 != 0) {
        sp58 = 0;
        if (arg1 > 0) {
loop_3:
            temp_t4 = sp58 + 1;
            temp_at = temp_t4 < arg1;
            sp58 = temp_t4;
            sp54 = sp54 + 1;
            if (temp_at != 0) {
                goto loop_3;
            }
        }
    }
    phi_t7 = sp54;
    phi_t6 = &sp2C;
loop_5:
    temp_t7 = phi_t7 + 0xC;
    temp_t6 = phi_t6 + 0xC;
    temp_t6->unk-C = (?32) (unaligned s32) *phi_t7;
    temp_t6->unk-8 = (?32) (unaligned s32) temp_t7->unk-8;
    temp_t6->unk-4 = (?32) (unaligned s32) temp_t7->unk-4;
    phi_t7 = temp_t7;
    phi_t6 = temp_t6;
    if (temp_t7 != (sp54 + 0x24)) {
        goto loop_5;
    }
    temp_t6->unk0 = (?32) (unaligned s32) temp_t7->unk0;
    temp_t2 = (s32) (sp2E & 0xC0) >> 4;
    sp5C = temp_t2;
    if (temp_t2 == 0) {
        sp27 = func_80046AB0(&sp2C + 6);
        if (sp27 != sp52) {
            sp5C = func_800448B0(arg0, arg1);
            if (sp5C != 0) {
                func_80044884();
            } else {
                sp5C = 4;
block_15:
                if (sp5C == 4) {
                    sp28 = sp28 - 1;
                    if (((sp28 < 0) ^ 1) != 0) {
                        goto loop_1;
                    }
                }
                func_80044884();
            }
        } else {
            sp58 = 0;
loop_12:
            *arg3 = (u8) (sp + sp58)->unk32;
            temp_t3 = sp58 + 1;
            temp_at_2 = temp_t3 < 0x20;
            sp58 = temp_t3;
            arg3 = arg3 + 1;
            if (temp_at_2 != 0) {
                goto loop_12;
            }
            goto block_15;
        }
    } else {
        sp5C = 1;
        goto block_15;
    }
    return sp5C;
}

void func_80045A6C(s32 arg0, u16 arg1) {
    void *sp44;
    s8 sp42;
    s16 sp20;
    s8 sp1F;
    s8 sp1E;
    s8 sp1D;
    s8 sp1C;
    s32 sp18;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_v0;
    s8 *temp_t9;
    void *temp_t3;
    void *temp_t8;
    s8 *phi_t9;
    void *phi_t8;

    sp44 = (void *)0x80095660;
    *(void *)0x8009569C = 1;
    sp1C = (u8)0xFF;
    sp1D = (u8)3;
    sp1E = (u8)0x21;
    sp1F = (u8)2;
    temp_v0 = func_80046A00(arg1);
    sp42 = (u8)0xFF;
    sp20 = temp_v0 | (arg1 << 5);
    sp18 = 0;
loop_1:
    (sp + sp18)->unk22 = (u8)0xFF;
    temp_t0 = sp18 + 1;
    sp18 = temp_t0;
    if (temp_t0 < 0x20) {
        goto loop_1;
    }
    if (arg0 != 0) {
        sp18 = 0;
        if (arg0 > 0) {
loop_4:
            *sp44 = (u8)0;
            temp_t6 = sp18 + 1;
            temp_at = temp_t6 < arg0;
            sp18 = temp_t6;
            sp44 = sp44 + 1;
            if (temp_at != 0) {
                goto loop_4;
            }
        }
    }
    phi_t9 = &sp1C;
    phi_t8 = sp44;
loop_6:
    temp_t9 = phi_t9 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (unaligned s32) *phi_t9;
    temp_t8->unk-8 = (unaligned s32) temp_t9->unk-8;
    temp_t8->unk-4 = (unaligned s32) temp_t9->unk-4;
    phi_t9 = temp_t9;
    phi_t8 = temp_t8;
    if (temp_t9 != (&sp1C + 0x24)) {
        goto loop_6;
    }
    temp_t8->unk0 = (unaligned s32) temp_t9->unk0;
    temp_t3 = sp44 + 0x28;
    sp44 = temp_t3;
    *temp_t3 = (u8)0xFE;
}
