s32 func_80031CF0(s32 arg0, void *arg1) {
    s32 temp_t6;
    s32 phi_v0;
    s32 phi_return;

    temp_t6 = arg0 & 0xFFFF;
    phi_v0 = temp_t6;
    phi_return = temp_t6;
    if (temp_t6 >= 0x3E8) {
        phi_v0 = 0x3E7;
        phi_return = 0x3E7;
    }
    arg1->unk0 = (s8) (((phi_v0 / 0x64) + ((phi_v0 < 0x64) ^ 1)) + 0xF);
    arg1->unk1 = (s8) ((((s32) (phi_v0 % 0x64) / 0xA) + ((phi_v0 < 0xA) ^ 1)) + 0xF);
    arg1->unk2 = (s8) ((phi_v0 % 0xA) + 0x10);
    return phi_return;
}

void func_80031DD4(s32 arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_v0;
    void *temp_a0;
    s32 phi_a2;
    void *phi_a1;
    s32 phi_v0;
    void *phi_a0;
    s32 phi_a3;
    s32 phi_t5;
    s32 phi_t9;

    if (arg0 == 1) {
        *(void *)0x80092D30 = (void *) (*(void *)0x80092D30 + 6);
        return;
    }
    if (arg0 == 0xA) {
        *(void *)0x80092D36 = (s16) (*(void *)0x80092D36 + 0xD);
        func_80031F1C(*(void *)0x80092D34, *(void *)0x80092D36, arg0);
        return;
    }
    if ((arg0 < 0xF) || (phi_a2 = arg0, ((*(void *)0x80092CC0 < arg0) != 0))) {
        phi_a2 = 0x3B;
    } else {

    }
    temp_a2 = phi_a2 - 0xF;
    temp_lo = (temp_a2 & 0xF8) * 0xC;
    temp_t8 = (temp_a2 & 7) * 8;
    phi_t5 = temp_lo >> 1;
    if (temp_lo < 0) {
        phi_t5 = (s32) (temp_lo + 1) >> 1;
    }
    phi_t9 = temp_t8 >> 1;
    if (temp_t8 < 0) {
        phi_t9 = (s32) (temp_t8 + 1) >> 1;
    }
    phi_a1 = ((phi_t5 * 8) + phi_t9) + 0x8006E4C0;
    phi_a3 = 0;
    phi_a0 = *(void *)0x80092D30;
loop_12:
    phi_v0 = 0x1C;
loop_13:
    temp_t7 = ((u32) *phi_a1 >> phi_v0) & 0xF;
    temp_v0 = phi_v0 - 4;
    if (temp_t7 != 0) {
        *phi_a0 = (u16) *(*(void *)0x8006F3F8 + (temp_t7 * 2));
    }
    temp_a0 = phi_a0 + 2;
    phi_v0 = temp_v0;
    phi_a0 = temp_a0;
    if (temp_v0 >= 0) {
        goto loop_13;
    }
    temp_a3 = phi_a3 + 1;
    phi_a1 = phi_a1 + 0x20;
    phi_a3 = temp_a3;
    phi_a0 = temp_a0 + 0x270;
    if (temp_a3 != 0xC) {
        goto loop_12;
    }
    *(void *)0x80092D30 = (void *) (*(void *)0x80092D30 + 0x12);
}

void func_80031F1C(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a1;

    temp_a1 = (s32) (arg1 << 0x10) >> 0x10;
    temp_a0 = (s32) (arg0 << 0x10) >> 0x10;
    *(void *)0x80092D34 = (s16) temp_a0;
    *(void *)0x80092D36 = (s16) temp_a1;
    *(void *)0x80092D30 = (s32) (((temp_a0 + (temp_a1 * 0x140)) * 2) + *(void *)0x80092D20);
}

void func_80031F74(void *arg0) {
    u8 temp_s0;
    u8 temp_s0_2;
    void *temp_s1;
    u8 phi_s0;
    void *phi_s1;

    temp_s0 = *arg0;
    phi_s0 = temp_s0;
    phi_s1 = arg0;
    if (temp_s0 != 0) {
loop_1:
        temp_s1 = phi_s1 + 1;
        func_80031DD4(phi_s0);
        temp_s0_2 = *temp_s1;
        phi_s0 = temp_s0_2;
        phi_s1 = temp_s1;
        if (temp_s0_2 != 0) {
            goto loop_1;
        }
    }
}

u8 func_80031FBC(void *arg0, u8 arg1) {
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;
    void *temp_s1;
    u8 phi_v0;
    u8 phi_s0;
    void *phi_s1;
    u8 phi_return;

    temp_v0 = arg1;
    phi_return = temp_v0;
    if (arg1 != 0) {
        temp_v0_2 = *arg0;
        phi_v0 = temp_v0_2;
        phi_s0 = arg1 - 1;
        phi_s1 = arg0;
        phi_return = temp_v0_2;
        if (temp_v0_2 != 0) {
loop_2:
            temp_s1 = phi_s1 + 1;
            func_80031DD4(phi_v0);
            phi_return = phi_s0;
            if (phi_s0 != 0) {
                temp_v0_3 = *temp_s1;
                phi_v0 = temp_v0_3;
                phi_s0 = phi_s0 - 1;
                phi_s1 = temp_s1;
                phi_return = temp_v0_3;
                if (temp_v0_3 != 0) {
                    goto loop_2;
                }
            }
        }
    }
    return phi_return;
}

void func_80032020(s32 arg0) {
    *(void *)0x8006F3F8 = (s32) ((arg0 * 8) + 0x8006F3C0);
}

void *func_80032040(s32 arg0, s32 arg1, s32 arg2, s32 arg3, void *arg4, s32 arg5, u8 arg6) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_t3;
    s32 temp_t6;
    s32 temp_t7;
    u8 temp_t3_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a1;
    void *phi_v1_2;
    void *phi_v0_2;
    s32 phi_a1_2;
    s32 phi_a0;
    void *phi_v1_3;
    void *phi_v0_3;
    void *phi_v0_4;
    s32 phi_a1_3;
    s32 phi_a0_2;
    void *phi_v0_5;
    void *phi_return;
    void *phi_v1_4;
    void *phi_v0_6;
    void *phi_v1_5;
    void *phi_v0_7;
    void *phi_v0_8;
    void *phi_v0_9;

    temp_a3 = (s32) (arg3 << 0x10) >> 0x10;
    temp_a2 = (s32) (arg2 << 0x10) >> 0x10;
    temp_v0_2 = ((((s32) (arg0 << 0x10) >> 0x10) + (((s32) (arg1 << 0x10) >> 0x10) * 0x140)) * 2) + *(void *)0x80092D20;
    if (arg6 == 5) {
        phi_return = temp_v0_2;
        if (temp_a3 > 0) {
            phi_a0 = 0;
            phi_v1_4 = arg4;
            phi_v0_6 = temp_v0_2;
loop_3:
            phi_v0_5 = phi_v0_6;
            if (temp_a2 > 0) {
                temp_t3 = temp_a2 & 3;
                phi_v1 = phi_v1_4;
                phi_v0 = phi_v0_6;
                phi_a1 = 0;
                phi_v1_2 = phi_v1_4;
                phi_v0_2 = phi_v0_6;
                phi_a1_2 = 0;
                if (((temp_t3 == 0) || (temp_a1 = phi_a1 + 1, temp_v0_3 = phi_v0 + 2, temp_v1 = phi_v1 + 1, temp_v0_3->unk-2 = (u16) *(arg5 + (*phi_v1 * 2)), phi_v1 = temp_v1, phi_v0 = temp_v0_3, phi_a1 = temp_a1, (temp_t3 != temp_a1))) || (phi_v1_2 = temp_v1, phi_v0_2 = temp_v0_3, phi_a1_2 = temp_a1, phi_v0_5 = temp_v0_3, phi_v1_4 = temp_v1, (temp_a1 != temp_a2))) {
loop_7:
                    temp_a1_2 = phi_a1_2 + 4;
                    temp_v0_4 = phi_v0_2 + 8;
                    temp_v1_2 = phi_v1_2 + 4;
                    temp_v0_4->unk-8 = (u16) *(arg5 + (*phi_v1_2 * 2));
                    temp_v0_4->unk-6 = (u16) *(arg5 + (temp_v1_2->unk-3 * 2));
                    temp_v0_4->unk-4 = (u16) *(arg5 + (temp_v1_2->unk-2 * 2));
                    temp_v0_4->unk-2 = (u16) *(arg5 + (temp_v1_2->unk-1 * 2));
                    phi_v1_2 = temp_v1_2;
                    phi_v0_2 = temp_v0_4;
                    phi_a1_2 = temp_a1_2;
                    phi_v0_5 = temp_v0_4;
                    phi_v1_4 = temp_v1_2;
                    if (temp_a1_2 != temp_a2) {
                        goto loop_7;
                    }
                } else {

                }
            }
            temp_a0 = phi_a0 + 1;
            temp_v0 = phi_v0_5 + ((0x140 - temp_a2) * 2);
            phi_a0 = temp_a0;
            phi_v0_6 = temp_v0;
            if (temp_a0 != temp_a3) {
                goto loop_3;
            }
            return temp_v0;
        }
    } else {
        phi_return = temp_v0_2;
        if (arg6 == 2) {
            phi_return = temp_v0_2;
            if (temp_a3 > 0) {
                phi_a0_2 = 0;
                phi_v1_5 = arg4;
                phi_v0_8 = temp_v0_2;
loop_13:
                phi_v1_3 = phi_v1_5;
                phi_v0_3 = phi_v0_8;
                phi_a1_3 = 0;
                phi_v0_9 = phi_v0_8;
                if (temp_a2 > 0) {
loop_14:
                    temp_t3_2 = *phi_v1_3;
                    temp_a1_3 = phi_a1_3 + 2;
                    temp_v1_3 = phi_v1_3 + 1;
                    temp_t7 = ((s32) temp_t3_2 >> 4) & 0xFFFF;
                    temp_t6 = temp_t3_2 & 0xF;
                    if (temp_t7 != 0) {
                        temp_v0_5 = phi_v0_3 + 2;
                        temp_v0_5->unk-2 = (u16) *(arg5 + (temp_t7 * 2));
                        phi_v0_4 = temp_v0_5;
                    } else {
                        phi_v0_4 = phi_v0_3 + 2;
                    }
                    if (temp_t6 != 0) {
                        temp_v0_6 = phi_v0_4 + 2;
                        temp_v0_6->unk-2 = (u16) *(arg5 + (temp_t6 * 2));
                        phi_v0_7 = temp_v0_6;
                    } else {
                        phi_v0_7 = phi_v0_4 + 2;
                    }
                    phi_v1_3 = temp_v1_3;
                    phi_v0_3 = phi_v0_7;
                    phi_a1_3 = temp_a1_3;
                    phi_v0_9 = phi_v0_7;
                    phi_v1_5 = temp_v1_3;
                    if (temp_a1_3 < temp_a2) {
                        goto loop_14;
                    }
                }
                temp_a0_2 = phi_a0_2 + 1;
                temp_v0_7 = phi_v0_9 + ((0x140 - temp_a2) * 2);
                phi_a0_2 = temp_a0_2;
                phi_return = temp_v0_7;
                phi_v0_8 = temp_v0_7;
                if (temp_a0_2 != temp_a3) {
                    goto loop_13;
                }
            }
        }
    }
    return phi_return;
}

void func_80032218(void *arg0, s32 arg1) {
    s32 temp_s1;
    void *phi_s0;
    s32 phi_s1;

    if (arg1 > 0) {
        phi_s0 = arg0;
        phi_s1 = 0;
loop_2:
        func_80032040(phi_s0->unk0, phi_s0->unk2, phi_s0->unk4, phi_s0->unk5, phi_s0->unk8, phi_s0->unkC, 2);
        temp_s1 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x10;
        phi_s1 = temp_s1;
        if (temp_s1 != arg1) {
            goto loop_2;
        }
    }
}

s32 func_8003228C(void) {
    s32 temp_v0;
    void *temp_t2;
    s32 phi_return;

    func_80034350();
    phi_return = func_80034020(*(void *)0x80092D28, 0x80092D2C, 1);
    if (*(void *)0x80092D1C != 0) {
        func_80034750((((*(void *)0x8006E4B4 & 1) * 4) + 0x80070000)->unk-1B48);
        temp_v0 = *(void *)0x8006E4B4 + 1;
        temp_t2 = ((temp_v0 & 1) * 4) + 0x80070000;
        *(void *)0x8006E4B4 = temp_v0;
        *(void *)0x80092D20 = (s32) temp_t2->unk-1B48;
        *(void *)0x80092D1C = 0;
        phi_return = temp_v0;
    }
    return phi_return;
}

void func_8003232C(s32 arg0) {
    ? sp2C;
    s32 sp24;
    s32 sp20;
    s16 temp_v0;
    s32 temp_a1;
    s32 temp_t4;
    s32 temp_v0_2;

    *(void *)0x80092CC0 = 0x41;
    if (((arg0 == *(void *)0x80092D0A) && (temp_v0 = *(void *)0x80092D08, (((s32) temp_v0 < 2) == 0))) && ((s32) temp_v0 < 5)) {
        func_80032020(3);
    } else {
        func_80032020(1);
    }
    if ((((arg0 * 4) + (*(void *)0x80092D0E * 4)) + 0x80090000)->unk2CC8 == 0) {
        temp_a1 = (s32) (((arg0 * 0xD) + 0x58) << 0x10) >> 0x10;
        sp20 = temp_a1;
        func_80031F1C(0x52, temp_a1);
        temp_v0_2 = (arg0 << 5) + 0x80092AC0;
        sp24 = temp_v0_2;
        func_80031FBC((temp_v0_2 + (*(void *)0x80092D0E << 5)) + 0xE, 0x10);
        if ((sp24 + (*(void *)0x80092D0E << 5))->unkA != 0) {
            func_80031DD4(0x3C);
            *(void *)0x80092D30 = (s32) *(void *)0x80092D30;
            func_80031DD4((sp24 + (*(void *)0x80092D0E << 5))->unkA);
        }
        func_80031F1C(0x100, sp22);
        func_80031CF0(((u32) (*(sp24 + (*(void *)0x80092D0E << 5)) + 0xFF) >> 8) & 0xFFFF, &sp2C);
        func_80031FBC(&sp2C, 3);
    }
    temp_t4 = (s32) (((arg0 * 0xD) + 0x58) << 0x10) >> 0x10;
    if ((*(void *)0x80092D0E + arg0) < 9) {
        sp20 = temp_t4;
        func_80031F1C(0x3C, temp_t4);
        func_80031DD4((*(void *)0x80092D0E + arg0) + 0x11);
    } else {
        sp20 = temp_t4;
        func_80031F1C(0x37, temp_t4);
        func_80031DD4(0x11);
        func_80031F1C(0x3D, sp22);
        func_80031DD4((*(void *)0x80092D0E + arg0) + 7);
    }
    func_80031F1C(0x43, sp22);
    func_80031DD4(0x3E);
    *(void *)0x80092CC0 = 0x5B;
}

void func_80032560(u16 arg0) {
    ? sp1C;

    func_80032020(1);
    func_80031CF0(arg0, &sp1C);
    func_80031F1C(0xC8, 0xAD);
    func_80031FBC(&sp1C, 3);
}

void func_800325A8(void) {
    func_80032040(*(void *)0x80092D10, *(void *)0x80092D12, 0x10, 0xE, 0x8006AC90, 0x8006AC70, 2);
}

void func_800325FC(s32 arg0) {
    func_8003265C();
    func_80032218(0x8006DB88, 0x5A);
    func_80032218(0x8006E128, 0x16);
    func_80031F1C(0x36, 0x53);
    func_80032020(1);
    func_80031F74(arg0);
}

void func_8003265C(void) {
    s32 temp_s0;
    s32 phi_s0;

    func_80032218(0x8006CC88, 0xF0);
    func_80032560(*(void *)0x80092D1A);
    if (*(void *)0x80092D0E != 0) {
        func_80032218(0x8006E288, 1);
    }
    if ((s32) *(void *)0x80092D0E < 0xA) {
        func_80032218(0x8006E298, 1);
    }
    phi_s0 = 0;
loop_5:
    func_8003232C(phi_s0);
    temp_s0 = phi_s0 + 1;
    phi_s0 = temp_s0;
    if (temp_s0 != 6) {
        goto loop_5;
    }
    *(void *)0x80092D1C = 1;
}

Failed to decompile function func_80032704:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_80033850(void) {
    s32 sp34;
    u32 sp30;
    u32 sp24;
    s32 sp20;
    s32 temp_ret;
    s32 temp_ret_2;
    u32 temp_t9;
    u32 temp_v1;
    u32 temp_v1_2;

    sp30 = 0U;
    *(void *)0x80092D40 = 1;
    __osSetSR(func_8003C9A0() | 0x20000000);
    __osSetFpcCsr(0x1000800);
    if (__osSpRawReadIo(0x1FC007FC, &sp34) != 0) {
loop_1:
        if (__osSpRawReadIo(0x1FC007FC, &sp34) != 0) {
            goto loop_1;
        }
    }
    if (__osSpRawWriteIo(0x1FC007FC, sp34 | 8) != 0) {
loop_3:
        if (__osSpRawWriteIo(0x1FC007FC, sp34 | 8) != 0) {
            goto loop_3;
        }
    }
    *(void *)0x80000000 = (s32) (void *)0x8003CA60->unk0;
    *(void *)0x80000004 = (s32) (void *)0x8003CA60->unk4;
    *(void *)0x80000008 = (s32) (void *)0x8003CA60->unk8;
    *(void *)0x8000000C = (s32) (void *)0x8003CA60->unkC;
    (void *)0x80000080->unk0 = (s32) (void *)0x8003CA60->unk0;
    (void *)0x80000080->unk4 = (s32) (void *)0x8003CA60->unk4;
    (void *)0x80000080->unk8 = (s32) (void *)0x8003CA60->unk8;
    (void *)0x80000080->unkC = (s32) (void *)0x8003CA60->unkC;
    (void *)0x80000100->unk0 = (s32) (void *)0x8003CA60->unk0;
    (void *)0x80000100->unk4 = (s32) (void *)0x8003CA60->unk4;
    (void *)0x80000100->unk8 = (s32) (void *)0x8003CA60->unk8;
    (void *)0x80000100->unkC = (s32) (void *)0x8003CA60->unkC;
    (void *)0x80000180->unk0 = (s32) (void *)0x8003CA60->unk0;
    (void *)0x80000180->unk4 = (s32) (void *)0x8003CA60->unk4;
    (void *)0x80000180->unk8 = (s32) (void *)0x8003CA60->unk8;
    (void *)0x80000180->unkC = (s32) (void *)0x8003CA60->unkC;
    func_80034E50(0x80000000, 0x190);
    func_800363E0(0x80000000, 0x190);
    func_8003D370();
    func_8003D3D0(4, &sp30);
    temp_t9 = sp30 & -0x10;
    sp30 = temp_t9;
    if (temp_t9 != 0) {
        *(void *)0x8006F400 = 0;
        *(void *)0x8006F404 = temp_t9;
    }
    temp_ret = func_80039C38(*(void *)0x8006F400, *(void *)0x8006F404, 0, 3);
    temp_v1 = (u32) (u64) temp_ret;
    sp20 = temp_ret;
    sp24 = temp_v1;
    temp_ret_2 = func_80039B38(sp20, sp24, 0, 4);
    temp_v1_2 = (u32) (u64) temp_ret_2;
    *(void *)0x8006F400 = temp_ret_2;
    *(void *)0x8006F404 = temp_v1_2;
    if (*(void *)0x8000030C == 0) {
        bzero(0x8000031C, 0x40);
    }
    if (*(void *)0x80000300 == 0) {
        *(void *)0x8006F408 = 0x2F5B2D2;
        return;
    }
    if (*(void *)0x80000300 == 2) {
        *(void *)0x8006F408 = 0x2E6025C;
        return;
    }
    *(void *)0x8006F408 = 0x2E6D354;
}
