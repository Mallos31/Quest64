s32 func_8003BA20(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp15C;
    s32 sp158;
    s32 sp154;
    ? sp54;
    s16 sp3E;
    s8 sp3C;
    u8 sp3A;
    s16 sp38;
    ?32 sp34;
    s16 sp32;
    u16 sp30;
    u8 sp2F;
    u8 sp2E;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0;

    sp32 = (u16)0;
    if (arg1 == 0) {
block_2:
        return 5;
    }
    if (arg2 == 0) {
        goto block_2;
    }
    if ((arg0->unk0 & 1) == 0) {
        return 5;
    }
    if (func_800453C0(arg0) == 2) {
        return 2;
    }
    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp154 = func_800457DC(arg0);
        if (sp154 != 0) {
            return sp154;
        }
    }
    sp154 = func_80046FC0(arg0, arg1, arg2, arg3, arg4, &sp15C);
    if (sp154 != 0) {
        return sp154;
    }
    if (sp15C == -1) {
        return 5;
    }
    sp154 = func_80045850(arg0->unk4, arg0->unk8, arg0->unk5C + sp15C, &sp34);
    if (sp154 != 0) {
        return sp154;
    }
    sp2F = sp3B;
    sp2E = sp3A;
    if ((s32) sp3A < (s32) arg0->unk64) {
loop_17:
        sp154 = func_800454BC(arg0, &sp54, 0, sp2E);
        if (sp154 != 0) {
            return sp154;
        }
        sp154 = func_8003BD00(arg0, &sp54, sp2F, &sp32, (?32) sp2E, &sp30, 1);
        if (sp154 != 0) {
            return sp154;
        }
        sp154 = func_800454BC(arg0, &sp54, 1, sp2E);
        if (sp154 != 0) {
            return sp154;
        }
        if (sp30 != 1) {
            sp2E = (u8) sp30;
            sp2F = sp31;
            if ((s32) sp2E < (s32) arg0->unk64) {
                goto loop_17;
            }
        }
    }
    if ((s32) sp2E >= (s32) arg0->unk64) {
        return 3;
    }
    sp34 = 0;
    sp38 = (u16)0;
    sp3A = (u16)0;
    sp3E = (u16)0;
    sp158 = 0;
loop_28:
    (sp + sp158)->unk44 = (u8)0;
    temp_t3 = sp158 + 1;
    sp158 = temp_t3;
    if (temp_t3 < 0x10) {
        goto loop_28;
    }
    sp158 = 0;
loop_30:
    (sp + sp158)->unk40 = (u8)0;
    temp_t9 = sp158 + 1;
    sp158 = temp_t9;
    if (temp_t9 < 4) {
        goto loop_30;
    }
    sp3C = (u8)0;
    temp_v0 = func_80046B80(arg0->unk4, arg0->unk8, arg0->unk5C + sp15C, &sp34, 0);
    sp154 = temp_v0;
    return temp_v0;
}

s32 func_8003BD00(void *arg0, s32 arg1, u8 arg2, s32 arg3, u8 arg4, void *arg5, s32 arg6) {
    u16 sp24;
    u16 sp20;
    s32 sp1C;
    s32 sp18;

    sp1C = 0;
    sp24 = (u16) *(arg1 + (arg2 * 2));
    if (sp24 != 1) {
        if ((s32) (u8) sp24 > 0) {
            sp18 = 1;
        } else {
            sp18 = arg0->unk60;
        }
    } else {
        if ((s32) arg4 > 0) {
            sp18 = 1;
        } else {
            sp18 = arg0->unk60;
        }
    }
    if ((s32) sp25 < sp18) {
        if (sp24 != 1) {
            return 3;
        }
    }
    *arg5 = (u16) sp24;
    if (arg6 == 1) {
        *(arg1 + (arg2 * 2)) = (u16)3;
    }
    sp1C = func_8003BF38(arg0, arg2, arg3, arg4);
    if (sp1C != 0) {
        return sp1C;
    }
    if (sp24 == 1) {
        return 0;
    }
    if ((s32) sp24 >= arg0->unk60) {
loop_17:
        sp20 = sp24;
        sp24 = (u16) *(arg1 + (sp25 * 2));
        *(arg1 + (sp21 * 2)) = (u16)3;
        sp1C = func_8003BF38(arg0, sp21, arg3, arg4);
        if (sp1C != 0) {
            return sp1C;
        }
        if ((u8) sp24 == arg4) {
            if ((s32) sp24 >= arg0->unk60) {
                goto loop_17;
            }
        }
    }
    if ((s32) sp24 >= arg0->unk60) {
        *(arg1 + (sp25 * 2)) = (u16)3;
    }
    *arg5 = (u16) sp24;
    return 0;
}

s32 func_8003BF38(void *arg0, u8 arg1, void *arg2, u8 arg3) {
    s32 sp3C;
    s32 sp38;
    ? sp18;
    s32 temp_t9;

    sp38 = 0;
    arg0->unk65 = arg3;
    sp38 = func_800457DC(arg0);
    if (sp38 != 0) {
        return sp38;
    }
    sp3C = 0;
loop_3:
    sp38 = func_80045850(arg0->unk4, arg0->unk8, (arg1 * 8) + sp3C, &sp18);
    if (sp38 != 0) {
        arg0->unk65 = (u8)0;
        func_800457DC(arg0);
    } else {
        *arg2 = (u16) (func_80044AF0(&sp18, 0x20) + *arg2);
        temp_t9 = sp3C + 1;
        sp3C = temp_t9;
        if (temp_t9 < 8) {
            goto loop_3;
        }
        arg0->unk65 = (u8)0;
        sp38 = func_800457DC(arg0);
    }
    return sp38;
}
