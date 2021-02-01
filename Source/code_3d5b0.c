? __osSetFpcCsr(void) {
    return ERROR(cfc1);
}

? __osSpRawReadIo(s32 arg0, void *arg1) {
    if (__osSiDeviceBusy() != 0) {
        return -1;
    }
    *arg1 = (s32) *(arg0 | 0xA0000000);
    return 0;
}

? __osSpRawWriteIo(s32 arg0, s32 arg1) {
    if (__osSiDeviceBusy() != 0) {
        return -1;
    }
    *(arg0 | 0xA0000000) = arg1;
    return 0;
}
