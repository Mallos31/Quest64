u32 func_12460(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    u32 temp_v0;
    void *temp_v1;

    temp_v0 = *(void *)0x800862D0;
    if (temp_v0 < 0x40U) {
        *(void *)0x800862D0 = (u32) (temp_v0 + 1);
        temp_v1 = (temp_v0 * 0x1C) + 0x80085BD0;
        temp_v1->unk0 = arg0;
        temp_v1->unk4 = arg1;
        temp_v1->unk8 = arg2;
        temp_v1->unkC = arg3;
        temp_v1->unk10 = arg4;
        temp_v1->unk14 = arg5;
        temp_v1->unk18 = arg6;
    }
    return temp_v0;
}
