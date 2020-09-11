void func_a418(void *arg0, void *arg1, ? arg2) {
    void *sp10;

    func_0000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        if (arg1->unkA == 0) {
            func_000202E4(arg0);
            func_0000B170(arg0);
            arg0->unk50 = (u16)-1;
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
            *(void *)0x8007BA68 = (s32) (*(void *)0x8007BA68 + arg0->unk64->unk10);
            *(void *)0x8007BA6C = (s32) (*(void *)0x8007BA6C + arg0->unk64->unk14);
            func_000268D4(0, 0xA, 0xFF, (void *)0x8007BA6C);
            return;
        }
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFC);
    }
}
