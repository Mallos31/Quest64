void *func_9548(s32 arg0) {
    void *sp20;
    void *temp_ret;
    void *temp_v0;
    void *temp_v1;

    temp_v1 = (arg0 * 0x84) + 0x8007BD30;
    temp_v0 = temp_v1->unk80;
    if (temp_v0->unk4 == 2) {
        temp_v1->unk0 = (u16)0;
        sp20 = temp_v1;
        temp_ret = func_00022FD0(0x1E);
        temp_v1->unk2 = (s16) (temp_ret + 0x1E);
        return temp_ret;
    }
    if ((temp_v0->unk5 & 2) != 0) {
        temp_v1->unk0 = (u16)0;
        temp_v1->unk2 = (s16) temp_v0->unk10->unk2;
        return temp_v0;
    }
    temp_v1->unk0 = (u16)3;
    temp_v1->unk2 = (u16)0xF;
    return func_0001D8B0(temp_v1 + 0x14, 1, 1, 1, 1, 1);
}
