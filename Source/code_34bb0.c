void func_80033FB0(s32 arg0, s32 arg1, s32 arg2) {
    void *sp20;
    s32 temp_v0;
    void *temp_t9;

    temp_v0 = __osDisableInt();
    temp_t9 = (arg0 * 8) + 0x80093F20;
    sp20 = temp_t9;
    *temp_t9 = arg1;
    sp20->unk4 = arg2;
    __osRestoreInt(temp_v0);
}
