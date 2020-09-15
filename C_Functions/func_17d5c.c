void func_17d5c(s32 arg0, void *arg1) {
    void *temp_v0;

    if ((*(void *)0x8008C592 & 0x100) == 0) {
        temp_v0 = arg1->unk68;
        *temp_v0 = (u16) (*temp_v0 | 8);
        arg1->unk60 = (u16) (arg1->unk60 | 1);
        func_0001FCF8(arg1, 8, (arg0 - 1) & 0xFFFF, -1);
        return;
    }
    func_000208B8(arg1);
}
