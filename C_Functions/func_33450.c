void func_34450(void) {
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
    __osSetSR(__osGetSR() | 0x20000000);
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
    func_00034E50(0x80000000, 0x190);
    func_000363E0(0x80000000, 0x190);
    osMapTLBRdb();
    osPiRawReadIo(4, &sp30);
    temp_t9 = sp30 & -0x10;
    sp30 = temp_t9;
    if (temp_t9 != 0) {
        *(void *)0x8006F400 = 0;
        *(void *)0x8006F404 = temp_t9;
    }
    temp_ret = func_00039C38(*(void *)0x8006F400, *(void *)0x8006F404, 0, 3);
    temp_v1 = (u32) (u64) temp_ret;
    sp20 = temp_ret;
    sp24 = temp_v1;
    temp_ret_2 = func_00039B38(sp20, sp24, 0, 4);
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

