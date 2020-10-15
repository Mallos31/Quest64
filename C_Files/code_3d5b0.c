? func_8003C9B0(void) {
    return ERROR(cfc1);
}

? func_8003C9C0(s32 arg0, void *arg1) {
    if (func_80047180() != 0) {
        return -1;
    }
    *arg1 = (s32) *(arg0 | 0xA0000000);
    return 0;
}

? func_8003CA10(s32 arg0, s32 arg1) {
    if (func_80047180() != 0) {
        return -1;
    }
    *(arg0 | 0xA0000000) = arg1;
    return 0;
}
