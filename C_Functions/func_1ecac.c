s32 func_1ecac(s32 arg0, void *arg1, void *arg2) {
    s16 temp_a0;
    s16 temp_v1;
    s32 temp_v0;
    u16 temp_t7;

    temp_t7 = arg1->unk54 + arg0;
    arg1->unk54 = temp_t7;
    temp_v1 = arg2->unk2;
    temp_v0 = temp_t7 & 0xFFFF;
    if (temp_v0 >= (s32) temp_v1) {
        temp_a0 = arg1->unk5A;
        if (temp_a0 != arg1->unk52) {
            arg1->unk52 = temp_a0;
            arg1->unk54 = (u16)0U;
            arg1->unk56 = (u16)0U;
            arg1->unk60 = (u16) (arg1->unk60 | 0x400);
            arg1->unk58 = (u16) arg1->unk5C;
        } else {
            arg1->unk54 = (u16) (temp_v0 - temp_v1);
            arg1->unk60 = (u16) (arg1->unk60 | 0x200);
        }
    } else {
        arg1->unk60 = (u16) (arg1->unk60 & 0xF9FF);
    }
    arg1->unk56 = (u16) (arg1->unk56 + 1);
    return temp_v0;
}
