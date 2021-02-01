? func_80034020(void *arg0, void *arg1, s32 arg2) {
    s32 temp_s0;

    temp_s0 = __osDisableInt();
    if (arg0->unk8 == 0) {
loop_1:
        if (arg2 == 0) {
            __osRestoreInt(temp_s0);
            return -1;
        }
        (*(void *)0x80070A00)->unk10 = (u16)8;
        func_8003D08C(arg0);
        if (arg0->unk8 == 0) {
            goto loop_1;
        }
    }
    if (arg1 != 0) {
        *arg1 = (s32) *(arg0->unk14 + (arg0->unkC * 4));
    }
    arg0->unkC = (s32) ((s32) (arg0->unkC + 1) % (s32) arg0->unk10);
    arg0->unk8 = (s32) (arg0->unk8 - 1);
    if (*arg0->unk4 != 0) {
        func_80033C30(__osPopThread(arg0 + 4));
    }
    __osRestoreInt(temp_s0);
    return 0;
}
