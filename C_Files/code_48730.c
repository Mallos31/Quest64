void __osResetGlobalIntMask(s32 arg0) {
    s32 temp_s0;

    temp_s0 = __osDisableInt();
    *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 & ~(arg0 & -0x402));
    __osRestoreInt(temp_s0);
}
