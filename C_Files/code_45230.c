void func_80044630(void *arg0, void *arg1, u8 arg2) {
    void *temp_a0;
    void *temp_v0;

    if (arg1->unk8 != 0) {
        temp_v0 = __allocParam();
        if (temp_v0 != 0) {
            temp_v0->unk8 = (u16)0xC;
            temp_v0->unk4 = (s32) (arg0->unk1C + arg1->unk8->unkD8);
            temp_v0->unk0 = 0;
            temp_v0->unkC = (?32) arg2;
            temp_a0 = arg1->unk8->unkC;
            temp_a0->unk8(temp_a0, 3, temp_v0, arg1);
        }
    }
}
