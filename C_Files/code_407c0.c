? func_8003FBC0(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_s0;
    s32 temp_t7;

    temp_s0 = __osDisableInt();
    if (arg0->unk8 >= arg0->unk10) {
loop_1:
        if (arg2 != 1) {
            __osRestoreInt(temp_s0);
            return -1;
        }
        (*(void *)0x80070A00)->unk10 = (u16)8;
        func_8003D08C(arg0 + 4);
        if (arg0->unk8 >= arg0->unk10) {
            goto loop_1;
        }
    }
    temp_t7 = arg0->unk10;
    arg0->unkC = (s32) ((s32) ((arg0->unkC + temp_t7) - 1) % temp_t7);
    *(arg0->unk14 + (arg0->unkC * 4)) = arg1;
    arg0->unk8 = (s32) (arg0->unk8 + 1);
    if (*arg0->unk0 != 0) {
        func_80033C30(__osPopThread(arg0));
    }
    __osRestoreInt(temp_s0);
    return 0;
}

s32 func_8003FD10(void) {
    if (*(void *)0x8006F420 == 0) {
        return 0;
    }
    return *(void *)0x8006F428;
}
