Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

s32 func_8003B270(void *arg0, u16 arg1, s32 arg2, void *arg3, void *arg4, s32 arg5, void *arg6) {
    s32 sp274;
    s32 sp270;
    s32 sp26C;
    s32 sp268;
    s32 sp264;
    s32 sp260;
    s32 sp25C;
    ? sp15C;
    ? sp5C;
    s16 sp46;
    u16 sp42;
    u16 sp40;
    s32 sp3C;
    u8 sp3B;
    u8 sp3A;
    s32 sp34;
    s32 sp30;
    s8 sp2D;
    u8 sp2C;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t7;
    s32 temp_t9;
    u8 temp_t9_2;
    s32 phi_t0;

    sp268 = 0;
    sp260 = 0;
    sp3A = (u8)0U;
    sp34 = 0;
    if ((arg1 == 0) || (arg2 == 0)) {

    } else {
        temp_t9 = arg5 + 0xFF;
        phi_t0 = temp_t9 >> 8;
        if (temp_t9 < 0) {
            phi_t0 = (s32) (temp_t9 + 0xFF) >> 8;
        }
        sp25C = phi_t0;
        if ((arg0->unk0 & 1) == 0) {

        } else {
            if (__osCheckId(arg0) == 2) {
                return 2;
            }
            sp260 = func_80046FC0(arg0, arg1, arg2, arg3, arg4, arg6);
            if (sp260 != 0) {
                if (sp260 != 5) {
                    return sp260;
                }
            }
            if (*arg6 != -1) {
                return 9;
            }
            sp260 = func_8003B120(arg0, &sp30);
            if (sp30 < arg5) {
                return 7;
            }
            if (sp25C != 0) {
                sp260 = func_80046FC0(arg0, 0, 0, 0, 0, arg6);
                if (sp260 == 0) {
block_20:
                    if (*arg6 != -1) {
                        sp3B = (u8)0U;
                        if ((s32) arg0->unk64 <= 0) {
block_38:
                            if (sp25C <= 0) {
                                if (sp274 != -1) {
                                    (sp + (sp268 * 2))->unk5C = sp3B;
                                    (sp + (sp268 * 2))->unk5D = (s8) sp274;
                                    sp260 = __osPfsRWInode(arg0, &sp5C, 1, sp3A);
                                    if (sp260 == 0) {
                                        sp46 = (u16)0;
                                        sp264 = 0;
                                        sp42 = (u16) sp2C;
                                        sp40 = arg1;
                                        sp3C = arg2;
loop_44:
                                        (sp + sp264)->unk4C = (u8) *arg3;
                                        temp_t3 = sp264 + 1;
                                        temp_at = temp_t3 < 0x10;
                                        sp264 = temp_t3;
                                        arg3 = arg3 + 1;
                                        if (temp_at != 0) {
                                            goto loop_44;
                                        }
                                        sp264 = 0;
loop_46:
                                        (sp + sp264)->unk48 = (u8) *arg4;
                                        temp_t2 = sp264 + 1;
                                        temp_at_2 = temp_t2 < 4;
                                        sp264 = temp_t2;
                                        arg4 = arg4 + 1;
                                        if (temp_at_2 != 0) {
                                            goto loop_46;
                                        }
                                        sp260 = __osContRamWrite(arg0->unk4, arg0->unk8, *arg6 + arg0->unk5C, &sp3C, 0);
                                        if (sp260 == 0) {
                                            return sp260;
                                        }
                                        return sp260;
                                    }
                                    return sp260;
                                }
                            }
                            return 3;
                        }
loop_23:
                        sp260 = __osPfsRWInode(arg0, &sp15C, 0, sp3B);
                        if (sp260 == 0) {
                            sp260 = __osPfsDeclearPage(arg0, &sp15C, sp25C, &sp274, (?32) sp3B, &sp270, &sp26C);
                            if (sp260 == 0) {
                                if (sp274 != -1) {
                                    if (sp34 == 0) {
                                        sp2D = (s8) sp274;
                                        sp2C = sp3B;
                                    } else {
                                        (sp + (sp268 * 2))->unk5C = sp3B;
                                        (sp + (sp268 * 2))->unk5D = (s8) sp274;
                                        sp260 = __osPfsRWInode(arg0, &sp5C, 1, sp3A);
                                        if (sp260 != 0) {
                                            return sp260;
                                        }
                                    }
                                    sp264 = 0;
loop_33:
                                    temp_t7 = sp264 * 2;
                                    (sp + temp_t7)->unk5C = (u16) (sp + temp_t7)->unk15C;
                                    temp_t1 = sp264 + 1;
                                    sp264 = temp_t1;
                                    if (temp_t1 < 0x80) {
                                        goto loop_33;
                                    }
                                    sp34 = sp34 + 1;
                                    sp268 = sp26C;
                                    sp3A = sp3B;
                                    if (sp270 < sp25C) {
                                        sp25C = sp25C - sp270;
block_37:
                                        temp_t9_2 = sp3B + 1;
                                        sp3B = temp_t9_2;
                                        if ((temp_t9_2 & 0xFF) < (s32) arg0->unk64) {
                                            goto loop_23;
                                        }
                                    } else {
                                        sp25C = 0;
                                    }
                                } else {
                                    goto block_37;
                                }
                                goto block_38;
                            }
                            return sp260;
                        }
                        return sp260;
                    }
                    return 8;
                }
                if (sp260 == 5) {
                    goto block_20;
                }
                return sp260;
            }
        }
    }
    return 5;
}

s32 __osPfsDeclearPage(void *arg0, s32 arg1, s32 arg2, void *arg3, u8 arg4, void *arg5, void *arg6) {
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    ? sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 temp_t4;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;

    sp1C = 0;
    if ((s32) arg4 > 0) {
        sp18 = 1;
    } else {
        sp18 = arg0->unk60;
    }
    sp4C = sp18;
    if (sp18 < 0x80) {
loop_4:
        if (*(arg1 + (sp4C * 2)) != 3) {
            temp_t7 = sp4C + 1;
            sp4C = temp_t7;
            if (temp_t7 < 0x80) {
                goto loop_4;
            }
        }
    }
    if (sp4C == 0x80) {
        *arg3 = -1;
    } else {
        sp20 = 0;
loop_9:
        (sp + sp20)->unk24 = (u8)0;
        temp_t4 = sp20 + 1;
        sp20 = temp_t4;
        if (temp_t4 < 0x20) {
            goto loop_9;
        }
        sp48 = sp4C;
        *arg5 = 1;
        temp_t8 = sp4C;
        temp_t9 = temp_t8 + 1;
        sp4C = temp_t9;
        sp44 = temp_t8;
        if (*arg5 < arg2) {
            if (temp_t9 < 0x80) {
loop_12:
                if (*(arg1 + (sp4C * 2)) == 3) {
                    *(arg1 + (sp44 * 2)) = arg4;
                    (arg1 + (sp44 * 2))->unk1 = (s8) sp4C;
                    sp1C = __osClearPage(arg0, sp44, &sp24, arg4);
                    if (sp1C != 0) {
                        return sp1C;
                    }
                    sp44 = sp4C;
                    *arg5 = (s32) (*arg5 + 1);
                }
                sp4C = sp4C + 1;
                if (*arg5 < arg2) {
                    if (sp4C < 0x80) {
                        goto loop_12;
                    }
                }
            }
        }
        *arg3 = sp48;
        if ((sp4C == 0x80) && (*arg5 < arg2)) {
            *arg6 = sp44;
        } else {
            *(arg1 + (sp44 * 2)) = (u16)1;
            sp1C = __osClearPage(arg0, sp44, &sp24, arg4);
            *arg6 = 0;
        }
    }
    return sp1C;
}

s32 __osClearPage(void *arg0, s32 arg1, s32 arg2, u8 arg3) {
    s32 sp24;
    s32 sp20;
    s32 temp_t5;
    s32 temp_v0;

    sp20 = 0;
    arg0->unk65 = arg3;
    sp20 = __osPfsSelectBank(arg0);
    if (sp20 != 0) {
        return sp20;
    }
    sp24 = 0;
loop_3:
    sp20 = __osContRamWrite(arg0->unk4, arg0->unk8, (arg1 * 8) + sp24, arg2, 0);
    if (sp20 == 0) {
        temp_t5 = sp24 + 1;
        sp24 = temp_t5;
        if (temp_t5 < 8) {
            goto loop_3;
        }
    }
    arg0->unk65 = (u8)0;
    temp_v0 = __osPfsSelectBank(arg0);
    sp20 = temp_v0;
    return temp_v0;
}
