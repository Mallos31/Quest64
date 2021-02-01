void func_80047C80(void) {
    s32 temp_s0;

    temp_s0 = __osDisableInt();
    (*(void *)0x80070A00)->unk10 = (u16)2;
    func_8003D08C(0x800709F8);
    __osRestoreInt(temp_s0);
}
