void *func_177ec(void *arg0, void *arg1) {
    void *temp_a0;
    void *temp_a3;
    void *temp_v0;

    temp_a3 = arg1;
    if ((temp_a3->unk5E & 1) != 0) {
        temp_a0 = temp_a3;
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            return func_000208B8(temp_a3, temp_a3);
        }
        arg1 = temp_a3;
        func_000202E4(temp_a0, temp_a3);
        arg1->unk50 = (u16)-1;
        arg1->unk60 = (u16) (arg1->unk60 & 0xFFFE);
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
        temp_v0 = *(void *)0x8007BAC8;
        temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
        return temp_v0;
    }
    return func_00006BEC((temp_a3->unk64->unk4 * 4) & 0xFFFF, 4, arg0->unk24, temp_a3);
}
