s32 func_80046FC0(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4, void *arg5) {
    s32 sp44;
    s32 sp40;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t9;

    sp1C = 0;
    if (__osCheckId(arg0) == 2) {
        return 2;
    }
    sp44 = 0;
    if (arg0->unk50 > 0) {
loop_3:
        sp1C = __osContRamRead(arg0->unk4, arg0->unk8, arg0->unk5C + sp44, &sp20);
        if (sp1C != 0) {
            return sp1C;
        }
        if (sp24 == arg1) {
            if (sp20 == arg2) {
                sp18 = 0;
                if (arg3 != 0) {
                    sp40 = 0;
loop_9:
                    if (*(arg3 + sp40) != (sp + sp40)->unk30) {
                        sp18 = 1;
                    } else {
                        temp_t4 = sp40 + 1;
                        sp40 = temp_t4;
                        if (temp_t4 < 0x10) {
                            goto loop_9;
                        }
                    }
                }
                if (arg4 != 0) {
                    if (sp18 == 0) {
                        sp40 = 0;
loop_15:
                        if (*(arg4 + sp40) != (sp + sp40)->unk2C) {
                            sp18 = 1;
                        } else {
                            temp_t4_2 = sp40 + 1;
                            sp40 = temp_t4_2;
                            if (temp_t4_2 < 4) {
                                goto loop_15;
                            }
                        }
                    }
                }
                if (sp18 == 0) {
                    *arg5 = sp44;
                    return sp1C;
                }
            }
        }
        temp_t9 = sp44 + 1;
        sp44 = temp_t9;
        if (temp_t9 < arg0->unk50) {
            goto loop_3;
        }
    }
    *arg5 = -1;
    return 5;
}
