s32 func_8003C030(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s32 sp1C;
    u8 temp_t7;
    u8 temp_t9;

    temp_t9 = arg3->unk0;
    if (*arg1 != temp_t9) {
        *arg1 = temp_t9;
        sp1C = func_800454BC(arg0, arg2, 0, *arg1);
        if (sp1C != 0) {
            return sp1C;
        }
    }
    arg3->unk0 = (u16) *(arg2 + (arg3->unk1 * 2));
    if ((s32) arg3->unk0 < arg0->unk60) {
block_7:
        if (arg3->unk0 != 1) {
            return 3;
        }
        return 5;
    }
    if ((s32) (u8) arg3->unk0 >= (s32) arg0->unk64) {
        goto block_7;
    }
    temp_t7 = arg3->unk1;
    if ((s32) temp_t7 <= 0) {
        goto block_7;
    }
    if ((s32) temp_t7 >= 0x80) {
        goto block_7;
    }
    return 0;
}

s32 func_8003C12C(void *arg0, s32 arg1, u8 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 sp154;
    u8 sp13C;
    ? sp134;
    ? sp34;
    u16 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s8 sp23;
    u16 sp20;
    u16 temp_t3;
    u8 temp_t9;
    s32 phi_t4;
    s32 phi_t3;
    s32 phi_v0;

    if (arg1 >= arg0->unk50) {
block_2:
        return 5;
    }
    if (arg1 < 0) {
        goto block_2;
    }
    if (arg4 <= 0) {
block_5:
        return 5;
    }
    if ((arg4 & 0x1F) != 0) {
        goto block_5;
    }
    if (arg3 < 0) {
block_8:
        return 5;
    }
    if ((arg3 & 0x1F) != 0) {
        goto block_8;
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
    sp154 = func_80045850(arg0->unk4, arg0->unk8, arg0->unk5C + arg1, &sp134);
    if (sp154 != 0) {
        return sp154;
    }
    if ((s32) sp13A < arg0->unk60) {
block_22:
        if (sp13A != 1) {
            return 3;
        }
        return 5;
    }
    if ((s32) (u8) sp13A >= (s32) arg0->unk64) {
        goto block_22;
    }
    if ((s32) sp13B <= 0) {
        goto block_22;
    }
    if ((s32) sp13B >= 0x80) {
        goto block_22;
    }
    if (arg2 == 0) {
        if ((sp13C & 2) == 0) {
            return 6;
        }
    }
    sp23 = (u8)0xFF;
    phi_t4 = arg3 >> 5;
    if (arg3 < 0) {
        phi_t4 = (s32) (arg3 + 0x1F) >> 5;
    }
    sp2C = phi_t4;
    sp30 = sp13A;
    if (sp2C >= 8) {
loop_31:
        sp154 = func_8003C030(arg0, &sp23, &sp34, &sp30);
        if (sp154 != 0) {
            return sp154;
        }
        sp2C = sp2C - 8;
        if (sp2C >= 8) {
            goto loop_31;
        }
    }
    phi_t3 = arg4 >> 5;
    if (arg4 < 0) {
        phi_t3 = (s32) (arg4 + 0x1F) >> 5;
    }
    sp28 = phi_t3;
    sp24 = arg5;
    if (phi_t3 > 0) {
loop_37:
        if (sp2C == 8) {
            sp154 = func_8003C030(arg0, &sp23, &sp34, &sp30);
            if (sp154 != 0) {
                return sp154;
            }
            sp2C = 0;
        }
        temp_t9 = (u8) sp30;
        if (arg0->unk65 != temp_t9) {
            arg0->unk65 = temp_t9;
            sp154 = func_800457DC(arg0);
            if (sp154 != 0) {
                return sp154;
            }
        }
        temp_t3 = (sp31 * 8) + sp2C;
        sp20 = temp_t3;
        if (arg2 == 0) {
            phi_v0 = func_80045850(arg0->unk4, arg0->unk8, temp_t3 & 0xFFFF, sp24);
        } else {
            phi_v0 = func_80046B80(arg0->unk4, arg0->unk8, sp20, sp24, 0);
        }
        sp154 = phi_v0;
        if (sp154 != 0) {
            return sp154;
        }
        sp28 = sp28 - 1;
        sp24 = sp24 + 0x20;
        sp2C = sp2C + 1;
        if (sp28 > 0) {
            goto loop_37;
        }
    }
    if (arg2 == 1) {
        if ((sp13C & 2) == 0) {
            sp13C = sp13C | 2;
            arg0->unk65 = (u8)0;
            sp154 = func_800457DC(arg0);
            if (sp154 != 0) {
                return sp154;
            }
            sp154 = func_80046B80(arg0->unk4, arg0->unk8, arg0->unk5C + arg1, &sp134, 0);
            if (sp154 != 0) {
                return sp154;
            }
        }
    }
    return 0;
}
