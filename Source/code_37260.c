s32 func_80036660(s32 arg0, ? arg1, void *arg2, s32 arg3, s32 arg4) {
    s32 temp_a0;
    s32 temp_t7;
    s32 phi_v1;

    temp_a0 = arg2->unk4;
    temp_t7 = ((arg3 * arg4) + 0xF) & -0x10;
    phi_v1 = 0;
    if ((u32) (arg2->unk0 + arg2->unk8) >= (u32) (temp_a0 + temp_t7)) {
        arg2->unk4 = (s32) (temp_a0 + temp_t7);
        phi_v1 = temp_a0;
    }
    return phi_v1;
}
