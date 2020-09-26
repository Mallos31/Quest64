void *func_4aa60(void *arg0, s32 arg1, s32 arg2) {
    s32 sp4;
    s32 sp0;
    s32 temp_lo;
    s32 temp_v1;

    temp_lo = arg1 / arg2;
    sp0 = temp_lo;
    temp_v1 = arg1 - (arg2 * temp_lo);
    sp4 = temp_v1;
    if (temp_lo < 0) {
        sp0 = temp_lo;
        sp4 = temp_v1;
        if (temp_v1 > 0) {
            sp4 = temp_v1 - arg2;
            sp0 = temp_lo + 1;
        }
    }
    arg0->unk0 = (s32) sp->unk0;
    arg0->unk4 = (s32) sp->unk4;
    return arg0;
}
