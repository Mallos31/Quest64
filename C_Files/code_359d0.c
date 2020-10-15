s32 func_80034DD0(u32 arg0) {
    if (arg0 >= 0x80000000U) {
        if (arg0 < 0xA0000000U) {
            return arg0 & 0x1FFFFFFF;
        }
    }
    if (arg0 >= 0xA0000000U) {
        if (arg0 < 0xC0000000U) {
            return arg0 & 0x1FFFFFFF;
        }
    }
    return func_8003EDA0(arg0);
}
