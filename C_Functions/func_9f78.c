void func_9f78(s32 arg0, void *arg1, void *arg2) {
    ?32 sp14;
    void *sp10;
    s32 temp_v0;

    func_0000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    if ((arg1->unk8 & 1) != 0) {
        *(void *)0x8007D088 = arg1;
        *(void *)0x8008C630 = (u16)0x3C;
        arg1->unk8 = (u16) (arg1->unk8 & 0xFFFC);
        if ((arg1->unk90 & 8) != 0) {
            func_0001D358(arg0);
            return;
        }
        temp_v0 = func_0000A008(arg1, arg0);
        if (temp_v0 != 0) {
            if ((arg1->unk8 & 0x10) != 0) {
                arg1->unk0 = (u16)1;
                arg1->unk4 = (u16)4;
                if ((*(void *)0x8008C592 & 0x100) == 0) {
                    arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
                    sp14 = 1;
                    sp10 = 0xA;
                    func_0001D8B0(arg0, 1, 0xA, 1);
                    return;
                }
                arg1->unk2 = (s16) arg2->unkE;
                sp14 = 1;
                sp10 = 1;
                func_0001D8B0(arg0, 1, 1, 1);
                return;
            }
            func_0000A284(arg1, arg0, temp_v0);
            return;
        }
        arg1->unk0 = (u16)1;
        arg1->unk4 = (u16)4;
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            arg1->unk2 = (s16) arg2->unkE;
            sp14 = 1;
            sp10 = 1;
            func_0001D8B0(arg0, 1, 1, 1);
            return;
        }
        arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
        sp14 = 1;
        sp10 = 0xA;
        func_0001D8B0(arg0, 1, 0xA, 1);
    }
}
