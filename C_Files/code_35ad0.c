s32 func_80034ED0(void) {
    s32 sp34;
    s32 sp30;
    u32 sp2C;
    s32 sp28;
    s32 temp_s0;

    temp_s0 = func_8003D4D0();
    sp34 = func_8003ED90();
    sp30 = sp34 - *(void *)0x80095628;
    sp2C = *(void *)0x80095624;
    sp28 = *(void *)0x80095620;
    func_8003D4F0(temp_s0);
    return ((u32) (sp30 + sp2C) < sp2C) + sp28;
}
