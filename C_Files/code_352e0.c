void func_800346E0(u8 arg0) {
    void *temp_t0;
    void *temp_t7;

    if (arg0 != 0) {
        temp_t7 = *(void *)0x80070A84;
        *temp_t7 = (u16) (*temp_t7 | 0x20);
    } else {
        temp_t0 = *(void *)0x80070A84;
        *temp_t0 = (u16) (*temp_t0 & -0x21);
    }
    __osRestoreInt(__osDisableInt());
}

void func_80034750(s32 arg0) {
    s32 sp1C;
    void *temp_t8;

    sp1C = __osDisableInt();
    (*(void *)0x80070A84)->unk4 = arg0;
    temp_t8 = *(void *)0x80070A84;
    temp_t8->unk0 = (u16) (temp_t8->unk0 | 0x10);
    __osRestoreInt(sp1C);
}

s32 func_800347A0(void) {
    s32 sp20;
    s32 temp_a0;

    temp_a0 = __osDisableInt();
    sp20 = (*(void *)0x80070A80)->unk4;
    __osRestoreInt(temp_a0);
    return sp20;
}
