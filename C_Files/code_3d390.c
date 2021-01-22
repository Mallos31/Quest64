s32 func_8003C790(void *arg0, void *arg1, void *arg2) {
    s32 sp44;
    s32 sp40;
    s32 sp20;
    s32 sp1C;
    s32 temp_t3;

    sp1C = 0;
    if ((arg0->unk0 & 1) == 0) {
        return 5;
    }
    if (__osCheckId(arg0) == 2) {
        return 2;
    }
    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp40 = __osPfsSelectBank(arg0);
        if (sp40 != 0) {
            return sp40;
        }
    }
    sp44 = 0;
    if (arg0->unk50 > 0) {
loop_8:
        sp40 = __osContRamRead(arg0->unk4, arg0->unk8, arg0->unk5C + sp44, &sp20);
        if (sp40 != 0) {
            return sp40;
        }
        if (sp24 != 0) {
            if (sp20 != 0) {
                sp1C = sp1C + 1;
            }
        }
        temp_t3 = sp44 + 1;
        sp44 = temp_t3;
        if (temp_t3 < arg0->unk50) {
            goto loop_8;
        }
    }
    *arg2 = sp1C;
    *arg1 = (s32) arg0->unk50;
    return 0;
}
