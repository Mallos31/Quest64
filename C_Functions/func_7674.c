u32 func_7674(s32 arg0, void *arg1) {
    s16 sp1E;
    u16 temp_v0;

    temp_v0 = arg1->unk68->unk86;
    sp1E = (s16) ((s32) (temp_v0 * 0x64) / (s32) (temp_v0 + ((s32) (((arg0 * 0x128) + 0x80080000)->unk-35DC->unk86 + 7) >> 3)));
    return func_00022FD0(0x64, arg0) < (u32) sp1E;
}
