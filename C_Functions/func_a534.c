void func_a534(void *arg0, void *arg1, ? arg2) {
    void *sp10;

    func_0000A3F4(arg0, (void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C);
    func_0000A7D8(arg0, 0x8007D0D0);
    sp10 = arg1;
    func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        arg1->unk0 = (u16)0;
        arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
        func_0001D358(arg0);
    }
}
