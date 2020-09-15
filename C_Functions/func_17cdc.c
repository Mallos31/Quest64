void func_17cdc(s32 arg0, void *arg1) {
    void *temp_v0;

    temp_v0 = arg1->unk68;
    *temp_v0 = (u16) (*temp_v0 | 4);
    if (arg0 != 1) {
        if (arg0 != 2) {

        } else {
            arg1->unk68->unk8A = (u16)0x20;
        }
    } else {
        arg1->unk68->unk8A = (u16)0x18;
    }
    func_0001FCF8(arg1, 4, 3, -1);
}
