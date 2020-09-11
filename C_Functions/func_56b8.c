void func_56b8(s32 arg0, void *arg1, ? arg2) {
    u16 temp_t4;
    u16 temp_t7;

    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    if ((temp_t7 & 0xFFFF) == 0) {
        func_000213D8(arg1->unk118, arg0);
        if (((arg1->unk118 * 0xC) + 0x803B0000)->unk-6E0E != 2) {
            arg1->unk120 = (u16)0xFU;
            func_000073CC(arg1);
            return;
        }
        func_000073CC(arg1);
        arg1->unk2 = (u16)0;
        func_0001D358(arg0);
    } else {
        temp_t4 = arg1->unk120 - 1;
        arg1->unk120 = temp_t4;
        if ((temp_t4 & 0xFFFF) == 0) {
            if (func_00015B50() != 0) {
                arg1->unk120 = (u16)8U;
            } else {
                arg1->unk0 = (u16)3;
                arg1->unk4 = (u16)0xFU;
                func_0001D8B0(arg0, 0x18, 1, *(void *)0x8007BC2C, 1, 1);
                arg1->unk2 = (u16)0;
                func_0001D358(arg0);
            }
        }
    }
}
