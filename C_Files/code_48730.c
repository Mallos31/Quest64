void func_80047B30(s32 arg0) {
    s32 temp_s0;

    temp_s0 = func_8003D4D0();
    *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 & ~(arg0 & -0x402));
    func_8003D4F0(temp_s0);
}
