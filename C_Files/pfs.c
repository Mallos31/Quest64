s32 osContStartReadData(OSMesgQueue *mq) {
    s32 tempRet;
    s32 ret;

    tempRet = 0;
    __osSiGetAccess();
    if (*(void *)__osContLastCmd != 1) {
        __osPackReadData();
        tempRet = __osSiRawStartDma(1, __osContPifRam);
        osRecvMesg(mq, 0, 1);
    }
    ret = __osSiRawStartDma(0, __osContPifRam);
    tempRet = ret;
    *(void *)__osContLastCmd = (u8)1U;
    __osSiRelAccess();
    return ret;
}

void func_8003AC9C(void *arg0) {
    void *spC;
    ? sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t9;
    void *phi_a0;

    spC = (void *)__osContPifRam;
    sp0 = 0;
    phi_a0 = arg0;
    if ((s32) *(void *)__osMaxControllers > 0) {
loop_1:
        sp4.unk0 = (?32) (unaligned s32) spC->unk0;
        sp4.unk4 = (?32) (unaligned s32) spC->unk4;
        phi_a0->unk4 = (u8) ((s32) (sp6 & 0xC0) >> 4);
        if (phi_a0->unk4 == 0) {
            phi_a0->unk0 = sp8;
            phi_a0->unk2 = spA;
            phi_a0->unk3 = spB;
        }
        temp_t9 = sp0 + 1;
        temp_at = temp_t9 < (s32) *(void *)__osMaxControllers;
        spC = spC + 8;
        sp0 = temp_t9;
        phi_a0 = phi_a0 + 6;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
}

void __osPackReadData(void) {
    void *spC;
    s8 spB;
    s8 spA;
    s16 sp8;
    s8 sp7;
    s8 sp6;
    s8 sp5;
    s8 sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t7;

    spC = (void *)__osContPifRam;
    sp0 = 0;
loop_1:
    ((sp0 * 4) + 0x80090000)->unk5450 = 0;
    temp_t0 = sp0 + 1;
    sp0 = temp_t0;
    if (temp_t0 < 0xF) {
        goto loop_1;
    }
    *(void *)0x8009548C = 1;
    sp4 = (u8)0xFF;
    sp5 = (u8)1;
    sp6 = (u8)4;
    sp7 = (u8)1;
    sp8 = (u16)0xFFFF;
    spA = (u8)-1;
    spB = (u8)-1;
    sp0 = 0;
    if ((s32) *(void *)__osMaxControllers > 0) {
loop_3:
        spC->unk0 = (unaligned s32) sp4.unk0;
        spC->unk4 = (unaligned s32) sp4.unk4;
        temp_t7 = sp0 + 1;
        temp_at = temp_t7 < (s32) *(void *)__osMaxControllers;
        sp0 = temp_t7;
        spC = spC + 8;
        if (temp_at != 0) {
            goto loop_3;
        }
    }
    spC->unk0 = (u8)0xFE;
}

s32 osPfsFileState(OSPfs *pfs, s32 file_no, void *state) {
    s32 sp14C;
    s32 sp148;
    ? sp48;
    s32 sp28;
    u16 sp24;
    s32 sp20;
    u8 sp1F;
    u8 sp1E;
    s32 temp_t5_2;
    s32 temp_t9;
    u8 temp_t1;
    u8 temp_t5;

    if (file_no >= pfs->unk50) { 	//unk50 = dir_size
block_2:
        return 5;
    }
    if (file_no < 0) {
        goto block_2;
    }
    if ((pfs->unk0 & 1) == 0) {  //unk0 = status
        return 5;
    }
    if (__osCheckId(pfs) == 2) {
        return 2;
    }
    if (pfs->unk65 != 0) {	//unk65 = activeBank
        pfs->unk65 = (u8)0U;
        sp14C = __osPfsSelectBank(pfs);
        if (sp14C != 0) {
            return sp14C;
        }
    }
    sp14C = __osContRamRead(pfs->unk4, pfs->unk8, pfs->unk5C + file_no, &sp28);
    if (sp14C != 0) {
        return sp14C;
    }
    if (sp2C == 0) {
block_14:
        return 5;
    }
    if (sp28 == 0) {
        goto block_14;
    }
    if ((s32) sp2E < pfs->unk60) {
        return 3;
    }
    temp_t5 = (u8) sp2E;
    sp148 = 0;
    sp1E = sp2F;
    sp1F = temp_t5;
    if ((s32) temp_t5 < (s32) pfs->unk64) {
loop_18:
        sp14C = __osPfsRWInode(pfs, &sp48, 0, sp1F);
        if (sp14C != 0) {
            return sp14C;
        }
        sp24 = (u16) *((sp1E * 2) + &sp48);
        sp148 = sp148 + 1;
        if ((s32) sp24 >= pfs->unk60) {
loop_21:
            sp148 = sp148 + 1;
            sp24 = (u16) *((sp25 * 2) + &sp48);
            temp_t1 = (u8) sp24;
            if (temp_t1 != sp1F) {
                sp1F = temp_t1;
                sp1E = sp25;
            } else {
                if ((s32) sp24 >= pfs->unk60) {
                    goto loop_21;
                }
            }
        }
        if (sp24 != 1) {
            if ((s32) sp1F < (s32) pfs->unk64) {
                goto loop_18;
            }
        }
    }
    if (sp24 != 1) {
        return 3;
    }
    state->unk0 = (s32) (sp148 << 8);
    state->unk8 = sp2C;
    state->unk4 = sp28;
    sp20 = 0;
loop_29:
    (state + sp20)->unkE = (u8) (sp + sp20)->unk38;
    temp_t5_2 = sp20 + 1;
    sp20 = temp_t5_2;
    if (temp_t5_2 < 0x10) {
        goto loop_29;
    }
    sp20 = 0;
loop_31:
    (state + sp20)->unkA = (u8) (sp + sp20)->unk34;
    temp_t9 = sp20 + 1;
    sp20 = temp_t9;
    if (temp_t9 < 4) {
        goto loop_31;
    }
    return 0;
}

s32 func_8003B120(void *arg0, void *arg1) {
    s32 sp12C;
    s32 sp128;
    ? sp28;
    s32 sp24;
    u8 sp23;
    s32 sp1C;
    s32 temp_t3;
    u8 temp_t5;

    sp128 = 0;
    sp24 = 0;
    if ((arg0->unk0 & 1) == 0) {
        return 5;
    }
    if (__osCheckId(arg0) == 2) {
        return 2;
    }
    sp23 = (u8)0U;
    if ((s32) arg0->unk64 > 0) {
loop_5:
        sp24 = __osPfsRWInode(arg0, &sp28, 0, sp23);
        if (sp24 != 0) {
            return sp24;
        }
        if ((s32) sp23 > 0) {
            sp1C = 1;
        } else {
            sp1C = arg0->unk60;
        }
        sp12C = sp1C;
        if (sp1C < 0x80) {
loop_11:
            if ((sp + (sp12C * 2))->unk28 == 3) {
                sp128 = sp128 + 1;
            }
            temp_t3 = sp12C + 1;
            sp12C = temp_t3;
            if (temp_t3 < 0x80) {
                goto loop_11;
            }
        }
        temp_t5 = sp23 + 1;
        sp23 = temp_t5;
        if ((temp_t5 & 0xFF) < (s32) arg0->unk64) {
            goto loop_5;
        }
    }
    *arg1 = (s32) (sp128 * 0x100);
    return 0;
}
