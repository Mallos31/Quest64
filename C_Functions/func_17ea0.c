void *func_17ea0(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x20);
    if (arg0 == 1) {
        arg1->unk68->unk86 = (s16) (arg1->unk64->unkC * 2);
        return func_0001FCF8(arg1, 0x20, 7, -1);
    }
    if (arg0 == 2) {
        arg1->unk68->unk86 = (s16) (arg1->unk64->unkC * 4);
        return func_0001FCF8(arg1, 0x20, 7, -1);
    }
    if (arg0 != 3) {
        return temp_v0;
    }
    arg1->unk68->unk86 = (s16) ((s32) arg1->unk64->unkC >> 1);
    return func_0001FCF8(arg1, 0x20, 0xC, -1);
}
