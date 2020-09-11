u32 func_b7f4(void *arg0) {
    s16 sp1E;
    u16 temp_v0;

    temp_v0 = arg0->unk68->unk86;
    sp1E = (s16) ((s32) (temp_v0 * 0x64) / (s32) (temp_v0 + ((s32) ((*(void *)0x8007BB34)->unk86 + 7) >> 3)));
    return func_00022FD0(0x64, arg0) < (u32) sp1E;
}
