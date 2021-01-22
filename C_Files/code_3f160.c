? __osSpRawStartDma(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (__osSpDeviceBusy() != 0) {
        return -1;
    }
    *(void *)0xA4040000 = arg1;
    *(void *)0xA4040004 = func_80034DD0(arg2);
    if (arg0 == 0) {
        *(void *)0xA404000C = (s32) (arg3 - 1);
    } else {
        *(void *)0xA4040008 = (s32) (arg3 - 1);
    }
    return 0;
}
