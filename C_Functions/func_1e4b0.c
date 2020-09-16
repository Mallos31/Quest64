s32 func_1e4b0(void *arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, u16 arg5) {
    u16 temp_t9;

    if (arg1 != -1) {
        if (arg1 != arg0->unk52) {
            arg0->unk52 = arg1;
            temp_t9 = arg0->unk60 | 0x400;
            arg0->unk60 = temp_t9;
            arg0->unk60 = (u16) (temp_t9 & 0xFDFF);
        }
        arg0->unk58 = arg2;
        if ((arg5 & 1) != 0) {
            arg0->unk56 = (u16)0;
            arg0->unk54 = (u16)0;
        }
    }
    if (arg3 != -1) {
        if (arg3 != arg0->unk5A) {
            arg0->unk5A = arg3;
        }
        arg0->unk5C = (s16) arg4;
    }
    return -1;
}
